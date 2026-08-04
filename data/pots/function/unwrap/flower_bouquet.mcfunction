execute unless score @s bouquetCooldown matches 1.. run loot give @s loot pots:flower_bouquet
execute unless score @s bouquetCooldown matches 1.. run playsound minecraft:item.bundle.drop_contents player @a ~ ~ ~
execute unless score @s bouquetCooldown matches 1.. run item modify entity @s weapon.mainhand pots:decrement
execute unless score @s bouquetCooldown matches 1.. run scoreboard players set @s bouquetCooldown 4
advancement revoke @s only pots:event/flower_bouquet