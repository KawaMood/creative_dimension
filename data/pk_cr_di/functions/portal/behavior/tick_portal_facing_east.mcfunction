# Check if the lodestones still exist
execute unless predicate pk_cr_di:portal/lodestone_south_north run function pk_cr_di:portal/behavior/break_portal
# Player enter in portal
tag @s add pk_cr_di_current_portal
execute align xyz positioned ~ ~1 ~-1 as @a[tag=!pk_cr_di_in_portal,tag=!pk_cr_di_disallowed,gamemode=!spectator,dx=0,dy=1,dz=2] run function pk_cr_di:player/in_portal/enter
tag @s remove pk_cr_di_current_portal
# Animation
particle enchant ~ ~4 ~ 0 1 1 0.001 2