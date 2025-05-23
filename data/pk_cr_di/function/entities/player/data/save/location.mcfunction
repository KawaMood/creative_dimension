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
#   Store dimension
data modify storage pk:common temp.player_data.location.dimension set from storage pk:common temp.player.Dimension
#   Store x and z
execute store result score $x pk.temp run data get storage pk:common temp.player.Pos[0]
execute store result score $z pk.temp run data get storage pk:common temp.player.Pos[2]
execute if score $x pk.temp matches ..-1 run scoreboard players add $x pk.temp 1
execute if score $z pk.temp matches ..-1 run scoreboard players add $z pk.temp 1
execute store result storage pk:common temp.player_data.location.x int 1 run scoreboard players get $x pk.temp
execute store result storage pk:common temp.player_data.location.z int 1 run scoreboard players get $z pk.temp
#   Store y
execute store result storage pk:common temp.player_data.location.y int 1 run data get storage pk:common temp.player.Pos[1]
#   If in a portal
execute if entity @s[tag=pk.cr_di.in_creative_portal] at @s align xyz as @n[type=marker,tag=pk.cr_di.feature.portal.controller,dy=-1] run function pk_cr_di:entities/player/data/save/portal_offset

# Update database
data remove storage pk:common temp.update_args
data modify storage pk:common temp.update_args.uuid set from storage pk:common temp.player.UUID
$data modify storage pk:common temp.update_args.subpath set value $(subpath)
data modify storage pk:common temp.update_args.player_data set from storage pk:common temp.player_data
function pk_cr_di:entities/player/data/update with storage pk:common temp.update_args