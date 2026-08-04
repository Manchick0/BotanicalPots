$execute if block ~ ~ ~ minecraft:flower_pot if entity @e[type=minecraft:marker, tag=BotanicalPot, distance=..0.866] \
    align xyz positioned ~0.5 ~0.5 ~0.5 as @n[type=minecraft:marker, tag=BotanicalPot] if entity @s[nbt={data: {upgrade: "$(type)"}}] run return fail

execute if block ~ ~ ~ minecraft:flower_pot if entity @e[type=minecraft:marker, tag=BotanicalPot, distance=..0.866] \
    align xyz positioned ~0.5 ~0.5 ~0.5 as @n[type=minecraft:marker, tag=BotanicalPot] run loot spawn ~ ~ ~ loot pots:upgrade

$execute if block ~ ~ ~ minecraft:flower_pot if entity @e[type=minecraft:marker, tag=BotanicalPot, distance=..0.866] \
    align xyz positioned ~0.5 ~0.5 ~0.5 as @n[type=minecraft:marker, tag=BotanicalPot] run data modify entity @s data.upgrade set value "$(type)"
$execute if block ~ ~ ~ minecraft:flower_pot if entity @e[type=minecraft:marker, tag=BotanicalPot, distance=..0.866] \
    align xyz positioned ~0.5 ~0.5 ~0.5 as @n[type=minecraft:item_display, tag=BotanicalPot] run data modify entity @s item.components."minecraft:item_model" set value "pots:pot/$(type)"

execute if block ~ ~ ~ minecraft:flower_pot if entity @e[type=minecraft:marker, tag=BotanicalPot, distance=..0.866] \
    align xyz positioned ~0.5 ~0.5 ~0.5 run playsound minecraft:block.decorated_pot.break player @a ~ ~ ~
execute if block ~ ~ ~ minecraft:flower_pot if entity @e[type=minecraft:marker, tag=BotanicalPot, distance=..0.866] \
    align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:item{item: {id: "minecraft:paper", components: {"minecraft:item_model": "pots:upgrade/base"}}} ~ ~ ~ 0.2 0.2 0.2 0 10 normal
execute if block ~ ~ ~ minecraft:flower_pot if entity @e[type=minecraft:marker, tag=BotanicalPot, distance=..0.866] \
    align xyz positioned ~0.5 ~0.5 ~0.5 run item modify entity @s weapon.mainhand pots:decrement_player
execute if block ~ ~ ~ minecraft:flower_pot if entity @e[type=minecraft:marker, tag=BotanicalPot, distance=..0.866] \
    run return 0

$execute positioned ^ ^ ^0.5 if entity @s[distance=..7.5] run function pots:upgrade/attempt_apply { type: "$(type)" }