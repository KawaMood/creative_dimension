# Remove in_portal tags
function pk_crea:player/in_portal/leave

# Summon player's data marker
execute in overworld run summon marker -30000000 11 1600 {Tags:["pk_crea_player_data","pk_current_marker"]}

# Increment id and link player with the data marker
scoreboard players add %pk_crea_link_id PKDWId 1
scoreboard players operation @e[type=marker,tag=pk_current_marker,limit=1] PKDWId = %pk_crea_link_id PKDWId
scoreboard players operation @s PKDWId = %pk_crea_link_id PKDWId

# Set player's data to the linked marker
data modify entity @e[type=marker,tag=pk_current_marker,limit=1] data.Health set from entity @s Health
execute store result entity @e[type=marker,tag=pk_current_marker,limit=1] data.MaxHealth int 1 run attribute @s generic.max_health base get 1
data modify entity @e[type=marker,tag=pk_current_marker,limit=1] data.active_effects set from entity @s active_effects
data modify entity @e[type=marker,tag=pk_current_marker,limit=1] data.Inventory set from entity @s Inventory
execute store result entity @e[type=marker,tag=pk_current_marker,limit=1] data.XpLevels int 1 run xp query @s levels 
execute store result entity @e[type=marker,tag=pk_current_marker,limit=1] data.XpPoints int 1 run xp query @s points
execute if entity @s[gamemode=survival] run data modify entity @e[type=marker,tag=pk_current_marker,limit=1] data.Gamemode set value "survival"
execute if entity @s[gamemode=creative] run data modify entity @e[type=marker,tag=pk_current_marker,limit=1] data.Gamemode set value "creative"
execute if entity @s[gamemode=adventure] run data modify entity @e[type=marker,tag=pk_current_marker,limit=1] data.Gamemode set value "adventure"
tag @e[type=marker,tag=pk_current_marker] remove pk_current_marker

# Set players last entered portal pos
tag @s add pk_current_player
execute as @e[type=marker,tag=pk_crea_portal,sort=nearest,limit=1] run function pk_crea:player/in_portal/store_entered_point
tag @s remove pk_current_player

# Teleport the player in the creative dimension
execute in pk_crea:creative_superflat run tp @s 0 1 0
execute at @s unless predicate pk_crea:blocks/two_blocks_height_air run spreadplayers ~ ~ 1 1 false @s

# Reset player and prepare it
clear @s
effect clear @s
xp set @s 0 levels
xp set @s 0 points
gamemode creative @s
tag @s add pk_crea_in_creative_dimension

# Animations
execute at @s run particle minecraft:dragon_breath ~ ~ ~ 0.5 1 0.5 0.01 200
execute at @s run playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 1000 0.4