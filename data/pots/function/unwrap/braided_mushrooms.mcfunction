execute unless score @s braidedCooldown matches 1.. run loot give @s loot pots:braided_mushrooms
execute unless score @s braidedCooldown matches 1.. run playsound minecraft:item.bundle.drop_contents player @a ~ ~ ~
execute unless score @s braidedCooldown matches 1.. run item modify entity @s weapon.mainhand pots:decrement
execute unless score @s braidedCooldown matches 1.. run scoreboard players set @s braidedCooldown 4
advancement revoke @s only pots:event/braided_mushrooms