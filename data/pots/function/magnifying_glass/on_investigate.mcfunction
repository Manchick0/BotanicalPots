execute if score @s investigating matches 10 run title @s actionbar [{ text: "\u0001", font: "pots:magnifying_glass", color: "white" }, { text: "\u0002", font: "pots:magnifying_glass", color: "white" }, { text: "\u0002", font: "pots:magnifying_glass", color: "white" }]
execute if score @s investigating matches 10 run playsound minecraft:item.brush.brushing.generic player @a ~ ~ ~
execute if score @s investigating matches 20 run title @s actionbar [{ text: "\u0001", font: "pots:magnifying_glass", color: "white" }, { text: "\u0001", font: "pots:magnifying_glass", color: "white" }, { text: "\u0002", font: "pots:magnifying_glass", color: "white" }]
execute if score @s investigating matches 20 run playsound minecraft:item.brush.brushing.generic player @a ~ ~ ~
execute if score @s investigating matches 30 run title @s actionbar [{ text: "\u0001", font: "pots:magnifying_glass", color: "white" }, { text: "\u0001", font: "pots:magnifying_glass", color: "white" }, { text: "\u0001", font: "pots:magnifying_glass", color: "white" }]
execute if score @s investigating matches 30 run playsound minecraft:item.brush.brushing.generic player @a ~ ~ ~
execute if score @s investigating matches 40 anchored eyes run function pots:magnifying_glass/attempt_dispatch
execute if score @s investigating matches 60 run scoreboard players reset @s investigating

scoreboard players add @s investigating 1
advancement revoke @s only pots:event/magnifying_glass