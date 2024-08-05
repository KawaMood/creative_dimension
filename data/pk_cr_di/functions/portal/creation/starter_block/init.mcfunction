# Summon the portal marker and init it
summon marker ~0.5 ~ ~0.5 {Tags:["pk_cr_di_portal","pk_amethyst_not_absorbed","pk_in_creation","pk_cr_di_current"]}
execute as @e[type=marker,tag=pk_cr_di_current,distance=..1] at @s run function pk_cr_di:portal/creation/starter_block/init_as_portal_marker