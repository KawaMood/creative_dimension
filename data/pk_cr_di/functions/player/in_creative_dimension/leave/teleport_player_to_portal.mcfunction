# Teleport player to marker
tp @p[tag=pk_player_leave_dimension] @s
# Teleport the player to the portal
execute as @p[tag=pk_player_leave_dimension,scores={PKDWEnteredPortalDim=0}] at @s in minecraft:overworld positioned as @s run tp @s ~ ~ ~
execute as @p[tag=pk_player_leave_dimension,scores={PKDWEnteredPortalDim=-1}] at @s in minecraft:the_nether positioned as @s run tp @s ~ ~ ~
execute as @p[tag=pk_player_leave_dimension,scores={PKDWEnteredPortalDim=1}] at @s in minecraft:the_end positioned as @s run tp @s ~ ~ ~
# Clear tag and add a tag for waiting animation
tag @p[tag=pk_player_leave_dimension] add pk_cr_di_wait_returning_animation
# Apply animation after teleporation (need to wait for 1 tick)
schedule function pk_cr_di:player/in_creative_dimension/leave/schedule_gateway_returning_animation 1t