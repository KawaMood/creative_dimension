# Retrieve player's linked marker
execute as @e[type=marker,tag=pk_cr_di_player_data] if score @s PKDWId = @p[tag=pk_cr_di_wait_for_effects_back] PKDWId run tag @s add pk_cr_di_current_player_data

# Restore effects 
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["pk_cr_di_current_player_data_effects","pk_cr_di_to_init"],Age:-1,WaitTime:-1,Radius:0.0f,Duration:1000,DurationOnUse:-1000}
data modify entity @e[type=area_effect_cloud,tag=pk_cr_di_to_init,limit=1] Effects set from entity @e[type=marker,tag=pk_cr_di_current_player_data,limit=1] data.ActiveEffects
tag @e[type=area_effect_cloud,tag=pk_cr_di_to_init] remove pk_cr_di_to_init

# Remove tags and marker
tag @s remove pk_cr_di_wait_for_effects_back
kill @e[type=marker,tag=pk_cr_di_current_player_data]