#> pk_cr_di:entities/player/creative_portal/set_default_location

data modify storage pk:common temp.player_data.location set value {dimension:"pk_cr_di:creative_superflat",x:0,y:0,z:0}
data modify storage pk:common temp.player_data.location merge from storage pk:cr_di settings.creative_superflat_spawnpoint