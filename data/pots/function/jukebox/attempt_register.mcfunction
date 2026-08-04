# Lower row
execute positioned ^-0.25 ^-0.25 ^ if block ~ ~ ~ minecraft:jukebox unless entity @e[type=minecraft:marker, tag=jukebox, distance=..0.866] align xyz run return run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["jukebox"], data: { name: "Jukebox" }}
execute positioned ^ ^-0.25 ^ if block ~ ~ ~ minecraft:jukebox unless entity @e[type=minecraft:marker, tag=jukebox, distance=..0.866] align xyz run return run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["jukebox"], data: { name: "Jukebox" }}
execute positioned ^0.25 ^-0.25 ^ if block ~ ~ ~ minecraft:jukebox unless entity @e[type=minecraft:marker, tag=jukebox, distance=..0.866] align xyz run return run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["jukebox"], data: { name: "Jukebox" }}
# Middle row
execute positioned ^-0.25 ^ ^ if block ~ ~ ~ minecraft:jukebox unless entity @e[type=minecraft:marker, tag=jukebox, distance=..0.866] align xyz run return run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["jukebox"], data: { name: "Jukebox" }}
execute positioned ^ ^ ^ if block ~ ~ ~ minecraft:jukebox unless entity @e[type=minecraft:marker, tag=jukebox, distance=..0.866] align xyz run return run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["jukebox"], data: { name: "Jukebox" }}
execute positioned ^0.25 ^ ^ if block ~ ~ ~ minecraft:jukebox unless entity @e[type=minecraft:marker, tag=jukebox, distance=..0.866] align xyz run return run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["jukebox"], data: { name: "Jukebox" }}
# Upper row
execute positioned ^-0.25 ^0.25 ^ if block ~ ~ ~ minecraft:jukebox unless entity @e[type=minecraft:marker, tag=jukebox, distance=..0.866] align xyz run return run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["jukebox"], data: { name: "Jukebox" }}
execute positioned ^ ^0.25 ^ if block ~ ~ ~ minecraft:jukebox unless entity @e[type=minecraft:marker, tag=jukebox, distance=..0.866] align xyz run return run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["jukebox"], data: { name: "Jukebox" }}
execute positioned ^0.25 ^0.25 ^ if block ~ ~ ~ minecraft:jukebox unless entity @e[type=minecraft:marker, tag=jukebox, distance=..0.866] align xyz run return run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:["jukebox"], data: { name: "Jukebox" }}

execute positioned ^ ^ ^0.5 if entity @s[distance=..7.5] run return run function pots:jukebox/attempt_register