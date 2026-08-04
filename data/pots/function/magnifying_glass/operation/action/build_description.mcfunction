execute if data storage pots:entry components[0] run data modify storage pots:entry description append from storage pots:entry components[0]
execute if data storage pots:entry components[0] run data remove storage pots:entry components[0]
execute if data storage pots:entry components[0] run data modify storage pots:entry description append value { text: " | ", color: "gray", font: "minecraft:default", italic: false }
execute if data storage pots:entry components[0] run function pots:magnifying_glass/operation/action/build_description