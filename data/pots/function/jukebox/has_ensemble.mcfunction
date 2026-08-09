#
# pots:jukebox/has_ensemble
# ---
# Determine whether there are at least 12 planted pots
# in a 7.5-block radius around the current position.
#
execute store result score ensemble var if entity @e[type=minecraft:marker, tag=BotanicalPot, predicate=pots:is_planted, distance=..7.5]
execute if score ensemble var matches 12.. run return 1
return 0