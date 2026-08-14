# Tick
#
# The main tick event handler. Handles
# all logic that needs to happen every tick.

execute as @a[advancements={pots:event/magnifying_glass=false}] run scoreboard players reset @s investigating
execute as @a[advancements={pots:event/magnifying_glass=true}] at @s run function pots:magnifying_glass/on_investigate

# Tick down the wrapped items
execute as @a[scores={bouquetCooldown=1..}] run scoreboard players remove @s bouquetCooldown 1
execute as @a[scores={braidedCooldown=1..}] run scoreboard players remove @s braidedCooldown 1

# Jukebox
execute as @e[type=minecraft:marker, tag=Jukebox] at @s if data block ~ ~ ~ ticks_since_song_started if entity @e[type=minecraft:marker, tag=BotanicalPot, predicate=pots:is_planted, distance=..7.5] \
    run advancement grant @a[distance=..7.5] only pots:my_singing_pots
execute as @e[type=minecraft:marker, tag=Jukebox] at @s if data block ~ ~ ~ ticks_since_song_started if function pots:jukebox/has_ensemble \
    run advancement grant @a[distance=..7.5] only pots:woodwind_ensemble
execute as @e[type=minecraft:marker, tag=Jukebox] at @s unless block ~ ~ ~ minecraft:jukebox run kill @s

execute as @e[type=minecraft:marker, tag=BotanicalPot] at @s unless block ~ ~ ~ #minecraft:flower_pots run loot spawn ~ ~ ~ loot pots:botanical_pot
execute as @e[type=minecraft:marker, tag=BotanicalPot] at @s unless block ~ ~ ~ #minecraft:flower_pots run kill @e[distance=..0.866, tag=BotanicalPot]
execute as @e[type=minecraft:marker, tag=BotanicalPot] at @s if block ~ ~ ~ minecraft:flower_pot run function pots:pot/hopper/check { position: "~ ~1 ~",  facing: "down"  }
execute as @e[type=minecraft:marker, tag=BotanicalPot] at @s if block ~ ~ ~ minecraft:flower_pot run function pots:pot/hopper/check { position: "~ ~ ~-1", facing: "south" }
execute as @e[type=minecraft:marker, tag=BotanicalPot] at @s if block ~ ~ ~ minecraft:flower_pot run function pots:pot/hopper/check { position: "~1 ~ ~",  facing: "west"  }
execute as @e[type=minecraft:marker, tag=BotanicalPot] at @s if block ~ ~ ~ minecraft:flower_pot run function pots:pot/hopper/check { position: "~ ~ ~1",  facing: "north" }
execute as @e[type=minecraft:marker, tag=BotanicalPot] at @s if block ~ ~ ~ minecraft:flower_pot run function pots:pot/hopper/check { position: "~-1 ~ ~", facing: "east"  }
execute as @e[type=minecraft:marker, tag=BotanicalPot] at @s if block ~ ~ ~ #pots:potted_plants at @s run function pots:pot/grow