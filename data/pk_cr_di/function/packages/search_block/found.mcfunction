#> pk_cr_di:packages/search_block/found
#
# Run at the found block
#
# @input args
#   callback: string
#       Command to run at the found block location

execute if score $packages.search_block.stop_at_first pk.temp matches 1 run scoreboard players set $package.search_block.found pk.temp 1
$$(callback)