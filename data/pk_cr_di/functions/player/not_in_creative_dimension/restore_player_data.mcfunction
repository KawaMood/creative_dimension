# Remove the player tag
tag @s remove pk_cr_di_in_creative_dimension

# Retrieve player's linked marker
tag @s add pk_cr_di_current_player
execute as @e[type=marker,tag=pk_cr_di_player_data] if score @s PKDWId = @p[tag=pk_cr_di_current_player] PKDWId run tag @s add pk_cr_di_current_player_data

# Restore gamemode
execute if entity @e[type=marker,tag=pk_cr_di_current_player_data,nbt={data:{Gamemode:"survival"}}] run gamemode survival @s
execute if entity @e[type=marker,tag=pk_cr_di_current_player_data,nbt={data:{Gamemode:"creative"}}] run gamemode creative @s
execute if entity @e[type=marker,tag=pk_cr_di_current_player_data,nbt={data:{Gamemode:"adventure"}}] run gamemode adventure @s

# Restore health points
execute store result score %pk_temp PKValue run data get entity @e[type=marker,tag=pk_cr_di_current_player_data,limit=1] data.MaxHealth
execute if score %pk_temp PKValue matches ..100 run function pk_cr_di:player/not_in_creative_dimension/restore_player_health_points/trigger

# Restore experience
experience set @s 0 levels
experience set @s 0 points
function pk_cr_di:player/not_in_creative_dimension/restore_xp_levels
function pk_cr_di:player/not_in_creative_dimension/restore_xp_points

# Restore inventory
function pk_cr_di:player/not_in_creative_dimension/restore_player_inventory

# Restore effects (wait for 1 tick)
effect clear @s
tag @s add pk_cr_di_wait_for_effects_back

# Remove current entities tags
tag @e[type=marker,tag=pk_cr_di_current_player_data] remove pk_cr_di_current_player_data
tag @s remove pk_cr_di_current_player
