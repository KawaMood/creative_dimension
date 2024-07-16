execute anchored eyes positioned ^ ^ ^ run function iris:get_target
execute at @e[type=marker,tag=iris.ray,distance=..16] if block ~ ~ ~ #pk_cr_di:portal_starter if predicate pk_cr_di:portal/lodestones_facing_any if predicate pk_cr_di:portal/amethyst_blocks_circle run function pk_cr_di:portal/creation/starter_block/init
kill @e[type=marker,tag=iris.ray,distance=..16]