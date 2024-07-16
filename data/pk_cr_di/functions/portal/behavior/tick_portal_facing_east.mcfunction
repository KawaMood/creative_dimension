# Check if the lodestones still exist
execute unless predicate pk_crea:portal/lodestone_south_north run function pk_crea:portal/behavior/break_portal
# Player enter in portal
tag @s add pk_crea_current_portal
execute align xyz positioned ~ ~1 ~-1 as @a[tag=!pk_crea_in_portal,tag=!pk_crea_disallowed,gamemode=!spectator,dx=0,dy=1,dz=2] run function pk_crea:player/in_portal/enter
tag @s remove pk_crea_current_portal
# Animation
particle enchant ~ ~4 ~ 0 1 1 0.001 2