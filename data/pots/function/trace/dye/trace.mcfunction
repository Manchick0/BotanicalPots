execute if block ~ ~ ~ flower_pot if entity @e[type=block_display, tag=BotanicalPotOrnament, distance=..0.866] run return run function pots:trace/dye/dye
execute positioned ^ ^ ^0.1 if entity @s[distance=..5] run function pots:trace/dye/trace