#> pk_cr_di:_main/recreate/feature/3
#
# Check if the location of the current feature is loaded

execute store result score $recreate.is_forceloaded pk.temp run forceload query ~ ~
execute if score $recreate.is_forceloaded pk.temp matches 0 run forceload add ~ ~

function pk_cr_di:_main/recreate/feature/4