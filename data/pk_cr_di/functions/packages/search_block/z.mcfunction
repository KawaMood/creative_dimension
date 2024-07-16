#> pk_cr_di:packages/search_block/z
#
# Recursively search on the Z axis
#
# @input args
#   block: string
#       Id or tag of the block to find
#   nbt: empty string or entry
#       Optinal data of the block entity to find
#
# @reads
#   pk:common package.search_block.args
#       Args to set for the search_block process

$execute if block ~ ~ ~ $(block)$(nbt) run function pk_cr_di:packages/search_block/found with storage pk:common package.search_block.args
scoreboard players remove $z pk.temp 1
execute if score $package.search_block.found pk.temp matches 0 if score $z pk.temp matches 1.. positioned ~ ~ ~1 run function pk_cr_di:packages/search_block/z with storage pk:common package.search_block.args