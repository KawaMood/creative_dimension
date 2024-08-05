setblock -30000000 11 1600 air
setblock -30000000 11 1600 chest

data modify storage pk_cr_di:temp Items set value []
data modify storage pk_cr_di:temp Items set from entity @e[type=marker,tag=pk_cr_di_current_player_data,limit=1] data.Inventory
data modify block -30000000 11 1600 Items set from storage pk_cr_di:temp Items

item replace entity @s hotbar.0 from block -30000000 11 1600 container.0
item replace entity @s hotbar.1 from block -30000000 11 1600 container.1
item replace entity @s hotbar.2 from block -30000000 11 1600 container.2
item replace entity @s hotbar.3 from block -30000000 11 1600 container.3
item replace entity @s hotbar.4 from block -30000000 11 1600 container.4
item replace entity @s hotbar.5 from block -30000000 11 1600 container.5
item replace entity @s hotbar.6 from block -30000000 11 1600 container.6
item replace entity @s hotbar.7 from block -30000000 11 1600 container.7
item replace entity @s hotbar.8 from block -30000000 11 1600 container.8

item replace entity @s inventory.0 from block -30000000 11 1600 container.9
item replace entity @s inventory.1 from block -30000000 11 1600 container.10
item replace entity @s inventory.2 from block -30000000 11 1600 container.11
item replace entity @s inventory.3 from block -30000000 11 1600 container.12
item replace entity @s inventory.4 from block -30000000 11 1600 container.13
item replace entity @s inventory.5 from block -30000000 11 1600 container.14
item replace entity @s inventory.6 from block -30000000 11 1600 container.15
item replace entity @s inventory.7 from block -30000000 11 1600 container.16
item replace entity @s inventory.8 from block -30000000 11 1600 container.17
item replace entity @s inventory.9 from block -30000000 11 1600 container.18
item replace entity @s inventory.10 from block -30000000 11 1600 container.19
item replace entity @s inventory.11 from block -30000000 11 1600 container.20
item replace entity @s inventory.12 from block -30000000 11 1600 container.21
item replace entity @s inventory.13 from block -30000000 11 1600 container.22
item replace entity @s inventory.14 from block -30000000 11 1600 container.23
item replace entity @s inventory.15 from block -30000000 11 1600 container.24
item replace entity @s inventory.16 from block -30000000 11 1600 container.25
item replace entity @s inventory.17 from block -30000000 11 1600 container.26

data remove storage pk_cr_di:temp Items[{Slot:0b}]
data remove storage pk_cr_di:temp Items[{Slot:1b}]
data remove storage pk_cr_di:temp Items[{Slot:2b}]
data remove storage pk_cr_di:temp Items[{Slot:3b}]
data remove storage pk_cr_di:temp Items[{Slot:4b}]
data remove storage pk_cr_di:temp Items[{Slot:5b}]
data remove storage pk_cr_di:temp Items[{Slot:6b}]
data remove storage pk_cr_di:temp Items[{Slot:7b}]
data remove storage pk_cr_di:temp Items[{Slot:8b}]
data remove storage pk_cr_di:temp Items[{Slot:9b}]
data remove storage pk_cr_di:temp Items[{Slot:10b}]
data remove storage pk_cr_di:temp Items[{Slot:11b}]
data remove storage pk_cr_di:temp Items[{Slot:12b}]
data remove storage pk_cr_di:temp Items[{Slot:13b}]

data modify storage pk_cr_di:temp Items[{Slot:27b}].Slot set value 0b
data modify storage pk_cr_di:temp Items[{Slot:28b}].Slot set value 1b
data modify storage pk_cr_di:temp Items[{Slot:29b}].Slot set value 2b
data modify storage pk_cr_di:temp Items[{Slot:30b}].Slot set value 3b
data modify storage pk_cr_di:temp Items[{Slot:31b}].Slot set value 4b
data modify storage pk_cr_di:temp Items[{Slot:32b}].Slot set value 5b
data modify storage pk_cr_di:temp Items[{Slot:33b}].Slot set value 6b
data modify storage pk_cr_di:temp Items[{Slot:34b}].Slot set value 7b
data modify storage pk_cr_di:temp Items[{Slot:35b}].Slot set value 8b
data modify storage pk_cr_di:temp Items[{Slot:100b}].Slot set value 9b
data modify storage pk_cr_di:temp Items[{Slot:101b}].Slot set value 10b
data modify storage pk_cr_di:temp Items[{Slot:102b}].Slot set value 11b
data modify storage pk_cr_di:temp Items[{Slot:103b}].Slot set value 12b
data modify storage pk_cr_di:temp Items[{Slot:-106b}].Slot set value 13b

data modify block -30000000 11 1600 Items set from storage pk_cr_di:temp Items

item replace entity @s inventory.18 from block -30000000 11 1600 container.0
item replace entity @s inventory.19 from block -30000000 11 1600 container.1
item replace entity @s inventory.20 from block -30000000 11 1600 container.2
item replace entity @s inventory.21 from block -30000000 11 1600 container.3
item replace entity @s inventory.22 from block -30000000 11 1600 container.4
item replace entity @s inventory.23 from block -30000000 11 1600 container.5
item replace entity @s inventory.24 from block -30000000 11 1600 container.6
item replace entity @s inventory.25 from block -30000000 11 1600 container.7
item replace entity @s inventory.26 from block -30000000 11 1600 container.8

item replace entity @s armor.feet from block -30000000 11 1600 container.9
item replace entity @s armor.legs from block -30000000 11 1600 container.10
item replace entity @s armor.chest from block -30000000 11 1600 container.11
item replace entity @s armor.head from block -30000000 11 1600 container.12

item replace entity @s weapon.offhand from block -30000000 11 1600 container.13