#> pk_cr_di:entities/player/data/restore/ender_items/recursive

# Replace item
$data modify storage pk:common temp.single_args.slot_type set value "enderchest.$(slot)"
function pk_cr_di:entities/player/data/restore/inventory/single with storage pk:common temp.single_args

# Recursive call
scoreboard players add $slot pk.temp 1
execute store result storage pk:common temp.single_args.slot int 1 run scoreboard players get $slot pk.temp
execute if score $slot pk.temp matches ..26 run function pk_cr_di:entities/player/data/restore/ender_items/recursive with storage pk:common temp.single_args