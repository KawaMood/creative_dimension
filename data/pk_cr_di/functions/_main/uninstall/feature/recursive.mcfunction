#> pk_cr_di:_main/uninstall/feature/recursive
#
# Recursive call

data remove storage pk:common uninstall.destructive.list[-1]
scoreboard players remove $uninstall.list.length pk.temp 1

# @return Run the callback function if the list is now empty
execute if score $uninstall.list.length pk.temp matches ..0 unless data storage pk:common uninstall.feature_args{callback:""} run return run function pk_cr_di:_main/uninstall/callback with storage pk:common uninstall.feature_args

# Continue
execute if score $uninstall.list.length pk.temp matches 1.. run function pk_cr_di:_main/uninstall/feature/1