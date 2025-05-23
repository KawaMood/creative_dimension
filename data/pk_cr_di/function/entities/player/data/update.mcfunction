#> pk_cr_di:entities/player/data/update
#
# @input args
#   uuid: 4 int array
#       UUID of the player to update
#   subpath: string
#       Subpath to store the data in from the entry matching the player's UUID
#   player_data: compound
#       Player data

$data modify storage pk:cr_di database.players[{uuid:$(uuid)}].$(subpath) merge value $(player_data)