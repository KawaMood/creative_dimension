#> pk_cr_di:entities/player/creative_dimension/prepare_leave/initiate
#
# Send the player to regular dimension
#
# @context a player at @s

# Reset timer
scoreboard players set @s pk.cr_di.in_creative_portal.timer 0

# Unmark player
tag @s remove pk.cr_di.prepare_leave.creative_dimension

# Save location for regular dimension
function pk_cr_di:entities/player/data/save/location {subpath:"creative_dimension"}

# Search from database
data modify storage pk:common temp.search_args set value {subpath:"regular_dimension"}
data modify storage pk:common temp.search_args.uuid set from entity @s UUID
function pk_cr_di:entities/player/data/search with storage pk:common temp.search_args

# Send to regular dimension
execute unless data storage pk:common temp.player_data.location run data modify storage pk:common temp.player_data.location set value {dimension:"overworld",x:0,y:64,z:0}
function pk_cr_di:entities/player/data/restore/location with storage pk:common temp.player_data.location

# Animations 
execute at @s run playsound block.portal.travel master @a[x=0] ~ ~ ~ 0.4 1.8