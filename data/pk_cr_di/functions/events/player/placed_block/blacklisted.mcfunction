#> pk_cr_di:events/player/placed_block/blacklisted
#
# Rewarded from advancement pk_cr_di:events/placed_block/blacklisted

# Revoke advancement
advancement revoke @s only pk_cr_di:events/placed_block/blacklisted

# Search the placed block and replace it with air
execute unless entity @s[tag=pk.cr_di.ignore_blacklisted_items] run data modify storage pk:common package.search_block.args set value {distance:10,block:"#pk_cr_di:blacklisted",nbt:"",callback:"setblock ~ ~ ~ air",stop_at_first:false}
execute unless entity @s[tag=pk.cr_di.ignore_blacklisted_items] run function pk_cr_di:packages/search_block/start with storage pk:common package.search_block.args