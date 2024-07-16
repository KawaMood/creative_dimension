#> pk_cr_di:blocks/pot_al/actions/delete/_run
#
# Remove pot'al without running animation or looting it
#
# @context pot'al controller at @s

# Define scores
scoreboard players operation $temp pk.custom_block.component.id = @s pk.custom_block.component.id

# Search from the database
function pk_cr_di:blocks/pot_al/data/search/from_score

# Delete from the database
function pk_cr_di:blocks/pot_al/data/delete/from_score

# Remove blocks
function pk_cr_di:blocks/pot_al/blocks/delete

# Remove entities
function pk_cr_di:blocks/pot_al/entities/delete_all