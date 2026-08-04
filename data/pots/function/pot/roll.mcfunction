
execute if data entity @s {data: {upgrade: "overgrown"}} if function pots:pot/matches_biome if function pots:pot/is_enjoying_music run return run random value 1..307200
execute if data entity @s {data: {upgrade: "overgrown"}} if function pots:pot/matches_biome run return run random value 1..409600
execute if function pots:pot/is_enjoying_music run return run random value 1..614400
return run random value 1..1228800