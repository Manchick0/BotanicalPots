function pots:trace/start { condition: "if block ~ ~ ~ flower_pot if entity @e[type=block_display, tag=BotanicalPotOrnament, distance=..0.866]", onHit: "pots:trace/dye/dye" }
advancement revoke @s only pots:trace/dye