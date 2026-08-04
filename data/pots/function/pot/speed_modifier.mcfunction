#
# Speed Modifier
#
# Returns the speed modifier based on the class of the plant
# at the current position.
#
execute if block ~ ~ ~ #pots:modifier/potted_mollis_plants run return 200
execute if block ~ ~ ~ #pots:modifier/potted_arrogans_plants run return 150
execute if block ~ ~ ~ #pots:modifier/potted_defixus_plants run return 75
execute if block ~ ~ ~ #pots:modifier/potted_ingens_plants run return 50
return 100