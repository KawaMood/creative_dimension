#> pk_cr_di:entities/player/data/restore/all
#
# Restore all data but location
#
# @input args
#   from: string
#       Subpath to store the data in from the entry matching the player's UUID (can be an empty string for no subpath)
#
# @context a player to restore data on
#
# Example:
#   function pk_cr_di:entities/player/data/restore/all {subpath:".regular_dimension"}

# Clear
function pk_cr_di:entities/player/clear

# Search from database
data remove storage pk:common temp.search_args
data modify storage pk:common temp.search_args.uuid set from storage pk:common temp.player_data.uuid
$data modify storage pk:common temp.search_args.subpath set value $(subpath)
function pk_cr_di:entities/player/data/search with storage pk:common temp.search_args
#   @return fail if player not found
execute unless data storage pk:common temp.player_data run return fail

# Restore player data
#   Active effects
function pk_cr_di:entities/player/data/restore/effects/start
#   Inventory
function pk_cr_di:entities/player/data/restore/inventory/all
#   Ender items
function pk_cr_di:entities/player/data/restore/ender_items/start
#   Health
function pk_cr_di:entities/player/data/restore/health/_run
#   Experience
function pk_cr_di:entities/player/data/restore/xp with storage pk:common temp.player_data.xp
#   Gamemode
function pk_cr_di:entities/player/data/restore/gamemode with storage pk:common temp.player_data