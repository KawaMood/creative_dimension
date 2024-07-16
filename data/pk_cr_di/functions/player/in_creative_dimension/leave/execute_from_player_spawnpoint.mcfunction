# Teleport to default world spawn 
tp @s ~ ~ ~
execute at @s unless predicate pk_crea:blocks/two_blocks_height_air run spreadplayers ~ ~ 1 1 false @s
title @s actionbar {"text":"Spawnpoint has been set in illegal dimension"}