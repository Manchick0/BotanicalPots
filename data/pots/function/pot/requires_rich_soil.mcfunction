#
# Requires Rich Soil
#
# Determine whether the potted plant at the current position
# is classified as either arrogans or mollis and thus requires
# the rich soil upgrade to grow.
#
execute if block ~ ~ ~ #pots:modifier/potted_arrogans_plants run return 1
execute if block ~ ~ ~ #pots:modifier/potted_mollis_plants run return 1
return 0