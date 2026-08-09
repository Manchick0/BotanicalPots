execute if block ~ ~ ~ minecraft:flower_pot unless entity @e[type=minecraft:marker, tag=BotanicalPot, distance=..0.866] \
    align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:block_display ~ ~ ~ { \
        Passengers: [ \
            { \
                id: "minecraft:item_display", \
                item: { \
                    id: "minecraft:paper", \
                    components: { "minecraft:item_model": "pots:pot/base" }, \
                    count: 1 \
                }, \
                Tags: ["BotanicalPot"] \
            } \
        ], \
        block_state: { Name: "minecraft:air" }, \
        Tags: ["BotanicalPot"] \
    }
execute if block ~ ~ ~ minecraft:flower_pot unless entity @e[type=minecraft:marker, tag=BotanicalPot, distance=..0.866] \
    align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:happy_villager ~ ~ ~ 0.2 0.2 0.2 1 10 force @a
execute if block ~ ~ ~ minecraft:flower_pot unless entity @e[type=minecraft:marker, tag=BotanicalPot, distance=..0.866] \
    align xyz positioned ~0.5 ~0.5 ~0.5 run playsound minecraft:block.composter.ready player @a ~ ~ ~
execute if block ~ ~ ~ minecraft:flower_pot unless entity @e[type=minecraft:marker, tag=BotanicalPot, distance=..0.866] \
    align xyz positioned ~0.5 ~0.5 ~0.5 run item modify entity @s weapon.mainhand pots:decrement_player
execute if block ~ ~ ~ minecraft:flower_pot unless entity @e[type=minecraft:marker, tag=BotanicalPot, distance=..0.866] \
    align xyz positioned ~0.5 ~0.5 ~0.5 run return run summon minecraft:marker ~ ~ ~ {Tags: ["BotanicalPot"], data: {name: "Botanical Pot", upgrade: "none"}}
    
execute if entity @s[distance=..7.5] positioned ^ ^ ^0.5 run function pots:pot/create/attempt_create