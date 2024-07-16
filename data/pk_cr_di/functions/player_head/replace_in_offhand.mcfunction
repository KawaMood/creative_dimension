summon armor_stand -30000000 11 1600 {Tags:["pk_crea_output_holder"],HandItems:[{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;16,11,1,1],Properties:{textures:[{Value:""}]}}}},{}]}
data modify entity @e[type=armor_stand,tag=pk_crea_output_holder,limit=1] HandItems[0].tag.SkullOwner.Properties.textures[0].Value set from entity @s Inventory[{Slot:-106b}].tag.pages[0]
item replace entity @s weapon.offhand from entity @e[type=armor_stand,tag=pk_crea_output_holder,limit=1] weapon.mainhand
kill @e[type=armor_stand,tag=pk_crea_output_holder]