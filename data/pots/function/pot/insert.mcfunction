# Insert
#
# Tries to insert the corresponding loot in the container at $(position).
#
# The '#pots:on_insert' function tag may be used to insert
# loot for additional, potentially modded, plants.
#
$execute if block ~ ~ ~ minecraft:potted_oak_sapling run return run loot insert $(position) loot pots:pot/oak
$execute if block ~ ~ ~ minecraft:potted_spruce_sapling run return run loot insert $(position) loot pots:pot/spruce
$execute if block ~ ~ ~ minecraft:potted_birch_sapling run return run loot insert $(position) loot pots:pot/birch
$execute if block ~ ~ ~ minecraft:potted_jungle_sapling run return run loot insert $(position) loot pots:pot/jungle
$execute if block ~ ~ ~ minecraft:potted_acacia_sapling run return run loot insert $(position) loot pots:pot/acacia
$execute if block ~ ~ ~ minecraft:potted_dark_oak_sapling run return run loot insert $(position) loot pots:pot/dark_oak
$execute if block ~ ~ ~ minecraft:potted_cherry_sapling run return run loot insert $(position) loot pots:pot/cherry
$execute if block ~ ~ ~ minecraft:potted_pale_oak_sapling run return run loot insert $(position) loot pots:pot/pale_oak
$execute if block ~ ~ ~ minecraft:potted_azalea_bush run return run loot insert $(position) loot pots:pot/azalea
$execute if block ~ ~ ~ minecraft:potted_flowering_azalea_bush run return run loot insert $(position) loot pots:pot/flowering_azalea
$execute if block ~ ~ ~ minecraft:potted_crimson_fungus run return run loot insert $(position) loot pots:pot/crimson
$execute if block ~ ~ ~ minecraft:potted_warped_fungus run return run loot insert $(position) loot pots:pot/warped
$execute if block ~ ~ ~ minecraft:potted_mangrove_propagule run return run loot insert $(position) loot pots:pot/mangrove
$execute if block ~ ~ ~ minecraft:potted_bamboo run return run loot insert $(position) loot pots:pot/bamboo
$execute if block ~ ~ ~ minecraft:potted_fern run return run loot insert $(position) loot pots:pot/fern
$execute if block ~ ~ ~ minecraft:potted_cactus run return run loot insert $(position) loot pots:pot/cactus
$execute if block ~ ~ ~ minecraft:potted_red_mushroom run return run loot insert $(position) loot pots:pot/red_mushroom
$execute if block ~ ~ ~ minecraft:potted_brown_mushroom run return run loot insert $(position) loot pots:pot/brown_mushroom
$execute if block ~ ~ ~ minecraft:potted_dandelion run return run loot insert $(position) loot pots:pot/dandelion
$execute if block ~ ~ ~ minecraft:potted_poppy run return run loot insert $(position) loot pots:pot/poppy
$execute if block ~ ~ ~ minecraft:potted_blue_orchid run return run loot insert $(position) loot pots:pot/blue_orchid
$execute if block ~ ~ ~ minecraft:potted_allium run return run loot insert $(position) loot pots:pot/allium
$execute if block ~ ~ ~ minecraft:potted_azure_bluet run return run loot insert $(position) loot pots:pot/azure_bluet
$execute if block ~ ~ ~ minecraft:potted_red_tulip run return run loot insert $(position) loot pots:pot/red_tulip
$execute if block ~ ~ ~ minecraft:potted_orange_tulip run return run loot insert $(position) loot pots:pot/orange_tulip
$execute if block ~ ~ ~ minecraft:potted_white_tulip run return run loot insert $(position) loot pots:pot/white_tulip
$execute if block ~ ~ ~ minecraft:potted_pink_tulip run return run loot insert $(position) loot pots:pot/pink_tulip
$execute if block ~ ~ ~ minecraft:potted_oxeye_daisy run return run loot insert $(position) loot pots:pot/oxeye_daisy
$execute if block ~ ~ ~ minecraft:potted_cornflower run return run loot insert $(position) loot pots:pot/cornflower
$execute if block ~ ~ ~ minecraft:potted_lily_of_the_valley run return run loot insert $(position) loot pots:pot/lily_of_the_valley
$execute if block ~ ~ ~ minecraft:potted_wither_rose run return run loot insert $(position) loot pots:pot/wither_rose
$return run function #pots:on_insert { position: "$(position)" }