# Place marker to portal point coordinates
execute store result entity @s Pos[0] double 1 run scoreboard players get @p[tag=pk_player_leave_dimension] PKDWEnteredPortalX
execute store result entity @s Pos[1] double 1 run scoreboard players get @p[tag=pk_player_leave_dimension] PKDWEnteredPortalY
execute store result entity @s Pos[2] double 1 run scoreboard players get @p[tag=pk_player_leave_dimension] PKDWEnteredPortalZ
# Teleport the player
function pk_cr_di:player/in_creative_dimension/leave/teleport_player_to_portal
# Remove the marker
kill @s