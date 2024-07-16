#> pk_cr_di:_main/uninstall/feature/3
#
# Check if the location of the current feature is loaded

execute store result score $uninstall.is_forceloaded pk.temp run forceload query ~ ~
execute if score $uninstall.is_forceloaded pk.temp matches 0 run forceload add ~ ~

function pk_cr_di:_main/uninstall/feature/4