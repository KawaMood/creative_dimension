#> pk_cr_di:events/player/interacted_with_entity/pot_al_interaction/from_found_interaction
#
# @context clicked interaction at @s
#   Triggering player is marked with the tag "pk.current.player"

# Remove the interaction data
data remove entity @s interaction

# @return stop execution if in creative dimension
execute if entity @s[predicate=pk_cr_di:location/dimension/creative_dimension] run return run title @a[tag=pk.current.player,distance=..65,limit=1] actionbar {text: "You can't create a creative portal in the creative dimension"}

# Try to swap item
function pk_cr_di:blocks/pot_al/actions/swap_item/_run