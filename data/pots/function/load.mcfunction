scoreboard objectives add var dummy
scoreboard objectives add growTime dummy
scoreboard objectives add bouquetCooldown dummy
scoreboard objectives add braidedCooldown dummy
scoreboard objectives add investigating dummy

data modify storage pots:particle minecraft:oak_sapling set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:moss_block" } }
data modify storage pots:particle minecraft:birch_sapling set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:lime_terracotta" } }
data modify storage pots:particle minecraft:jungle_sapling set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:cactus" } }
data modify storage pots:particle minecraft:acacia_sapling set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:moss_block" } }
data modify storage pots:particle minecraft:dark_oak_sapling set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:green_terracotta" } }
data modify storage pots:particle minecraft:cherry_sapling set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:pink_concrete" } }
data modify storage pots:particle minecraft:pale_oak_sapling set value { type: "minecraft:falling_dust", options: { block_state: "light_gray_concrete_powder" } }
data modify storage pots:particle minecraft:azalea_bush set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:moss_block" } }
data modify storage pots:particle minecraft:flowering_azalea_bush set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:magenta_terracotta" } }
data modify storage pots:particle minecraft:mangrove_propagule set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:green_concrete" } }
data modify storage pots:particle minecraft:crimson_fungus set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:nether_wart_block" } }
data modify storage pots:particle minecraft:warped_fungus set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:warped_wart_block" } }
data modify storage pots:particle minecraft:cactus set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:green_concrete" } }
data modify storage pots:particle minecraft:red_mushroom set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:red_mushroom_block" } }
data modify storage pots:particle minecraft:brown_mushroom set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:brown_mushroom_block" } }
data modify storage pots:particle minecraft:golden_dandelion set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:raw_gold_block" } }
data modify storage pots:particle minecraft:wither_rose set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:soul_soil" } }
data modify storage pots:particle minecraft:bamboo set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:green_concrete" } }
data modify storage pots:particle minecraft:fern set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:moss_block" } }
data modify storage pots:particle minecraft:crimson_roots set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:nether_wart_block" } }
data modify storage pots:particle minecraft:warped_roots set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:warped_wart_block" } }
data modify storage pots:particle minecraft:closed_eyeblossom set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:clay" } }
data modify storage pots:particle minecraft:open_eyeblossom set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:pumpkin" } }
data modify storage pots:particle minecraft:dandelion set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:yellow_concrete" } }
data modify storage pots:particle minecraft:poppy set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:red_concrete" } }
data modify storage pots:particle minecraft:blue_orchid set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:light_blue_concrete_powder" } }
data modify storage pots:particle minecraft:allium set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:purple_concrete" } }
data modify storage pots:particle minecraft:azure_bluet set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:white_terracotta" } }
data modify storage pots:particle minecraft:red_tulip set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:red_wool" } }
data modify storage pots:particle minecraft:orange_tulip set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:pumpkin" } }
data modify storage pots:particle minecraft:white_tulip set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:snow_block" } }
data modify storage pots:particle minecraft:pink_tulip set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:cherry_planks" } }
data modify storage pots:particle minecraft:oxeye_daisy set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:yellow_concrete" } }
data modify storage pots:particle minecraft:cornflower set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:blue_concrete" } }
data modify storage pots:particle minecraft:lily_of_the_valley set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:white_concrete" } }

# Backward compatibility for older versions
kill @e[tag=BotanicalPotUpgrade]
tag @e[tag=BotanicalPotDeco] add BotanicalPot
tag @e[tag=BotanicalPotDeco] remove BotanicalPotDeco
execute as @e[type=minecraft:marker, tag=BotanicalPot, nbt={data: {upgrade: "climate"}}] run \
    data modify entity @s data.upgrade set value "overgrown"
execute as @e[type=minecraft:marker, tag=BotanicalPot, nbt={data: {upgrade: "plentiful"}}] run \
    data modify entity @s data.upgrade set value "bountiful"