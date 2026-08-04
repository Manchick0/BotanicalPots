$data modify storage pots:entry name set value $(name)
$data modify storage pots:entry components set value $(components)
data remove storage pots:entry description

data modify storage pots:entry description append value { text: " ", color: "white", font: "minecraft:default", italic: false }
function pots:magnifying_glass/operation/build_description
data modify storage pots:entry description append value { text: " ", color: "white", font: "minecraft:default", italic: false }

$function pots:particle/dispatch { type: "$(type)" }
$advancement grant @s only pots:thesis $(type)
playsound minecraft:ui.cartography_table.take_result player @a ~ ~ ~
function pots:magnifying_glass/operation/apply_description with storage pots:entry
function pots:magnifying_glass/operation/actionbar_description with storage pots:entry
return 1