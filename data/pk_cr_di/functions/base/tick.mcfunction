# Portal
execute as @e[type=marker,tag=pk_crea_portal,tag=pk_in_creation] at @s run function pk_crea:portal/creation/tick
execute as @e[type=marker,tag=pk_crea_portal,tag=!pk_in_creation] at @s run function pk_crea:portal/behavior/tick

# Player
# - Entering a portal
execute if score %pk_disable_dream_world_portal_use PKValue matches 0 as @a[tag=pk_crea_in_portal] at @s run function pk_crea:player/in_portal/tick
# - If player has been killed in the creative dimension (void or command)
scoreboard players set @a[scores={PKCreaDeathCount=1..},predicate=pk_crea:dimension/creative_superflat,nbt={Health:0.0f}] PKDeathInCreativeDim 1
execute as @e[type=player,scores={PKCreaDeathCount=1..,PKDeathInCreativeDim=1}] run function pk_crea:player/in_creative_dimension/leave/execute_from_player
# - Being in creative dimension
execute as @a[tag=pk_crea_in_creative_dimension,predicate=pk_crea:dimension/creative_superflat] at @s run function pk_crea:player/in_creative_dimension/tick
# - Being not in creative dimension anymore
execute as @a[tag=pk_crea_wait_for_effects_back] at @s run function pk_crea:player/not_in_creative_dimension/restore_player_effects
execute as @a[tag=pk_crea_in_creative_dimension,predicate=!pk_crea:dimension/creative_superflat] at @s run function pk_crea:player/not_in_creative_dimension/restore_player_data
# - If bed spawnpoint has been set in creative dimension
execute as @e[type=player,scores={PKCreaDeathCount=1..,PKDeathInCreativeDim=0},predicate=pk_crea:dimension/creative_superflat] run function pk_crea:player/in_creative_dimension/leave/execute_from_player_spawnpoint
# - Reset the player scores on respawn
scoreboard players set @e[type=player] PKCreaDeathCount 0
scoreboard players set @e[type=player] PKDeathInCreativeDim 0

# Player heads
execute if score %pk_disable_dream_world_player_heads_creation PKValue matches 0 as @a[predicate=pk_crea:dimension/creative_superflat,predicate=pk_crea:hold/renamed_writable_book_in_mainhand] run function pk_crea:player_head/replace_in_mainhand
execute if score %pk_disable_dream_world_player_heads_creation PKValue matches 0 as @a[predicate=pk_crea:dimension/creative_superflat,predicate=pk_crea:hold/renamed_writable_book_in_offhand] run function pk_crea:player_head/replace_in_offhand