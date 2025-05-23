#> pk_cr_di:entities/player/data/update_strict
#
# @input args
#   uuid: 4 int array
#       UUID of the player to update the data from
#   subpath: string
#       Subpath to update the data in from the entry matching the player's UUID
#   data_path: string
#       Data to update
#   value: (any)
#       Value of the data

$data modify storage pk:cr_di database.players[{uuid:$(uuid)}].$(subpath).$(data_path) set value $(value)