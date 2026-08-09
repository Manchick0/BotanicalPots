$data modify storage pots:entry name set value $(name)
$data modify storage pots:entry components set value $(components)
$data modify storage pots:entry particle set value $(particle)

data remove storage pots:entry description
data modify storage pots:entry description append value { text: " ", color: "white", font: "minecraft:default", italic: false }
function pots:magnifying_glass/operation/action/build_description
data modify storage pots:entry description append value { text: " ", color: "white", font: "minecraft:default", italic: false }

playsound minecraft:ui.cartography_table.take_result player @a ~ ~ ~
function pots:magnifying_glass/operation/action/apply_description with storage pots:entry
function pots:magnifying_glass/operation/action/actionbar with storage pots:entry
function pots:particle/spawn with storage pots:entry particle
advancement grant @s only pots:uhm_acshwually

return 1