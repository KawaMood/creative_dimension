#> pk_cr_di:blocks/pot_al/data/create/set_location/_run
#
# Set location
#
# @reads storage pk:common constructor_args: object
#       Information to preserve in the new pot'al
#
# @writes storage pk:common output
#   pot'al: Pot_al
#       New custom block data

# Try to set from args
data modify storage pk:common output.pot_al.location.x set from storage pk:common constructor_args.location.x
data modify storage pk:common output.pot_al.location.y set from storage pk:common constructor_args.location.y
data modify storage pk:common output.pot_al.location.z set from storage pk:common constructor_args.location.z
data modify storage pk:common output.pot_al.location.dimension set from storage pk:common constructor_args.location.dimension
#   @return 1 if all data are set
execute if data storage pk:common output.pot_al.location.x if data storage pk:common output.pot_al.location.y if data storage pk:common output.pot_al.location.z if data storage pk:common output.pot_al.location.dimension run return 1

# @continue Set from current location context
execute summon marker run function pk_cr_di:blocks/pot_al/data/create/set_location/coordinates_from_context
execute positioned -30000000 0 1600 summon piglin_brute run function pk_cr_di:blocks/pot_al/data/create/set_location/dimension_from_context