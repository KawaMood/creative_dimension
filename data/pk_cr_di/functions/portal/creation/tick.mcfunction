# Stop execution depending on requirements
execute if entity @s[tag=pk_amethyst_not_absorbed] unless predicate pk_crea:portal/portal_creation_full_requirements run function pk_crea:portal/behavior/break_portal
execute if entity @s[tag=!pk_amethyst_not_absorbed] unless predicate pk_crea:portal/lodestones_facing_any run function pk_crea:portal/behavior/break_portal
execute unless predicate pk_crea:portal/starter_block run function pk_crea:portal/behavior/break_portal

# Events 
execute if entity @s[scores={PKDelay=40}] run function pk_crea:portal/creation/initialize/amethyst_blocks_absorb
execute if entity @s[scores={PKDelay=0}] run function pk_crea:portal/creation/place/trigger

# Particles
particle crit ~ ~0.5 ~ 0 0 0 1 4
particle white_ash ~ ~2 ~ 4 2 4 0.1 1

# Decrement marker delay score
scoreboard players remove @s PKDelay 1