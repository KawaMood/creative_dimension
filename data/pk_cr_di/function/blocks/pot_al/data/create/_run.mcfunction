#> pk_cr_di:blocks/pot_al/data/create/_run
#
# Create pot'al's data
#
# @input constructor_args: object
#       Information to preserve in the new pot'al
#
# @output storage pk:common output
#   pot_al: Pot_al
#       New custom block data
#
# @writes storage pk:common constructor_args: null

# Initialize data with default values
data modify storage pk:common output.pot_al set value {item:{}}

# Set data
#   id
function pk_cr_di:blocks/pot_al/data/create/set_id
#   owner (if set to 0b in args, will skip)
execute unless data storage pk:common constructor_args{owner:0b} run function pk_cr_di:blocks/pot_al/data/create/set_owner
#   location
function pk_cr_di:blocks/pot_al/data/create/set_location/_run
#   facing
function pk_cr_di:blocks/pot_al/data/create/set_facing
#   created_at_gametime
execute store result storage pk:common output.pot_al.created_at_gametime int 1 run time query gametime
#   item
execute if data storage pk:common constructor_args.item run data modify storage pk:common output.pot_al.item set from storage pk:common constructor_args.item

# Clear constructor args
data remove storage pk:common constructor_args

# Update database
data modify storage pk:cr_di database.blocks.pot_als append from storage pk:common output.pot_al