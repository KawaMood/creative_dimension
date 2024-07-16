# Store entered point location 
execute store result score @p[tag=pk_current_player] PKDWEnteredPortalX run data get entity @s Pos[0]
execute store result score @p[tag=pk_current_player] PKDWEnteredPortalY run data get entity @s Pos[1]
execute store result score @p[tag=pk_current_player] PKDWEnteredPortalZ run data get entity @s Pos[2]
scoreboard players set @p[tag=pk_current_player,predicate=pk_crea:dimension/overworld] PKDWEnteredPortalDim 0
scoreboard players set @p[tag=pk_current_player,predicate=pk_crea:dimension/the_nether] PKDWEnteredPortalDim -1
scoreboard players set @p[tag=pk_current_player,predicate=pk_crea:dimension/the_end] PKDWEnteredPortalDim 1

# Set offset depending on portal direction
execute if entity @s[tag=pk_crea_portal_facing_east] run scoreboard players remove @p[tag=pk_current_player] PKDWEnteredPortalX 2
execute if entity @s[tag=pk_crea_portal_facing_north] run scoreboard players remove @p[tag=pk_current_player] PKDWEnteredPortalZ 2
scoreboard players add @p[tag=pk_current_player] PKDWEnteredPortalY 2