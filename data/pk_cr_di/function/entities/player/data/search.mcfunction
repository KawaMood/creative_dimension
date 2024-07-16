#> pk_cr_di:entities/player/data/search
#
# @input args
#   uuid: 4 int array
#       UUID of the searched player
#
# @output storage pk:common temp
#   subpath: string
#       Subpath to store the data in from the entry matching the player's UUID
#   player_data: entry or null
#       Player data

data remove storage pk:common temp.player_data
$data modify storage pk:common temp.player_data set from storage pk:cr_di database.players[{uuid:$(uuid)}].$(subpath)