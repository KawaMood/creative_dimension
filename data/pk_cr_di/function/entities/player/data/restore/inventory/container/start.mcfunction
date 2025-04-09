#> pk_cr_di:entities/player/data/restore/inventory/container/start

scoreboard players set $slot pk.temp 0
data modify storage pk:common temp.single_args.slot set value 0
function pk_cr_di:entities/player/data/restore/inventory/container/recursive with storage pk:common temp.single_args