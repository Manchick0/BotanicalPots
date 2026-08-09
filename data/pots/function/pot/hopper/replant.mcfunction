#
# Replant
#
# Take an item from the specified $(slot) of the hopper
# at the $(position) and use it to replant the pot.
#
$execute if items block $(position) $(slot) minecraft:oak_sapling run return run setblock ~ ~ ~ minecraft:potted_oak_sapling
$execute if items block $(position) $(slot) minecraft:spruce_sapling run return run setblock ~ ~ ~ minecraft:potted_spruce_sapling
$execute if items block $(position) $(slot) minecraft:birch_sapling run return run setblock ~ ~ ~ minecraft:potted_birch_sapling
$execute if items block $(position) $(slot) minecraft:jungle_sapling run return run setblock ~ ~ ~ minecraft:potted_jungle_sapling
$execute if items block $(position) $(slot) minecraft:acacia_sapling run return run setblock ~ ~ ~ minecraft:potted_acacia_sapling
$execute if items block $(position) $(slot) minecraft:dark_oak_sapling run return run setblock ~ ~ ~ minecraft:potted_dark_oak_sapling
$execute if items block $(position) $(slot) minecraft:cherry_sapling run return run setblock ~ ~ ~ minecraft:potted_cherry_sapling
$execute if items block $(position) $(slot) minecraft:pale_oak_sapling run return run setblock ~ ~ ~ minecraft:potted_pale_oak_sapling
$execute if items block $(position) $(slot) minecraft:azalea run return run setblock ~ ~ ~ minecraft:potted_azalea_bush
$execute if items block $(position) $(slot) minecraft:flowering_azalea run return run setblock ~ ~ ~ minecraft:potted_flowering_azalea_bush
$execute if items block $(position) $(slot) minecraft:mangrove_propagule run return run setblock ~ ~ ~ minecraft:potted_mangrove_propagule
$execute if items block $(position) $(slot) minecraft:crimson_fungus run return run setblock ~ ~ ~ minecraft:potted_crimson_fungus
$execute if items block $(position) $(slot) minecraft:warped_fungus run return run setblock ~ ~ ~ minecraft:potted_warped_fungus
$execute if items block $(position) $(slot) minecraft:cactus run return run setblock ~ ~ ~ minecraft:potted_cactus
$execute if items block $(position) $(slot) minecraft:red_mushroom run return run setblock ~ ~ ~ minecraft:potted_red_mushroom
$execute if items block $(position) $(slot) minecraft:brown_mushroom run return run setblock ~ ~ ~ minecraft:potted_brown_mushroom
$execute if items block $(position) $(slot) minecraft:wither_rose run return run setblock ~ ~ ~ minecraft:potted_wither_rose
$execute if items block $(position) $(slot) minecraft:golden_dandelion run return run setblock ~ ~ ~ minecraft:potted_golden_dandelion
$execute if items block $(position) $(slot) minecraft:bamboo run return run setblock ~ ~ ~ minecraft:potted_bamboo
$execute if items block $(position) $(slot) minecraft:fern run return run setblock ~ ~ ~ minecraft:potted_fern
$execute if items block $(position) $(slot) minecraft:crimson_roots run return run setblock ~ ~ ~ minecraft:potted_crimson_roots
$execute if items block $(position) $(slot) minecraft:warped_roots run return run setblock ~ ~ ~ minecraft:potted_warped_roots
$execute if items block $(position) $(slot) minecraft:closed_eyeblossom run return run setblock ~ ~ ~ minecraft:potted_closed_eyeblossom
$execute if items block $(position) $(slot) minecraft:open_eyeblossom run return run setblock ~ ~ ~ minecraft:potted_open_eyeblossom
$execute if items block $(position) $(slot) minecraft:dandelion run return run setblock ~ ~ ~ minecraft:potted_dandelion
$execute if items block $(position) $(slot) minecraft:poppy run return run setblock ~ ~ ~ minecraft:potted_poppy
$execute if items block $(position) $(slot) minecraft:blue_orchid run return run setblock ~ ~ ~ minecraft:potted_blue_orchid
$execute if items block $(position) $(slot) minecraft:allium run return run setblock ~ ~ ~ minecraft:potted_allium
$execute if items block $(position) $(slot) minecraft:azure_bluet run return run setblock ~ ~ ~ minecraft:potted_azure_bluet
$execute if items block $(position) $(slot) minecraft:red_tulip run return run setblock ~ ~ ~ minecraft:potted_red_tulip
$execute if items block $(position) $(slot) minecraft:orange_tulip run return run setblock ~ ~ ~ minecraft:potted_orange_tulip
$execute if items block $(position) $(slot) minecraft:white_tulip run return run setblock ~ ~ ~ minecraft:potted_white_tulip
$execute if items block $(position) $(slot) minecraft:pink_tulip run return run setblock ~ ~ ~ minecraft:potted_pink_tulip
$execute if items block $(position) $(slot) minecraft:oxeye_daisy run return run setblock ~ ~ ~ minecraft:potted_oxeye_daisy
$execute if items block $(position) $(slot) minecraft:cornflower run return run setblock ~ ~ ~ minecraft:potted_cornflower
$execute if items block $(position) $(slot) minecraft:lily_of_the_valley run return run setblock ~ ~ ~ minecraft:potted_lily_of_the_valley

$execute store result score attempt var run function #pots:on_replant { position: "$(position)", slot: "$(slot)" }
execute unless score attempt var matches 0 run return 1
return 0
