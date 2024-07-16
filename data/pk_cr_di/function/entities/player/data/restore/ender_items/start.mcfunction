#> pk_cr_di:entities/player/data/restore/ender_items/start

scoreboard players set $slot pk.temp 0
data modify storage pk:common temp.single_args.subpath set value "ender_items"
data modify storage pk:common temp.single_args.slot set value 0
function pk_cr_di:entities/player/data/restore/ender_items/recursive with storage pk:common temp.single_args