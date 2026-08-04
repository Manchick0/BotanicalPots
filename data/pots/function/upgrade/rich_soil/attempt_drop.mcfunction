execute if block ~ ~ ~ minecraft:composter[level=0] align xyz run loot spawn ~0.5 ~0.5 ~0.5 loot pots:definition/upgrade/rich_soil
execute if block ~ ~ ~ minecraft:composter[level=0] run return 0

execute positioned ^ ^ ^0.5 if entity @s[distance=..7.5] run function pots:upgrade/rich_soil/attempt_drop