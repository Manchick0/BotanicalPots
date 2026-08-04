execute if block ~ ~ ~ #pots:stripped_wood run loot spawn ^ ^ ^-0.75 loot pots:definition/upgrade/timber
execute if block ~ ~ ~ #pots:stripped_wood run return 0

execute positioned ^ ^ ^0.5 if entity @s[distance=..7.5] run function pots:upgrade/timber/attempt_drop