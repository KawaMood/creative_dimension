#> pk_cr_di:entities/player/data/save/all
#
# Save all data from a player but location
#
# @input args
#   subpath: string
#       Subpath to store the data in from the entry matching the player's UUID (can be an empty string for no subpath)
#
# @context a player

# Prepare data
data modify storage pk:common temp.player_data set value {active_effects:[],inventory:[],ender_items:[],gamemode:"survival"}
data modify storage pk:common temp.player set from entity @s {}

# Store only retained data from player
#   UUID
data modify storage pk:common temp.player_data.uuid set from storage pk:common temp.player.UUID
#   Active effects
data modify storage pk:common temp.player_data.active_effects set from storage pk:common temp.player.active_effects
#   Inventory
data modify storage pk:common temp.player_data.inventory set from storage pk:common temp.player.Inventory
#   Ender items
data modify storage pk:common temp.player_data.ender_items set from storage pk:common temp.player.EnderItems
#   Health
data modify storage pk:common temp.player_data.health set from storage pk:common temp.player.Health
#   Experience
execute store result storage pk:common temp.player_data.xp.points int 1 run xp query @s points
execute store result storage pk:common temp.player_data.xp.levels int 1 run xp query @s levels
#   Gamemode
execute if entity @s[gamemode=survival] run data modify storage pk:common temp.player_data.gamemode set value "survival"
execute if entity @s[gamemode=creative] run data modify storage pk:common temp.player_data.gamemode set value "creative" 
execute if entity @s[gamemode=adventure] run data modify storage pk:common temp.player_data.gamemode set value "adventure" 
execute if entity @s[gamemode=spectator] run data modify storage pk:common temp.player_data.gamemode set value "spectator" 

# Update database
data remove storage pk:common temp.update_args
data modify storage pk:common temp.update_args.uuid set from storage pk:common temp.player_data.uuid
$data modify storage pk:common temp.update_args.subpath set value $(subpath)
data modify storage pk:common temp.update_args.player_data set from storage pk:common temp.player_data
function pk_cr_di:entities/player/data/update with storage pk:common temp.update_args