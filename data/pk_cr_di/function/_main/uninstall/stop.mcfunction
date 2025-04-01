#> pk_cr_di:_main/uninstall/stop

# Reset uninstalling process score
scoreboard players set $uninstall pk.value 0

# Unmark player
tag @s remove pk.uninstall

# Logs
tellraw @s [{text: "Uninstalled ",color: "yellow"},{text: "KawaMood's Creative Dimension",color: "aqua",bold: true},{text: " successfully"}]