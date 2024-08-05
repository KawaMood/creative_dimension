# Assign rotation
execute if predicate pk_cr_di:portal/lodestone_south_north run tag @s add pk_cr_di_portal_facing_east 
execute if predicate pk_cr_di:portal/lodestone_west_east run tag @s[tag=!pk_cr_di_portal_facing_east] add pk_cr_di_portal_facing_north

# Assign pattern
execute if block ~ ~ ~ oak_sapling run tag @s add pk_cr_di_portal_oak
execute if block ~ ~ ~ dark_oak_sapling run tag @s add pk_cr_di_portal_dark_oak
execute if block ~ ~ ~ birch_sapling run tag @s add pk_cr_di_portal_birch
execute if block ~ ~ ~ warped_fungus run tag @s add pk_cr_di_portal_warped_stem
execute if block ~ ~ ~ crimson_fungus run tag @s add pk_cr_di_portal_crimson_stem

# Add the animation delay to the portal marker
scoreboard players set @s PKDelay 80

# Remove the current tag
tag @s remove pk_cr_di_current

# Sound animation
playsound block.beacon.activate master @a ~ ~ ~ 1 0.4