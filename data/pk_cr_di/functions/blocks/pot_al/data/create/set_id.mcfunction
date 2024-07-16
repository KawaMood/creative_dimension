#> pk_cr_di:blocks/pot_al/data/create/set_id
#
# Set id
#
# @reads storage pk:common constructor_args: object
#       Information to preserve in the new pot'al
#
# @writes storage pk:common output
#   pot'al: Pot_al
#       New custom block data

# Try to set from constructor args
data modify storage pk:common output.pot_al.id set from storage pk:common constructor_args.id
#   @return 1 if id has been correctly set
execute if data storage pk:common output.pot_al.id run return 1

# @continue Set id from next id
scoreboard players add $next pk.custom_block.component.id 1
execute store result storage pk:common output.pot_al.id int 1 run scoreboard players get $next pk.custom_block.component.id