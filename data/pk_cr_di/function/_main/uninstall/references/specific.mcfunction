#> pk_cr_di:_main/uninstall/references/specific

# Clear scores
scoreboard objectives remove pk.cr_di.gametime
scoreboard objectives remove pk.cr_di.pot_al.activating.timer
scoreboard objectives remove pk.cr_di.in_creative_portal.timer
scoreboard objectives remove pk.cr_di.leave_game

# Clear storage
data remove storage pk:cr_di database
data remove storage pk:cr_di settings
data remove storage pk:common installed_datapacks[{id:"creative_dimension"}]