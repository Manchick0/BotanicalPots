title @s actionbar [ \
    { text: "\u0004", font: "pots:modifiers" }, \
    { text: "§a Pretentious", font: "minecraft:default" } \
]
function pots:particle/map { plant: "fern" }
advancement grant @s only pots:thesis fern
execute if items entity @s weapon.mainhand minecraft:paper[custom_data={ identifier: "pots:magnifying_glass" }] \
    run return run item modify entity @s weapon.mainhand pots:magnifying_glass/fern
item modify entity @s weapon.offhand pots:magnifying_glass/fern