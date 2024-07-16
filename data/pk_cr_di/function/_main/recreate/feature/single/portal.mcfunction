#> pk_cr_di:_main/recreate/feature/single/portal

data modify storage pk:common temp.portal set from storage pk:common recreate.feature_single
function pk_cr_di:features/portal/entities/delete_all
setblock ~ ~2 ~ light[level=15]
function pk_cr_di:features/portal/entities/create_all