
# Add-ons 101

Botanical Pots has come a long way since its release. It's become a serious alternative to [Botany Pots](https://modrinth.com/mod/botany-pots) despite being a **datapack**. One of the most serious features that was previously missing from Botanical Pots for the longest time was _integration with third-party modifications_.

Supporting third-party mods is virtually impossible in a **single datapack**. To side-step this constraint, a lightweight **add-on facade** for Botanical Pots was introduced in 3.0.0.

This article describes how to work with this facade to add support for a third-party modification.

## Concept

Most of the logic in a datapack is written in terms of **functions**. Similary to [functions in CS](https://en.wikipedia.org/wiki/Function_(computer_programming)), a function is a reusable unit that contains a serious of **commands** that are run consequtively. Botanical Pots is no exception; it too is written in functions.

In order to let other datapacks **inject** their behavior to Botanical Pots, the respective core functions use a notion of **function tags**. In datapack terminology, a **tag** is a list of entries of some registry. In our case, it is a list of functions that should additionally be called when a core function runs.

An example of such core function is `pots:pot/spawn`. It is responsible for spawning the appropriate loot for the potted plant. If the potted plant wasn't recognized by the `pots:pot/spawn` function, it **delegates** to the functions in the `#pots:on_spawn` tag. By adding a function to the `#pots:on_spawn` tag, we are thus able to spawn loot for an **additonal plant**.

> [!TIP]
> In order append an entry to a tag, one should create a file at the respective [resource location](https://minecraft.wiki/w/Identifier) in a datapack with `"replace"` set to `false`:
> ```json
> {
>    "replace": false,
>    "values": [...]
> }
> ```
