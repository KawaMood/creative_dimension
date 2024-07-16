#> pk_cr_di:entities/player/creative_portal/initiate
#
# Send the player to creative dimension
#
# @context a player standing in a creative portal at @s

# Save location for regular dimension
function pk_cr_di:entities/player/data/save/location {subpath:"regular_dimension"}

# Search from database
data modify storage pk:common temp.search_args set value {subpath:"creative_dimension"}
data modify storage pk:common temp.search_args.uuid set from entity @s UUID
function pk_cr_di:entities/player/data/search with storage pk:common temp.search_args

# Send to creative dimension
execute unless data storage pk:common temp.player_data.location run function pk_cr_di:entities/player/creative_portal/set_default_location
function pk_cr_di:entities/player/data/restore/location with storage pk:common temp.player_data.location

# Animations 
execute at @s anchored eyes run particle portal ^ ^ ^ 0.5 0.5 0.5 0.1 20
execute at @s run playsound block.portal.travel master @a[x=0] ~ ~ ~ 0.4 1.8