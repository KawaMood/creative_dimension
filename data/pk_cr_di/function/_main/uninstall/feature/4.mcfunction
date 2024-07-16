#> pk_cr_di:_main/uninstall/feature/4
#
# Check if the current's feature location is loaded
# If not, wait two seconds and try again

execute store result score $uninstall.is_loaded pk.temp if loaded ~ ~ ~
execute if score $uninstall.is_loaded pk.temp matches 1 run function pk_cr_di:_main/uninstall/feature/7 with storage pk:common uninstall.feature_args
execute if score $uninstall.is_loaded pk.temp matches 0 run schedule function pk_cr_di:_main/uninstall/feature/5 2s