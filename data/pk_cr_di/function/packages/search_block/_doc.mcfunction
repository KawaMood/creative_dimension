# Args
#   stop_at_first: boolean
#       If true, the process stops as soon as a block is found
#   distance: int
#       The distance the process should check blocks, drawing a volume of (d*2)*(d*2)*(d*2) blocks from the center
#   block: string
#       Id or tag of the block to find
#   nbt: empty string or entry
#       Optinal data of the block entity to find
#   callback: string
#       Command to run at the found block location

# Example:
data modify storage pk:common package.search_block.args set value {distance:5,block:"#pk_cr_di:player_heads",nbt:"",callback:"setblock ~ ~ ~ stone",stop_at_first:true}
function pk_cr_di:packages/search_block/start with storage pk:common package.search_block.args
# Would search a block matching the tag #pk_cr_di:player_heads in a 10x10x10 area where the current location is the center
# The first found block will be replaced with a stone