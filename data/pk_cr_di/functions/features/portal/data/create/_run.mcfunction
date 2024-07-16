#> pk_cr_di:features/portal/data/create/_run
#
# Create portal's data
#
# @input constructor_args: entry
#       Information to preserve in the new portal
#
# @output storage pk:common output
#   portal: Portal
#       New feature data
#
# @writes storage pk:common constructor_args: null

# Initialize data with default values
data modify storage pk:common output.portal set value {variant:"oak",times_used:0}

# Set data
#   id
function pk_cr_di:features/portal/data/create/set_id
#   owner (if set to 0b in args, will skip)
execute unless data storage pk:common constructor_args{owner:0b} run function pk_cr_di:features/portal/data/create/set_owner
#   location
function pk_cr_di:features/portal/data/create/set_location/_run
#   facing
function pk_cr_di:features/portal/data/create/set_facing
#   created_at_gametime
execute store result storage pk:common output.portal.created_at_gametime int 1 run time query gametime
#   variant
execute if data storage pk:common constructor_args.variant run data modify storage pk:common output.portal.variant set from storage pk:common constructor_args.variant
#   times_used
execute if data storage pk:common constructor_args.times_used run data modify storage pk:common output.portal.times_used set from storage pk:common constructor_args.times_used

# Clear constructor args
data remove storage pk:common constructor_args

# Update database
data modify storage pk:cr_di database.features.portals append from storage pk:common output.portal