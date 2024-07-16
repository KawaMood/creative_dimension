tag @s add pk_crea_in_portal
execute if entity @e[type=marker,tag=pk_crea_current_portal,tag=pk_crea_portal_facing_east] run tag @s add pk_crea_in_portal_facing_east
execute if entity @e[type=marker,tag=pk_crea_current_portal,tag=pk_crea_portal_facing_north] run tag @s add pk_crea_in_portal_facing_north
scoreboard players set @s PKDWPortalAnimationDelay 60
playsound block.beacon.ambient ambient @s ~ ~ ~ 1 0.8