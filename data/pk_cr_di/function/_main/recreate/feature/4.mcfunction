#> pk_cr_di:_main/recreate/feature/4
#
# Check if the current's feature location is loaded
# If not, wait two seconds and try again

execute store result score $recreate.is_loaded pk.temp if loaded ~ ~ ~
execute if score $recreate.is_loaded pk.temp matches 1 run function pk_cr_di:_main/recreate/feature/7 with storage pk:common recreate.feature_args
execute if score $recreate.is_loaded pk.temp matches 0 run schedule function pk_cr_di:_main/recreate/feature/5 2s