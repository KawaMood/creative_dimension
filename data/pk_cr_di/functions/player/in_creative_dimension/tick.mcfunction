# Clear forbidden items
scoreboard players set %pk_temp PKValue 0
# - Enderchest
execute store result score %pk_temp PKValue run clear @s[tag=!pk_cr_di_ignore_forbidden_item] ender_chest
execute if score %pk_temp PKValue matches 1.. run title @s actionbar {"text":"Ender chests are forbidden here!","color":"red"}
# - End portal frame
execute store result score %pk_temp PKValue run clear @s[tag=!pk_cr_di_ignore_forbidden_item] end_portal_frame
execute if score %pk_temp PKValue matches 1.. run title @s actionbar {"text":"End portal frames are forbidden here!","color":"red"}
# - Command Blocks
execute store result score %pk_temp PKValue run clear @s[tag=!pk_cr_di_ignore_forbidden_item] command_block
execute if score %pk_temp PKValue matches 1.. run title @s actionbar {"text":"Command blocks are forbidden here!","color":"red"}
# - Command Blocks
execute store result score %pk_temp PKValue run clear @s[tag=!pk_cr_di_ignore_forbidden_item] command_block_minecart
execute if score %pk_temp PKValue matches 1.. run title @s actionbar {"text":"Command block minecarts are forbidden here!","color":"red"}
# - Memorial excerpt
execute store result score %pk_temp PKValue run clear @s[tag=!pk_cr_di_ignore_forbidden_item] globe_banner_pattern{pkMemorialExcerpt:1b}
execute if score %pk_temp PKValue matches 1.. run title @s actionbar {"text":"Memorial excerpt are forbidden here!","color":"red"}

# Force gamemode (in case of deconnection on server that has a forced gamemode on reconnection)
execute if score %pk_disable_dream_world_forced_gamemode PKValue matches 0 run gamemode creative @s[gamemode=!creative]

# Check slow falling effect and make the player leave the creation dimension
execute if entity @s[tag=!pk_cr_di_prepare_to_leave_creative_dimension,predicate=pk_cr_di:effect/slow_falling] run function pk_cr_di:player/in_creative_dimension/leave/initialize
execute if entity @s[tag=pk_cr_di_prepare_to_leave_creative_dimension,scores={PKDelay=0}] run function pk_cr_di:player/in_creative_dimension/leave/execute_from_player
scoreboard players remove @s[tag=pk_cr_di_prepare_to_leave_creative_dimension,scores={PKDelay=1..}] PKDelay 1