#> pk_cr_di:events/player/hurt_entity/pot_al_interaction/from_found_interaction
#
# @context clicked interaction at @s
#   Triggering player is marked with the tag "pk.current.player"

# Remove the interaction data
data remove entity @s attack

# Switch actions
#   Break
function pk_cr_di:blocks/pot_al/actions/break/from_interaction
