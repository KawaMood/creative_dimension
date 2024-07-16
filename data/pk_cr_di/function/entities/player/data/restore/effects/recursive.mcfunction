#> pk_cr_di:entities/player/data/restore/effects/recursive
#
# @writes pk:common temp
#   active_effect_args: entry
#       Args used to apply the active effect

# Prepare args
data modify storage pk:common temp.active_effect_args set value {hide_particles:"false"}
#   id and amplifier
data modify storage pk:common temp.active_effect_args merge from storage pk:common temp.destructive.active_effects[-1]
#   hide_particles
execute if data storage pk:common temp.active_effect_args{show_particle:0b} run data modify storage pk:common temp.active_effect_args set value {hide_particles:"true"}
#   duration
#       Convert in seconds if needed
execute unless data storage pk:common temp.active_effect_args{duration:-1} unless data storage pk:common temp.active_effect_args{id:"minecraft:saturation"} unless data storage pk:common temp.active_effect_args{id:"minecraft:instant_damage"} unless data storage pk:common temp.active_effect_args{id:"minecraft:instant_health"} store result storage pk:common temp.active_effect_args.duration int 0.05 run data get storage pk:common temp.active_effect_args.duration
#       Infinite
execute if data storage pk:common temp.active_effect_args{duration:-1} run data modify storage pk:common temp.active_effect_args.duration set value "infinite"

# Apply effect dynamically
function pk_cr_di:entities/player/data/restore/effects/single with storage pk:common temp.active_effect_args

# Recursive call
data remove storage pk:common temp.destructive.active_effects[-1]
execute if data storage pk:common temp.destructive.active_effects[-1] run function pk_cr_di:entities/player/data/restore/effects/recursive