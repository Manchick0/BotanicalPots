#
# Particle
#
# Dispatches the appropriate particle for the potted plant at the current position.
#
# The '#pots:on_particle' function tag may be used to add additional
# particles for potentially modded plants.
#
execute if block ~ ~ ~ minecraft:potted_oak_sapling run return run function pots:particle/dispatch { type: "minecraft:oak_sapling" }
execute if block ~ ~ ~ minecraft:potted_spruce_sapling run return run function pots:particle/dispatch { type: "minecraft:spruce_sapling" }
execute if block ~ ~ ~ minecraft:potted_birch_sapling run return run function pots:particle/dispatch { type: "minecraft:birch_sapling" }
execute if block ~ ~ ~ minecraft:potted_jungle_sapling run return run function pots:particle/dispatch { type: "minecraft:jungle_sapling" }
execute if block ~ ~ ~ minecraft:potted_acacia_sapling run return run function pots:particle/dispatch { type: "minecraft:acacia_sapling" }
execute if block ~ ~ ~ minecraft:potted_dark_oak_sapling run return run function pots:particle/dispatch { type: "minecraft:dark_oak_sapling" }
execute if block ~ ~ ~ minecraft:potted_cherry_sapling run return run function pots:particle/dispatch { type: "minecraft:cherry_sapling" }
execute if block ~ ~ ~ minecraft:potted_pale_oak_sapling run return run function pots:particle/dispatch { type: "minecraft:pale_oak_sapling" }
execute if block ~ ~ ~ minecraft:potted_mangrove_propagule run return run function pots:particle/dispatch { type: "minecraft:mangrove_propagule" }
execute if block ~ ~ ~ minecraft:potted_azalea_bush run return run function pots:particle/dispatch { type: "minecraft:azalea_bush" }
execute if block ~ ~ ~ minecraft:potted_flowering_azalea_bush run return run function pots:particle/dispatch { type: "minecraft:flowering_azalea_bush" }
execute if block ~ ~ ~ minecraft:potted_warped_fungus run return run function pots:particle/dispatch { type: "minecraft:warped" }
execute if block ~ ~ ~ minecraft:potted_crimson_fungus run return run function pots:particle/dispatch { type: "minecraft:crimson" }
execute if block ~ ~ ~ minecraft:potted_cactus run return run function pots:particle/dispatch { type: "minecraft:cactus" }
execute if block ~ ~ ~ minecraft:potted_red_mushroom run return run function pots:particle/dispatch { type: "minecraft:red_mushroom" }
execute if block ~ ~ ~ minecraft:potted_brown_mushroom run return run function pots:particle/dispatch { type: "minecraft:brown_mushroom" }
execute if block ~ ~ ~ minecraft:potted_wither_rose run return run function pots:particle/dispatch { type: "minecraft:wither_rose" }
execute if block ~ ~ ~ minecraft:potted_golden_dandelion run return run function pots:particle/dispatch { type: "minecraft:golden_dandelion" }
execute if block ~ ~ ~ minecraft:potted_fern run return run function pots:particle/dispatch { type: "minecraft:fern" }
execute if block ~ ~ ~ minecraft:potted_bamboo run return run function pots:particle/dispatch { type: "minecraft:bamboo" }
execute if block ~ ~ ~ minecraft:potted_crimson_roots run return run function pots:particle/dispatch { type: "minecraft:crimson_roots" }
execute if block ~ ~ ~ minecraft:potted_warped_roots run return run function pots:particle/dispatch { type: "minecraft:warped_roots" }
execute if block ~ ~ ~ minecraft:potted_closed_eyeblossom run return run function pots:particle/dispatch { type: "minecraft:closed_eyeblossom" }
execute if block ~ ~ ~ minecraft:potted_open_eyeblossom run return run function pots:particle/dispatch { type: "minecraft:open_eyeblossom" }
execute if block ~ ~ ~ minecraft:potted_dandelion run return run function pots:particle/dispatch { type: "minecraft:dandelion" }
execute if block ~ ~ ~ minecraft:potted_poppy run return run function pots:particle/dispatch { type: "minecraft:poppy" }
execute if block ~ ~ ~ minecraft:potted_blue_orchid run return run function pots:particle/dispatch { type: "minecraft:blue_orchid" }
execute if block ~ ~ ~ minecraft:potted_allium run return run function pots:particle/dispatch { type: "minecraft:allium" }
execute if block ~ ~ ~ minecraft:potted_azure_bluet run return run function pots:particle/dispatch { type: "minecraft:azure_bluet" }
execute if block ~ ~ ~ minecraft:potted_red_tulip run return run function pots:particle/dispatch { type: "minecraft:red_tulip" }
execute if block ~ ~ ~ minecraft:potted_orange_tulip run return run function pots:particle/dispatch { type: "minecraft:orange_tulip" }
execute if block ~ ~ ~ minecraft:potted_white_tulip run return run function pots:particle/dispatch { type: "minecraft:white_tulip" }
execute if block ~ ~ ~ minecraft:potted_pink_tulip run return run function pots:particle/dispatch { type: "minecraft:pink_tulip" }
execute if block ~ ~ ~ minecraft:potted_oxeye_daisy run return run function pots:particle/dispatch { type: "minecraft:oxeye_daisy" }
execute if block ~ ~ ~ minecraft:potted_cornflower run return run function pots:particle/dispatch { type: "minecraft:cornflower" }
execute if block ~ ~ ~ minecraft:potted_lily_of_the_valley run return run function pots:particle/dispatch { type: "minecraft:lily_of_the_valley" }

return run function #pots:on_particle