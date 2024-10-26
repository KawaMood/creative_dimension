#> pk_cr_di:entities/player/data/restore/health/_run

execute store result storage pk:common temp.health_args.max_health int 1 run attribute @s max_health base get
data modify storage pk:common temp.health_args.health set from storage pk:common temp.player_data.health
function pk_cr_di:entities/player/data/restore/health/with_args with storage pk:common temp.health_args