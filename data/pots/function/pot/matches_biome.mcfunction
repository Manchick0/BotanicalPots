#
# Matches Biome
#
# Determines whether the biome at the current position matches
# the biome required for the potted plant.
#
# The '#pots:on_suiting_biome' function tag may be used to add additional
# biome checks for potentially modded plants.
#
execute if block ~ ~ ~ minecraft:potted_oak_sapling run return run execute if biome ~ ~ ~ #pots:suitable_for_oak_sapling
execute if block ~ ~ ~ minecraft:potted_birch_sapling run return run execute if biome ~ ~ ~ #pots:suitable_for_birch_sapling
execute if block ~ ~ ~ minecraft:potted_spruce_sapling run return run execute if biome ~ ~ ~ #pots:suitable_for_spruce_sapling
execute if block ~ ~ ~ minecraft:potted_jungle_sapling run return run execute if biome ~ ~ ~ #pots:suitable_for_jungle_sapling
execute if block ~ ~ ~ minecraft:potted_acacia_sapling run return run execute if biome ~ ~ ~ #pots:suitable_for_acacia_sapling
execute if block ~ ~ ~ minecraft:potted_dark_oak_sapling run return run execute if biome ~ ~ ~ #pots:suitable_for_dark_oak_sapling
execute if block ~ ~ ~ minecraft:potted_cherry_sapling run return run execute if biome ~ ~ ~ #pots:suitable_for_cherry_sapling
execute if block ~ ~ ~ minecraft:potted_pale_oak_sapling run return run execute if biome ~ ~ ~ #pots:suitable_for_pale_oak_sapling
execute if block ~ ~ ~ minecraft:potted_mangrove_propagule run return run execute if biome ~ ~ ~ #pots:suitable_for_mangrove_propagule
execute if block ~ ~ ~ minecraft:potted_azalea_bush run return run execute if biome ~ ~ ~ #pots:suitable_for_azalea_bush
execute if block ~ ~ ~ minecraft:potted_flowering_azalea_bush run return run execute if biome ~ ~ ~ #pots:suitable_for_azalea_bush
execute if block ~ ~ ~ minecraft:potted_crimson_fungus run return run execute if biome ~ ~ ~ #pots:suitable_for_crimson_fungus
execute if block ~ ~ ~ minecraft:potted_warped_fungus run return run execute if biome ~ ~ ~ #pots:suitable_for_warped_fungus
execute if block ~ ~ ~ minecraft:potted_cactus run return run execute if biome ~ ~ ~ #pots:suitable_for_cactus
execute if block ~ ~ ~ minecraft:potted_red_mushroom run return run execute if biome ~ ~ ~ #pots:suitable_for_mushroom
execute if block ~ ~ ~ minecraft:potted_brown_mushroom run return run execute if biome ~ ~ ~ #pots:suitable_for_mushroom
execute if block ~ ~ ~ minecraft:potted_golden_dandelion run return run execute if biome ~ ~ ~ #pots:suitable_for_golden_dandelion
execute if block ~ ~ ~ minecraft:potted_wither_rose run return run execute if biome ~ ~ ~ #pots:suitable_for_wither_rose
execute if block ~ ~ ~ minecraft:potted_bamboo run return run execute if biome ~ ~ ~ #pots:suitable_for_bamboo
execute if block ~ ~ ~ minecraft:potted_fern run return run execute if biome ~ ~ ~ #pots:suitable_for_fern
execute if block ~ ~ ~ minecraft:potted_crimson_roots run return run execute if biome ~ ~ ~ #pots:suitable_for_crimson_roots
execute if block ~ ~ ~ minecraft:potted_warped_roots run return run execute if biome ~ ~ ~ #pots:suitable_for_warped_roots
execute if block ~ ~ ~ minecraft:potted_closed_eyeblossom run return run execute if biome ~ ~ ~ #pots:suitable_for_eyeblossom
execute if block ~ ~ ~ minecraft:potted_open_eyeblossom run return run execute if biome ~ ~ ~ #pots:suitable_for_eyeblossom
execute if block ~ ~ ~ #pots:potted_flowers run return run execute if biome ~ ~ ~ #pots:suitable_for_flower

execute store result score matches var run function #pots:on_matches_biome
execute unless score matches var matches 0 run return 1
return 0