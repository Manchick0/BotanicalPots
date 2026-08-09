#
# Grow
#
# Attempt to grow a pot and, if successful, drop the result.
#
execute if data entity @s { data: { upgrade: "shattered" } } run return 0
execute unless data entity @s { data: { upgrade: "rich_soil" } } if function pots:pot/requires_rich_soil run return 0

# Displaying notes if enjoying music
execute if function pots:pot/is_enjoying_music store result score attempt var run random value 0..19
execute if function pots:pot/is_enjoying_music if score attempt var matches 0 align xyz run particle minecraft:note ~0.5 ~0.5 ~0.5 0.15 0.15 0.15 0.5 1 force

# Incrementing the clock (used mostly for advancements)
scoreboard players add @s growTime 1

# Attempting to grow the pot.
execute store result score speed var run gamerule minecraft:random_tick_speed
execute store result score modifier var run function pots:pot/speed_modifier
scoreboard players operation speed var *= modifier var

# Short-circuiting on an unsuccessful attempt.
execute store result score attempt var run function pots:pot/roll
execute if score attempt var > speed var run return 0

# Triggering advancements.
execute if block ~ ~ ~ minecraft:potted_red_mushroom run advancement grant @a[distance=..7.5] only pots:funniest_guy minecraft:red_mushroom
execute if block ~ ~ ~ minecraft:potted_brown_mushroom run advancement grant @a[distance=..7.5] only pots:funniest_guy minecraft:brown_mushroom
execute if block ~ ~ ~ minecraft:potted_crimson_fungus run advancement grant @a[distance=..7.5] only pots:funniest_guy minecraft:crimson_fungus
execute if block ~ ~ ~ minecraft:potted_warped_fungus run advancement grant @a[distance=..7.5] only pots:funniest_guy minecraft:warped_fungus

execute if data entity @s {data: {upgrade: "flaming"}} if block ~ ~ ~ minecraft:potted_crimson_fungus run \
    advancement grant @a[distance=..7.5] only pots:from_the_flames
execute if data entity @s {data: {upgrade: "flaming"}} if block ~ ~ ~ minecraft:potted_warped_fungus run \
    advancement grant @a[distance=..7.5] only pots:from_the_flames

# Come along with me
execute if data entity @s {data: {upgrade: "overgrown"}} if block ~ ~ ~ minecraft:potted_oak_sapling \
    if biome ~ ~ ~ #pots:suitable_for_oak_sapling run advancement grant @a[distance=..7.5] only pots:come_along_with_me minecraft:oak_sapling
execute if data entity @s {data: {upgrade: "overgrown"}} if block ~ ~ ~ minecraft:potted_spruce_sapling \
    if biome ~ ~ ~ #pots:suitable_for_spruce_sapling run advancement grant @a[distance=..7.5] only pots:come_along_with_me minecraft:spruce_sapling
execute if data entity @s {data: {upgrade: "overgrown"}} if block ~ ~ ~ minecraft:potted_birch_sapling \
    if biome ~ ~ ~ #pots:suitable_for_birch_sapling run advancement grant @a[distance=..7.5] only pots:come_along_with_me minecraft:birch_sapling
execute if data entity @s {data: {upgrade: "overgrown"}} if block ~ ~ ~ minecraft:potted_jungle_sapling \
    if biome ~ ~ ~ #pots:suitable_for_jungle_sapling run advancement grant @a[distance=..7.5] only pots:come_along_with_me minecraft:jungle_sapling
execute if data entity @s {data: {upgrade: "overgrown"}} if block ~ ~ ~ minecraft:potted_acacia_sapling \
    if biome ~ ~ ~ #pots:suitable_for_acacia_sapling run advancement grant @a[distance=..7.5] only pots:come_along_with_me minecraft:acacia_sapling
execute if data entity @s {data: {upgrade: "overgrown"}} if block ~ ~ ~ minecraft:potted_dark_oak_sapling \
    if biome ~ ~ ~ #pots:suitable_for_dark_oak_sapling run advancement grant @a[distance=..7.5] only pots:come_along_with_me minecraft:dark_oak_sapling
