# Switch the player tag
tag @s remove pk_crea_prepare_to_leave_creative_dimension
tag @s add pk_player_leave_dimension
# Teleport back near the last entered portal
summon marker ~ ~ ~ {Tags:["pk_crea_tp_marker"]}
execute as @e[type=marker,tag=pk_crea_tp_marker,limit=1] run function pk_crea:player/in_creative_dimension/leave/execute_from_marker
# Remove tag after execution
tag @s remove pk_player_leave_dimension