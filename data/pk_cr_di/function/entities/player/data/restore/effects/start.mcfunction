#> pk_cr_di:entities/player/data/restore/effects/start

data remove storage pk:common temp.destructive.active_effects
data modify storage pk:common temp.destructive.active_effects set from storage pk:common temp.player_data.active_effects
execute if data storage pk:common temp.destructive.active_effects[-1] run function pk_cr_di:entities/player/data/restore/effects/recursive