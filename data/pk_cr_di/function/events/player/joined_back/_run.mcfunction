#> pk_cr_di:events/player/joined_back/_run
# When a player joins back
# @context a player at @s

# Reset score
scoreboard players set @s pk.cr_di.leave_game 0

# Turn player in creative dimension on creative mode
gamemode creative @s[predicate=pk_cr_di:location/dimension/creative_dimension]