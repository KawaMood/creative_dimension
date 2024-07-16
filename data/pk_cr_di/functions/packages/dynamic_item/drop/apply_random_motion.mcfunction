#> pk_cr_di:packages/dynamic_item/drop/apply_random_motion

# Set a random motion from -0.1d to 0.1d for X and Z axis Motion
execute store result storage pk:common package.dynamic_item.args.entity_data.Motion[0] double 0.01 run random value -10..10
execute store result storage pk:common package.dynamic_item.args.entity_data.Motion[1] double 0.01 run random value 10..14
execute store result storage pk:common package.dynamic_item.args.entity_data.Motion[2] double 0.01 run random value -10..10