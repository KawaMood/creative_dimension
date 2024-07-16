#> pk_cr_di:features/portal/data/create/set_id
#
# Set id
#
# @reads storage pk:common constructor_args: object
#       Information to preserve in the new portal
#
# @writes storage pk:common output
#   portal: Portal
#       New feature data

# Try to set from constructor args
data modify storage pk:common output.portal.id set from storage pk:common constructor_args.id
#   @return 1 if id has been correctly set
execute if data storage pk:common output.portal.id run return 1

# @continue Set id from next id
scoreboard players add $next pk.feature.component.id 1
execute store result storage pk:common output.portal.id int 1 run scoreboard players get $next pk.feature.component.id