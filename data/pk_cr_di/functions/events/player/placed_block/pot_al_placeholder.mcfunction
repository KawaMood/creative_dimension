#> pk_cr_di:events/player/placed_block/pot_al_placeholder
#
# Rewarded from advancement pk_cr_di:events/placed_block/pot_al_placeholder

# Revoke advancement
advancement revoke @s only pk_cr_di:events/placed_block/pot_al_placeholder

# Mark the current player
tag @s add pk.current.player

# Store item data the player used to place the Pot'al and tell the process it has been placed by a player
data modify storage pk:common temp.item set from entity @s SelectedItem

# Search the placed block
data modify storage pk:common package.search_block.args set value {distance:10,block:"#pk_cr_di:player_heads",nbt:{components:{"minecraft:custom_data":{pk_data:{custom_block:1b,id:"pot_al",from:"creative_dimension"}}}},callback:"function pk_cr_di:blocks/pot_al/actions/create/from_placeholder",stop_at_first:true}
function pk_cr_di:packages/search_block/start with storage pk:common package.search_block.args

# Unmark the current player
tag @s remove pk.current.player