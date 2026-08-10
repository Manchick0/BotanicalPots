#
# pots:pot/hopper/check
# ---
# Check whether the block at the specified $(position)
# is a hopper, and attempts to replant the pot with a
# suitable item if so.
#
# The hopper must face the provided $(facing).
#
$execute unless block $(position) hopper[facing=$(facing)] run return 0
$execute unless block $(position) hopper[enabled=true] run return 0
$execute unless items block $(position) container.* * run return 0

$execute store result score attempt var run function pots:pot/hopper/replant { position: "$(position)", slot: "container.0" }
$execute unless score attempt var matches 0 run return run item modify block $(position) container.0 pots:decrement
$execute store result score attempt var run function pots:pot/hopper/replant { position: "$(position)", slot: "container.1" }
$execute unless score attempt var matches 0 run return run item modify block $(position) container.1 pots:decrement
$execute store result score attempt var run function pots:pot/hopper/replant { position: "$(position)", slot: "container.2" }
$execute unless score attempt var matches 0 run return run item modify block $(position) container.2 pots:decrement
$execute store result score attempt var run function pots:pot/hopper/replant { position: "$(position)", slot: "container.3" }
$execute unless score attempt var matches 0 run return run item modify block $(position) container.3 pots:decrement
$execute store result score attempt var run function pots:pot/hopper/replant { position: "$(position)", slot: "container.4" }
$execute unless score attempt var matches 0 run return run item modify block $(position) container.4 pots:decrement