execute anchored eyes positioned ^ ^ ^ run function iris:get_target
execute at @e[type=marker,tag=iris.ray,distance=..16] if block ~ ~ ~ #pk_crea:portal_starter if predicate pk_crea:portal/lodestones_facing_any if predicate pk_crea:portal/amethyst_blocks_circle run function pk_crea:portal/creation/starter_block/init
kill @e[type=marker,tag=iris.ray,distance=..16]