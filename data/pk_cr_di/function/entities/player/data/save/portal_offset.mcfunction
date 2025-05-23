# Save location with an offset if the player is in a portal
#   This avoid for the player to remain stuck in a loop on server if the packets aren't sent fast enough to load the entities around them

data remove storage pk:common temp.controller
data modify storage pk:common temp.controller set from entity @s
execute store result score $x pk.temp run data get storage pk:common temp.controller.Pos[0]
execute store result score $y pk.temp run data get storage pk:common temp.controller.Pos[1]
execute store result score $z pk.temp run data get storage pk:common temp.controller.Pos[2]

execute if entity @s[tag=pk.cr_di.facing.west] run scoreboard players remove $x pk.temp 1
execute if entity @s[tag=pk.cr_di.facing.east] run scoreboard players add $x pk.temp 1
execute if entity @s[tag=pk.cr_di.facing.south] run scoreboard players remove $z pk.temp 1
execute if entity @s[tag=pk.cr_di.facing.north] run scoreboard players add $z pk.temp 1

execute if score $x pk.temp matches ..-1 run scoreboard players add $x pk.temp 1
execute if score $z pk.temp matches ..-1 run scoreboard players add $z pk.temp 1

scoreboard players add $y pk.temp 1

execute store result storage pk:common temp.player_data.location.x int 1 run scoreboard players get $x pk.temp
execute store result storage pk:common temp.player_data.location.y int 1 run scoreboard players get $y pk.temp
execute store result storage pk:common temp.player_data.location.z int 1 run scoreboard players get $z pk.temp