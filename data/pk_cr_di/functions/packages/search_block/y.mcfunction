#> pk_cr_di:packages/search_block/y
#
# Recursively search on the Y axis

scoreboard players operation $z pk.temp = $distance*2+1 pk.temp
function pk_cr_di:packages/search_block/z with storage pk:common package.search_block.args

scoreboard players remove $y pk.temp 1
execute if score $package.search_block.found pk.temp matches 0 if score $y pk.temp matches 1.. positioned ~ ~1 ~ run function pk_cr_di:packages/search_block/y