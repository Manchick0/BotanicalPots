scoreboard objectives add var dummy
scoreboard objectives add growTime dummy
scoreboard objectives add bouquetCooldown dummy
scoreboard objectives add braidedCooldown dummy
scoreboard objectives add investigating dummy

data modify storage pots:particle oak set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:moss_block" } }
data modify storage pots:particle birch set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:lime_terracotta" } }
data modify storage pots:particle jungle set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:cactus" } }
data modify storage pots:particle acacia set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:moss_block" } }
data modify storage pots:particle dark_oak set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:green_terracotta" } }
data modify storage pots:particle cherry set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:pink_concrete" } }
data modify storage pots:particle pale_oak set value { type: "minecraft:falling_dust", options: { block_state: "light_gray_concrete_powder" } }
data modify storage pots:particle azalea set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:moss_block" } }
data modify storage pots:particle mangrove set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:green_concrete" } }
data modify storage pots:particle warped set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:warped_wart_block" } }
data modify storage pots:particle crimson set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:nether_wart_block" } }
data modify storage pots:particle bamboo set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:green_concrete" } }
data modify storage pots:particle cactus set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:green_concrete" } }
data modify storage pots:particle red_mushroom set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:red_mushroom_block" } }
data modify storage pots:particle brown_mushroom set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:brown_mushroom_block" } }
data modify storage pots:particle fern set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:moss_block" } }
data modify storage pots:particle dandelion set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:yellow_concrete" } }
data modify storage pots:particle poppy set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:red_concrete" } }
data modify storage pots:particle blue_orchid set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:light_blue_concrete_powder" } }
data modify storage pots:particle allium set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:purple_concrete" } }
data modify storage pots:particle azure_bluet set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:white_terracotta" } }
data modify storage pots:particle red_tulip set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:red_wool" } }
data modify storage pots:particle orange_tulip set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:pumpkin" } }
data modify storage pots:particle white_tulip set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:snow_block" } }
data modify storage pots:particle pink_tulip set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:cherry_planks" } }
data modify storage pots:particle oxeye_daisy set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:yellow_concrete" } }
data modify storage pots:particle cornflower set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:blue_concrete" } }
data modify storage pots:particle lily_of_the_valley set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:white_concrete" } }
data modify storage pots:particle wither_rose set value { type: "minecraft:falling_dust", options: { block_state: "minecraft:soul_soil" } }

# Backward compatibility for older versions
kill @e[tag=BotanicalPotUpgrade]
tag @e[tag=BotanicalPotDeco] add BotanicalPot
tag @e[tag=BotanicalPotDeco] remove BotanicalPotDeco
execute as @e[type=minecraft:marker, tag=BotanicalPot, nbt={data: {upgrade: "climate"}}] run \
    data modify entity @s data.upgrade set value "overgrown"
execute as @e[type=minecraft:marker, tag=BotanicalPot, nbt={data: {upgrade: "plentiful"}}] run \
    data modify entity @s data.upgrade set value "bountiful"