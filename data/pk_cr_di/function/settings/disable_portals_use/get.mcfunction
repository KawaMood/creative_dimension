#> pk_cr_di:settings/hide_coordinates/get

# If true
execute unless score $pk.cr_di.settings.disable_portals_use pk.value matches 0 run tellraw @s [{text:"Setting \"",color:"gray"},{text:"Disable Portals Use",color:"yellow"},{text:"\" is currently set to ",color:"gray"},{text:"true",color:"yellow"}]
# If false
execute if score $pk.cr_di.settings.disable_portals_use pk.value matches 0 run tellraw @s [{text:"Setting \"",color:"gray"},{text:"Disable Portals Use",color:"yellow"},{text:"\" is currently set to ",color:"gray"},{text:"false",color:"yellow"}]