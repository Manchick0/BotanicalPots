
# Add-ons 101

Botanical Pots has come a long way since its release. It's become a serious alternative to [Botany Pots](https://modrinth.com/mod/botany-pots) despite being a **datapack**. One of the most serious features that was previously missing from Botanical Pots for the longest time was _integration with third-party modifications_.

Supporting third-party mods is virtually impossible in a **single datapack**. To side-step this constraint, a lightweight **add-on facade** for Botanical Pots was introduced in 3.0.0.

This article describes how to work with this facade to add support for a third-party modification.

## Concept

Most of the logic in a datapack is written in terms of **functions**. Similary to [functions in CS](https://en.wikipedia.org/wiki/Function_(computer_programming)), a function is a reusable unit that contains a serious of **commands** that are run consequtively. Botanical Pots is no exception; it too is written in functions.

In order to let other datapacks **inject** their behavior to Botanical Pots, the respective core functions use a notion of **function tags**. In datapack terminology, a **tag** is a list of entries of some registry. In our case, it is a list of functions that should additionally be called when a core function runs.

An example of such core function is `pots:pot/spawn`. It is responsible for spawning the appropriate loot for the potted plant. If the potted plant wasn't recognized by the `pots:pot/spawn` function, it **delegates** to the functions in the `#pots:on_spawn` tag. By adding a function to the `#pots:on_spawn` tag, we are thus able to spawn loot for an **additonal plant**.

## Injection Points

In order for Botanical Pots to support a plant, it has to be recognized by a few select locations throughout the project. First and foremost, the plant has to be added to the `pots:botanical_pots` **block tag**. This lets Botanical Pots know when a flower pot has been planted with a supported plant, and the growth behavior should thus be executed:

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