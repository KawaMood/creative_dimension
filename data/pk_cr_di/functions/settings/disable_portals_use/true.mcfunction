#> pk_waystones:settings/hide_coordinates/true

# Cancel process if setting is already set on the attempted value
execute if score $pk.cr_di.settings.disable_portals_use pk.value matches 1 run tellraw @s [{"text":"Setting \"","color":"red"},{"text":"Disable Portals Use","color":"yellow"},{"text":"\" is already set to ","color":"red"},{"text":"true","color":"yellow"}]
execute unless score $pk.cr_di.settings.disable_portals_use pk.value matches 1 run tellraw @s [{"text":"Setting \"","color":"gray"},{"text":"Disable Portals Use","color":"yellow"},{"text":"\" has been set to ","color":"gray"},{"text":"true","color":"yellow"}]

# Update the setting's value
scoreboard players set $pk.cr_di.settings.disable_portals_use pk.value 1