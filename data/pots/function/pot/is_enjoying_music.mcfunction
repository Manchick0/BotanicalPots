#
# Is Enjoying Music
#
# Determine whether the potted plant is within a 7.5
# block radius from a playing jukebox.
#
execute as @e[type=minecraft:marker, tag=jukebox, distance=..7.5] at @s \
    if block ~ ~ ~ minecraft:jukebox[has_record=true] \
    if data block ~ ~ ~ ticks_since_song_started run return 1
return 0