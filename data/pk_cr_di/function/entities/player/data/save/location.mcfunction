#> pk_cr_di:entities/player/data/save/location
#
# Save location of a player
#
# @input args
#   subpath: string
#       Subpath to store the data in from the entry matching the player's UUID (can be an empty string for no subpath)
#
# @context a player

# Prepare data
data modify storage pk:common temp.player_data set value {}
data modify storage pk:common temp.player set from entity @s {}

# Location
data modify storage pk:common temp.player_data.location.dimension set from storage pk:common temp.player.Dimension
execute store result storage pk:common temp.player_data.location.x int 1 run data get storage pk:common temp.player.Pos[0]
execute store result storage pk:common temp.player_data.location.y int 1 run data get storage pk:common temp.player.Pos[1]
execute store result storage pk:common temp.player_data.location.z int 1 run data get storage pk:common temp.player.Pos[2]

# Update database
data remove storage pk:common temp.update_args
data modify storage pk:common temp.update_args.uuid set from storage pk:common temp.player.UUID
$data modify storage pk:common temp.update_args.subpath set value $(subpath)
data modify storage pk:common temp.update_args.player_data set from storage pk:common temp.player_data
function pk_cr_di:entities/player/data/update with storage pk:common temp.update_args