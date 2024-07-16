#> pk_cr_di:packages/search_block/start
#
# Start the search block process
#
# @input args
#   distance: int
#       The distance the process should check blocks, drawing a volume of (d*2)*(d*2)*(d*2) blocks from the center
#
# @input storage pk:common package.search_block.args
#       Args to set for the search_block process

# Prepare scores
execute store result score $distance pk.temp run data get storage pk:common package.search_block.args.distance
scoreboard players operation $distance*2+1 pk.temp = $distance pk.temp
scoreboard players operation $distance*2+1 pk.temp += $distance pk.temp
scoreboard players add $distance*2+1 pk.temp 1
scoreboard players operation $x pk.temp = $distance*2+1 pk.temp

execute store result score $packages.search_block.stop_at_first pk.temp run data get storage pk:common package.search_block.args.stop_at_first
scoreboard players set $package.search_block.found pk.temp 0

$execute align xyz positioned ~-$(distance) ~-$(distance) ~-$(distance) run function pk_cr_di:packages/search_block/x