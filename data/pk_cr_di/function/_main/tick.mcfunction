#> pk_cr_di:_main/tick

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Events
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Players
#   Joined back
execute as @a[scores={pk.cr_di.leave_game=1..}] at @s run function pk_cr_di:events/player/joined_back/_run

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Blocks
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Pot'als
execute as @e[type=marker,tag=pk.cr_di.block.pot_al.controller] at @s run function pk_cr_di:blocks/pot_al/behavior/_tick

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Features
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Creative portals
execute as @e[type=marker,tag=pk.cr_di.feature.portal.controller] at @s run function pk_cr_di:features/portal/behavior/_tick

# ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― 
# Entities
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Players
#   In creative portal
execute as @a[tag=pk.cr_di.in_creative_portal] at @s run function pk_cr_di:entities/player/creative_portal/_tick
#   In creative dimension
execute as @a[tag=pk.cr_di.in_creative_dimension] at @s run function pk_cr_di:entities/player/creative_dimension/_tick