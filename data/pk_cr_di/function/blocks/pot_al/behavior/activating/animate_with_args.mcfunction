#> pk_cr_di:blocks/pot_al/behavior/activating/animate_with_args

$execute if entity @s[scores={pk.cr_di.pot_al.activating.timer=..9}] positioned ^ ^ ^0.75 run particle end_rod ~ ~0.0$(y_offset) ~ 0 0 0 0 1
$execute if entity @s[scores={pk.cr_di.pot_al.activating.timer=10..}] positioned ^ ^ ^0.75 run particle end_rod ~ ~0.$(y_offset) ~ 0 0 0 0 1