
# Add-ons 101

Botanical Pots has come a long way since its release. It's become a serious alternative to [Botany Pots](https://modrinth.com/mod/botany-pots) despite being a **datapack**. One of the most serious features that was previously missing from Botanical Pots for the longest time was _integration with third-party modifications_.

Supporting third-party mods is virtually impossible in a **single datapack**. To side-step this constraint, a lightweight **add-on facade** for Botanical Pots was introduced in 3.0.0.

This article describes how to work with this facade to add support for a third-party modification.

> [!NOTE]
> In order for Botanical Pots to support a plant, one should be able to insert that plant in a **flower pot**. That too has to be provided by the modification.

## Concept

Most of the logic in a datapack is written in terms of **functions**. Similary to [functions in CS](https://en.wikipedia.org/wiki/Function_(computer_programming)), a function is a reusable unit that contains a series of **commands** that are run consequtively. Botanical Pots is no exception; it too is written in functions.

In order to let other datapacks **inject** their behavior to Botanical Pots, the respective core functions use a notion of **function tags**. In datapack terminology, a **tag** is a list of entries of some registry. In our case, it is a list of functions that should additionally be called when a core function runs.

An example of such core function is `pots:pot/spawn`. It is responsible for spawning the appropriate loot for the potted plant. If the potted plant wasn't recognized by the `pots:pot/spawn` function, it **delegates** to the functions in the `#pots:on_spawn` tag. By adding a function to the `#pots:on_spawn` tag, we are thus able to spawn loot for an **additonal plant**.

## Injection Points

In order for Botanical Pots to support a plant, it has to be recognized by a few select locations throughout the project. First and foremost, the plant has to be added to the `pots:potted_plants` **block tag**. This lets Botanical Pots know when a flower pot has been planted with a supported plant, and the growth behavior should thus be executed:

```json5
// pots/tags/block/botanical_pots.json
{
    "replace": false,
    "values": [
        "example:plant"
    ]
}
```

Once our plant grows, Botanical Pots has to decide on the loot it should produce. Based on whether or not the pot is placed on a container, an attempt is made to either **insert** or drop (**spawn**) the loot. When either is made, an appropriate function tag is called.

When spawning the loot, we have to **dispatch** it based on the block at the current position. The rest is handled for us.

```json5
// pots/tags/function/on_spawn.json
{
    "replace": false,
    "values": [
        "example:on_spawn"
    ]
}
```

```mcfunction
# example/function/on_spawn.mcfunction
execute if block ~ ~ ~ example:potted_plant run return run loot spawn ~ ~ ~ loot example:pot/plant
```

> [!NOTE]
> In the above snippet, `example:pot/plant` is a [loot table](https://minecraft.wiki/w/Loot_table) defined by our add-on. This article won't go in-depth on how to define a loot table.

Similarly, when inserting the loot, we too have to dispatch it based on the current block. However, unlike `#pots:on_spawn`, we insert to a block at a different position. In order to ease the work with the `#pots:on_insert` functions, we provide a `position` [macro argument](https://minecraft.wiki/w/Function_(Java_Edition)#Macros) to substitute in place of the insert position.

```json5
// pots/tags/function/on_insert.json
{
    "replace": false,
    "values": [
        "example:on_insert"
    ]
}
```

```mcfunction
# example/function/on_insert.mcfunction
$execute if block ~ ~ ~ example:potted_plant run return run loot insert $(position) loot example:pot/plant
```

After doing these modification, our plant will **properly grow** when planted in a botanical pot. However, it will not be taken from a hopper yet. To support a hopper, we have to provide another function. Similarly to `#pots:insert`, `#pots:replant` provides a few macro arguments for more convenient work: the `$(position)` and the `$(slot)` to check.

The idea behind the `#pots:replant` functions is to `setblock` the appropriate potted plant based on the item in the provided `$(slot)`. However, unlike previous functions, we have to use `return` to signal whether a recognized item was found in the slot:

```json5
// pots/tags/function/on_replant.json
{
    "replace": false,
    "values": [
        "example:on_replant"
    ]
}
```

```mcfunction
# example/function/on_replant.mcfunction
$execute if items block $(position) $(slot) example:plant run return run setblock ~ ~ ~ example:potted_plant
return 0
```

## Additional Behavior

The above injection points cover the basic Botanical Pots behavior. They let a plant grow, produce loot, and be taken from a hopper. Botanical Pots, however, provides other mechanics related to specific plants that we are yet to introduce.

### Particles

When growing, a plant displays **particles**. In Botanical Pots, they are usually colored similarly to the plant itself. Once our plant grows, we have the pleasure to dispatch a particle effect through the `#pots:on_particle` tag.

```json5
// pots/tags/function/on_particle.json
{
    "replace": false,
    "values": [
        "example:on_particle"
    ]
}
```

```mcfunction
# example/function/on_particle.mcfunction
execute if block ~ ~ ~ example:potted_plant run function pots:particle/dispatch { type: "example:potted_plant" }
```

> [!TIP]
> Botanical Pots uses the `pots:particle` storage as a registry for particles, and provides the `pots:particle/dispatch` function as a convenient way to display a particle from the registry.
>
> By adding an entry to the registry in a `#minecraft:load` callback, we are able to utilize the same machinery:
> ```mcfunction
> # example/function/load.mcfunction
> data modify storage pots:particle example:plant set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:moss_block" } }
> ```

### Matching Biome

Every plant in Botanical Pots has an associated biome. When growing in that biome, it may produce the **Overgrown** upgrade. Whether the biome suits the plant is determined in through the `#pots:on_matches_biome` tag. In our callback, we use `return` to yield whether or not it matches.

```json5
// pots/tags/function/on_matches_biome.json
{
    "replace": false,
    "values": [
        "example:on_matches_biome"
    ]
}
```

```mcfunction
# example/function/on_matches_biome.mcfunction
execute if block ~ ~ ~ example:potted_plant run return run execute if biome ~ ~ ~ #example:suitable_for_plant
return 0
```

### Modifier

Each plant is categorized as one of five classes: Ingens, Defixus, Vulgaris, Arrogans, and Mollis. The modifier of the plant, among other, modifies the speed at which it grows. A modifier can be assigned to a plant through the `#pots:modifier/potted_*_plants` tags:

```json5
// pots/tags/block/modifier/potted_arrogans_plants.json
{
    "replace": false,
    "values": [
        "example:plant"
    ]
}
```

> [!NOTE]
> Assigning a modifier of `Arrogans` or `Mollis` to a plant makes it automatically require the **Rich Soil** upgrade to grow.

### Investigation

Since we've added a lot of specific behavior to our plant, we may wish to document it through the **Magnifying Glass**. The entry for a plant is determined through
the `#pots:on_investigate` tag. Similarly to `#pots:on_matching_biome`, we use `return` to yield whether or not the plant was recognized. Botanical Pots recognizes both potted and floor versions of plants:

```json5
// pots/tags/function/on_investigate.json
{
    "replace": false,
    "values": [
        "example:on_investigate"
    ]
}
```

```mcfunction
# example/function/on_investigate.mcfunction
execute if block ~ ~ ~ example:plant run return run function pots:magnifying_glass/operation/dispatch_investigate { type: "example:plant", name: { translate: "block.example.plant", color: "gray", italic: false }, components: [[ \
    { text: "\u0001", color: "white", font: "example:biomes", italic: false }, \
    { text: " ", color: "white", font: "minecraft:default", italic: false }, \
    { translate: "biome.example.biome", color: "white", font: "minecraft:default", italic: false } \
], [ \
    { text: "\u0003", color: "white", font: "pots:modifiers", italic: false }, \
    { text: " ", color: "white", font: "minecraft:default", italic: false }, \
    { text: "Vulgaris", color: "white", font: "minecraft:default", italic: false } \
], [ \
    { text: "∅", color: "dark_gray", font: "minecraft:default", italic: false }, \
    { text: " ", color: "white", font: "minecraft:default", italic: false }, \
    { translate: "item.pots.magnifying_glass.none", color: "gray", font: "minecraft:default", italic: false } \
]]}
execute if block ~ ~ ~ example:potted_plant run return run ...
return 0
```