#> pk_cr_di:features/portal/data/create/set_location/_run
#
# Set location
#
# @reads storage pk:common constructor_args: object
#       Information to preserve in the new portal
#
# @writes storage pk:common output
#   portal: Portal
#       New feature data

# Try to set from args
data modify storage pk:common output.portal.location.x set from storage pk:common constructor_args.location.x
data modify storage pk:common output.portal.location.y set from storage pk:common constructor_args.location.y
data modify storage pk:common output.portal.location.z set from storage pk:common constructor_args.location.z
data modify storage pk:common output.portal.location.dimension set from storage pk:common constructor_args.location.dimension
#   @return 1 if all data are set
execute if data storage pk:common output.portal.location.x if data storage pk:common output.portal.location.y if data storage pk:common output.portal.location.z if data storage pk:common output.portal.location.dimension run return 1

# @continue Set from current location context
execute summon marker run function pk_cr_di:features/portal/data/create/set_location/coordinates_from_context
execute positioned -30000000 0 1600 summon piglin_brute run function pk_cr_di:features/portal/data/create/set_location/dimension_from_context