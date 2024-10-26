#> pk_cr_di:entities/player/data/restore/health/with_args

$attribute @s max_health base set $(health)
effect give @s health_boost 1 0 true
effect clear @s health_boost
$attribute @s max_health base set $(max_health)