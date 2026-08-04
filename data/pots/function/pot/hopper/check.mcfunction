#
# Check
#
# Check whether the block above the current position
# is a hopper, and attempts to replant the pot with a
# suitable item if so.
#
execute unless block ~ ~1 ~ hopper[facing=down] run return 0
execute unless block ~ ~1 ~ hopper[enabled=true] run return 0
execute unless items block ~ ~1 ~ container.* * run return 0

execute store result score attempt var run function pots:pot/hopper/replant { position: "~ ~1 ~", slot: "container.0" }
execute unless score attempt var matches 0 run return run item modify block ~ ~1 ~ container.0 pots:decrement
execute store result score attempt var run function pots:pot/hopper/replant { position: "~ ~1 ~", slot: "container.1" }
execute unless score attempt var matches 0 run return run item modify block ~ ~1 ~ container.1 pots:decrement
execute store result score attempt var run function pots:pot/hopper/replant { position: "~ ~1 ~", slot: "container.2" }
execute unless score attempt var matches 0 run return run item modify block ~ ~1 ~ container.2 pots:decrement
execute store result score attempt var run function pots:pot/hopper/replant { position: "~ ~1 ~", slot: "container.3" }
execute unless score attempt var matches 0 run return run item modify block ~ ~1 ~ container.3 pots:decrement
execute store result score attempt var run function pots:pot/hopper/replant { position: "~ ~1 ~", slot: "container.4" }
execute unless score attempt var matches 0 run return run item modify block ~ ~1 ~ container.4 pots:decrement