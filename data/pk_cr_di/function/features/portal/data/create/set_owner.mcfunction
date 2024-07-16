#> pk_cr_di:features/portal/data/create/set_owner
#
# Set owner
#
# @reads storage pk:common constructor_args: object
#       Information to preserve in the new portal
#
# @writes storage pk:common output
#   portal: Portal
#       New feature data

# Try to set from args
data modify storage pk:common output.portal.owner set from storage pk:common constructor_args.owner
#   @return 1 if the data is set
execute if data storage pk:common output.portal.owner run return 1

# @continue Try to set from current entity context's UUID
execute if entity @s run data modify storage pk:common output.portal.owner set from entity @s UUID
#   @return 1 if the data is set
execute if data storage pk:common output.portal.owner run return 1