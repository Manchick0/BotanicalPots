#
# Particle
#
# Dispatches the appropriate particle for the potted plant at the current position.
#
# The '#pots:on_particle' function tag may be used to add additional
# particles for potentially modded plants.
#
execute if block ~ ~ ~ minecraft:potted_oak_sapling run return run function pots:particle/dispatch { type: "oak" }
execute if block ~ ~ ~ minecraft:potted_spruce_sapling run return run function pots:particle/dispatch { type: "spruce" }
execute if block ~ ~ ~ minecraft:potted_birch_sapling run return run function pots:particle/dispatch { type: "birch" }
execute if block ~ ~ ~ minecraft:potted_jungle_sapling run return run function pots:particle/dispatch { type: "jungle" }
execute if block ~ ~ ~ minecraft:potted_acacia_sapling run return run function pots:particle/dispatch { type: "acacia" }
execute if block ~ ~ ~ minecraft:potted_dark_oak_sapling run return run function pots:particle/dispatch { type: "dark_oak" }
execute if block ~ ~ ~ minecraft:potted_cherry_sapling run return run function pots:particle/dispatch { type: "cherry" }
execute if block ~ ~ ~ minecraft:potted_pale_oak_sapling run return run function pots:particle/dispatch { type: "pale_oak" }
execute if block ~ ~ ~ minecraft:potted_mangrove_propagule run return run function pots:particle/dispatch { type: "mangrove" }
execute if block ~ ~ ~ minecraft:potted_azalea_bush run return run function pots:particle/dispatch { type: "azalea" }
execute if block ~ ~ ~ minecraft:potted_flowering_azalea_bush run return run function pots:particle/dispatch { type: "azalea" }
execute if block ~ ~ ~ minecraft:potted_warped_fungus run return run function pots:particle/dispatch { type: "warped" }
execute if block ~ ~ ~ minecraft:potted_crimson_fungus run return run function pots:particle/dispatch { type: "crimson" }
execute if block ~ ~ ~ minecraft:potted_fern run return run function pots:particle/dispatch { type: "fern" }
execute if block ~ ~ ~ minecraft:potted_bamboo run return run function pots:particle/dispatch { type: "bamboo" }
execute if block ~ ~ ~ minecraft:potted_cactus run return run function pots:particle/dispatch { type: "cactus" }
execute if block ~ ~ ~ minecraft:potted_red_mushroom run return run function pots:particle/dispatch { type: "red_mushroom" }
execute if block ~ ~ ~ minecraft:potted_brown_mushroom run return run function pots:particle/dispatch { type: "brown_mushroom" }
execute if block ~ ~ ~ minecraft:potted_dandelion run return run function pots:particle/dispatch { type: "dandelion" }
execute if block ~ ~ ~ minecraft:potted_poppy run return run function pots:particle/dispatch { type: "poppy" }
execute if block ~ ~ ~ minecraft:potted_blue_orchid run return run function pots:particle/dispatch { type: "blue_orchid" }
execute if block ~ ~ ~ minecraft:potted_allium run return run function pots:particle/dispatch { type: "allium" }
execute if block ~ ~ ~ minecraft:potted_azure_bluet run return run function pots:particle/dispatch { type: "azure_bluet" }
execute if block ~ ~ ~ minecraft:potted_red_tulip run return run function pots:particle/dispatch { type: "red_tulip" }
execute if block ~ ~ ~ minecraft:potted_orange_tulip run return run function pots:particle/dispatch { type: "orange_tulip" }
execute if block ~ ~ ~ minecraft:potted_white_tulip run return run function pots:particle/dispatch { type: "white_tulip" }
execute if block ~ ~ ~ minecraft:potted_pink_tulip run return run function pots:particle/dispatch { type: "pink_tulip" }
execute if block ~ ~ ~ minecraft:potted_oxeye_daisy run return run function pots:particle/dispatch { type: "oxeye_daisy" }
execute if block ~ ~ ~ minecraft:potted_cornflower run return run function pots:particle/dispatch { type: "cornflower" }
execute if block ~ ~ ~ minecraft:potted_lily_of_the_valley run return run function pots:particle/dispatch { type: "lily_of_the_valley" }
execute if block ~ ~ ~ minecraft:potted_wither_rose run return run function pots:particle/dispatch { type: "wither_rose" }

return run function #pots:on_particle