execute if data entity @s {data: {upgrade: "overgrown"}} if block ~ ~ ~ minecraft:potted_cherry_sapling \
    if biome ~ ~ ~ #pots:suitable_for_cherry_sapling run advancement grant @a[distance=..7.5] only pots:come_along_with_me minecraft:cherry_sapling
execute if data entity @s {data: {upgrade: "overgrown"}} if block ~ ~ ~ minecraft:potted_pale_oak_sapling \
    if biome ~ ~ ~ #pots:suitable_for_pale_oak_sapling run advancement grant @a[distance=..7.5] only pots:come_along_with_me minecraft:pale_oak_sapling
execute if data entity @s {data: {upgrade: "overgrown"}} if block ~ ~ ~ minecraft:potted_mangrove_propagule \
    if biome ~ ~ ~ #pots:suitable_for_mangrove_propagule run advancement grant @a[distance=..7.5] only pots:come_along_with_me minecraft:mangrove_propagule
execute if data entity @s {data: {upgrade: "overgrown"}} if block ~ ~ ~ minecraft:potted_azalea_bush \
    if biome ~ ~ ~ #pots:suitable_for_azalea_bush run advancement grant @a[distance=..7.5] only pots:come_along_with_me minecraft:azalea_bush
execute if data entity @s {data: {upgrade: "overgrown"}} if block ~ ~ ~ minecraft:potted_flowering_azalea_bush \
    if biome ~ ~ ~ #pots:suitable_for_azalea_bush run advancement grant @a[distance=..7.5] only pots:come_along_with_me minecraft:flowering_azalea_bush
execute if data entity @s {data: {upgrade: "overgrown"}} if block ~ ~ ~ minecraft:potted_crimson_fungus \
    if biome ~ ~ ~ #pots:suitable_for_crimson_fungus run advancement grant @a[distance=..7.5] only pots:come_along_with_me minecraft:crimson_sapling
execute if data entity @s {data: {upgrade: "overgrown"}} if block ~ ~ ~ minecraft:potted_warped_fungus \
    if biome ~ ~ ~ #pots:suitable_for_warped_fungus run advancement grant @a[distance=..7.5] only pots:come_along_with_me minecraft:warped_sapling

# Flowstate + The Ficus
execute if score @s growTime matches ..40 run advancement grant @a[distance=..7.5] only pots:flowstate
execute if score @s growTime matches 24000.. run advancement grant @a[distance=..7.5] only pots:the_ficus
scoreboard players reset @s growTime

# Dropping the result.
execute store success score useStorage var run loot insert ~ ~-1 ~ loot pots:empty
execute if score useStorage var matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 run function pots:pot/insert { position: "~ ~-1 ~" }
execute if score useStorage var matches 0 align xyz positioned ~0.5 ~0.5 ~0.5 run function pots:pot/spawn

# Dropping the Overgrown upgrade.
execute store result score attempt var run random value 0..99
execute if score attempt var matches 0 if function pots:pot/matches_biome if score useStorage var matches 1 align xyz run loot insert ~ ~-1 ~ loot pots:definition/upgrade/overgrown
execute if score attempt var matches 0 if function pots:pot/matches_biome if score useStorage var matches 0 align xyz run loot spawn ~0.5 ~0.5 ~0.5 loot pots:definition/upgrade/overgrown

execute if data entity @s {data: {upgrade: "flaming"}} run playsound minecraft:item.firecharge.use block @a ~ ~ ~
execute if data entity @s {data: {upgrade: "flaming"}} align xyz run particle minecraft:flame ~0.5 ~0.5 ~0.5 0.3 0.3 0.3 0 10 normal

execute unless data entity @s {data: {upgrade: "flaming"}} run playsound item.bundle.drop_contents block @a ~ ~ ~
execute unless data entity @s {data: {upgrade: "flaming"}} align xyz positioned ~0.5 ~0.5 ~0.5 run function pots:pot/particle

# The best way to replant the pot is to not do anything.
execute unless data entity @s {data: {upgrade: "mechanical"}} run setblock ~ ~ ~ minecraft:flower_pot