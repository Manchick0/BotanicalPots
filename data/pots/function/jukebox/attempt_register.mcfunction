#
# pots:jukebox/attempt_register
# ---
# Attempt placing a marker at a jukebox in the player's sight.
#
# In order to not accidentally miss the block, instead of checking
# in a line of point, we check in a line of 2D planes.
#

execute positioned ^-0.25 ^-0.25 ^ if block ~ ~ ~ minecraft:jukebox unless entity @e[type=minecraft:marker, tag=Jukebox, distance=..0.866] align xyz run return run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["Jukebox"], data: { name: "Jukebox" }}
execute positioned ^ ^-0.25 ^ if block ~ ~ ~ minecraft:jukebox unless entity @e[type=minecraft:marker, tag=Jukebox, distance=..0.866] align xyz run return run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["Jukebox"], data: { name: "Jukebox" }}
execute positioned ^0.25 ^-0.25 ^ if block ~ ~ ~ minecraft:jukebox unless entity @e[type=minecraft:marker, tag=Jukebox, distance=..0.866] align xyz run return run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["Jukebox"], data: { name: "Jukebox" }}
execute positioned ^-0.25 ^ ^ if block ~ ~ ~ minecraft:jukebox unless entity @e[type=minecraft:marker, tag=Jukebox, distance=..0.866] align xyz run return run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["Jukebox"], data: { name: "Jukebox" }}
execute positioned ^ ^ ^ if block ~ ~ ~ minecraft:jukebox unless entity @e[type=minecraft:marker, tag=Jukebox, distance=..0.866] align xyz run return run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["Jukebox"], data: { name: "Jukebox" }}
execute positioned ^0.25 ^ ^ if block ~ ~ ~ minecraft:jukebox unless entity @e[type=minecraft:marker, tag=Jukebox, distance=..0.866] align xyz run return run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["Jukebox"], data: { name: "Jukebox" }}
execute positioned ^-0.25 ^0.25 ^ if block ~ ~ ~ minecraft:jukebox unless entity @e[type=minecraft:marker, tag=Jukebox, distance=..0.866] align xyz run return run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["Jukebox"], data: { name: "Jukebox" }}
execute positioned ^ ^0.25 ^ if block ~ ~ ~ minecraft:jukebox unless entity @e[type=minecraft:marker, tag=Jukebox, distance=..0.866] align xyz run return run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["Jukebox"], data: { name: "Jukebox" }}
execute positioned ^0.25 ^0.25 ^ if block ~ ~ ~ minecraft:jukebox unless entity @e[type=minecraft:marker, tag=Jukebox, distance=..0.866] align xyz run return run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["Jukebox"], data: { name: "Jukebox" }}

execute positioned ^ ^ ^0.5 if entity @s[distance=..7.5] run return run function pots:jukebox/attempt_register