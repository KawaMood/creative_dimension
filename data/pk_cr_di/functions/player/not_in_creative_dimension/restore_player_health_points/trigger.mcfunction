execute store result score %pk_temp PKValue run data get entity @e[type=marker,tag=pk_crea_current_player_data,limit=1] data.Health
execute if score %pk_temp PKValue matches ..20 run function pk_crea:player/not_in_creative_dimension/restore_player_health_points/health_0_20
execute if score %pk_temp PKValue matches 21..40 run function pk_crea:player/not_in_creative_dimension/restore_player_health_points/health_21_40
execute if score %pk_temp PKValue matches 41..60 run function pk_crea:player/not_in_creative_dimension/restore_player_health_points/health_41_60
execute if score %pk_temp PKValue matches 61..80 run function pk_crea:player/not_in_creative_dimension/restore_player_health_points/health_61_80
execute if score %pk_temp PKValue matches 81..100 run function pk_crea:player/not_in_creative_dimension/restore_player_health_points/health_81_100

effect give @s health_boost 1 0
effect clear @s health_boost

execute store result score %pk_temp PKValue run data get entity @e[type=marker,tag=pk_crea_current_player_data,limit=1] data.MaxHealth
execute if score %pk_temp PKValue matches ..20 run function pk_crea:player/not_in_creative_dimension/restore_player_health_points/health_0_20
execute if score %pk_temp PKValue matches 21..40 run function pk_crea:player/not_in_creative_dimension/restore_player_health_points/health_21_40
execute if score %pk_temp PKValue matches 41..60 run function pk_crea:player/not_in_creative_dimension/restore_player_health_points/health_41_60
execute if score %pk_temp PKValue matches 61..80 run function pk_crea:player/not_in_creative_dimension/restore_player_health_points/health_61_80
execute if score %pk_temp PKValue matches 81..100 run function pk_crea:player/not_in_creative_dimension/restore_player_health_points/health_81_100