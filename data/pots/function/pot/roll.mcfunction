
execute if data entity @s {data: {upgrade: "overgrown"}} if function pots:pot/matches_biome if function pots:pot/is_enjoying_music run return run random value 1..351085
execute if data entity @s {data: {upgrade: "overgrown"}} if function pots:pot/matches_biome run return run random value 1..409600
execute if function pots:pot/is_enjoying_music run return run random value 1..819200
return run random value 1..1228800