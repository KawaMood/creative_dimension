# Remove in creation tag
tag @s remove pk_in_creation

# Create portal
# - Create with default data (oak pattern, facing east)
setblock ~ ~ ~ structure_block[mode=load]{name:"pk_cr_di:portals/oak",posX:-3,posY:-4,posZ:-3,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
# - Change facing to north if needed
execute if entity @s[tag=pk_cr_di_portal_facing_north] run data merge block ~ ~ ~ {posX:3,rotation:"CLOCKWISE_90"}
# - Change pattern if needed
execute if entity @s[tag=pk_cr_di_portal_dark_oak] run data modify block ~ ~ ~ name set value "pk_cr_di:portals/dark_oak"
execute if entity @s[tag=pk_cr_di_portal_birch] run data modify block ~ ~ ~ name set value "pk_cr_di:portals/birch"
execute if entity @s[tag=pk_cr_di_portal_crimson_stem] run data modify block ~ ~ ~ name set value "pk_cr_di:portals/crimson_stem"
execute if entity @s[tag=pk_cr_di_portal_warped_stem] run data modify block ~ ~ ~ name set value "pk_cr_di:portals/warped_stem"
# - Set redstone block below
setblock ~ ~-1 ~ redstone_block

# Animations
particle explosion ~ ~3 ~ 2 2 2 1 10
particle enchant ~ ~3 ~ 2 2 2 0.01 100
playsound block.azalea.place master @a ~ ~ ~ 10 0.4
playsound block.beacon.power_select master @a ~ ~ ~ 10 0.4