#> pk_cr_di:_main/recreate/stop

# Reset recreateing process score
scoreboard players set $recreate pk.value 0

# Unmark player
tag @s remove pk.recreate

# Logs
tellraw @s [{text: "Recreated all \"",color: "yellow"},{nbt:"recreate.feature_args.feature_id",storage:"pk:common"},{text: "\" features successfully"}]