#> pk_cr_di:events/player/interacted_with_entity/pot_al_interaction/_run
#
# Rewarded from advancement pk_cr_di:events/player_interacted_with_entity/pot_al_interaction

# Revoke advancement
advancement revoke @s only pk_cr_di:events/player_interacted_with_entity/pot_al_interaction

# Mark the current player
tag @s add pk.current.player

# Retrieve interacted interaction
execute as @e[type=interaction,tag=pk.cr_di.block.pot_al.interaction,distance=..65] if data entity @s interaction at @s run function pk_cr_di:events/player/interacted_with_entity/pot_al_interaction/from_found_interaction

# Unmark the current player
tag @s remove pk.current.player