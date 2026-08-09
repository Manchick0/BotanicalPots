$data modify storage pots:entry name set value $(name)
$data modify storage pots:entry components set value $(components)
$data modify storage pots:entry particle set from storage pots:particle "$(type)"

$advancement grant @s only pots:defending_the_thesis $(criterion)
return run function pots:magnifying_glass/operation/investigate with storage pots:entry