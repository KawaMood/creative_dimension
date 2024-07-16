#> pk_cr_di:blocks/pot_al/actions/break/from_controller
#
# Break pot'al
#
# @writes temp.pot_al: Pot_al
#       Data of the pot'al
#
# @context pot'al controller at @s

# Define scores
scoreboard players operation $temp pk.custom_block.component.id = @s pk.custom_block.component.id

# Search pot'al data of the current controller
function pk_cr_di:blocks/pot_al/data/search/from_score

# Drop the stored items
execute if data storage pk:common temp.pot_al.item.id run function pk_cr_di:blocks/pot_al/actions/break/loot_item

# Check if the pot'al has been removed too quickly
#   Used for Worldguard compatibility
function pk_cr_di:blocks/pot_al/actions/break/should_loot_itself

# Delete pot'al
function pk_cr_di:blocks/pot_al/actions/delete/_run

# Animations
playsound block.decorated_pot.break block @a[x=0] ~ ~ ~