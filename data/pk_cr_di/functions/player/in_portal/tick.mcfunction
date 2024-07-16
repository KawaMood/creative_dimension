# If the player leave portal before teleportation
execute if entity @s[tag=pk_crea_in_portal_facing_east] align xyz positioned ~ ~-2 ~ unless entity @e[type=marker,distance=..2] run function pk_crea:player/in_portal/leave 
execute if entity @s[tag=pk_crea_in_portal_facing_north] align xyz positioned ~ ~-2 ~ unless entity @e[type=marker,distance=..2] run function pk_crea:player/in_portal/leave

# Continuously give effect
effect give @s nausea 4 0 true

# Prepare to teleport
execute if entity @s[scores={PKDWPortalAnimationDelay=0}] run function pk_crea:player/in_portal/prepare_to_teleport

# Decrement score
scoreboard players remove @s[scores={PKDWPortalAnimationDelay=1..}] PKDWPortalAnimationDelay 1