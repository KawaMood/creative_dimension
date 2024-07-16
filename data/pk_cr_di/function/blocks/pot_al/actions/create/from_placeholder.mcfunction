#> pk_cr_di:blocks/pot_al/actions/create/from_placeholder
#
# Place a block from a placeholder placement from a player
#
# @context player who placed the placeholder of the custom block, at the placeholder

# Create data
#   Set pot_al data in: storage pk:common output.pot_al
function pk_cr_di:blocks/pot_al/data/create/_run

# Place blocks and entities from data
data modify storage pk:common temp.pot_al set from storage pk:common output.pot_al
function pk_cr_di:blocks/pot_al/actions/place/_run