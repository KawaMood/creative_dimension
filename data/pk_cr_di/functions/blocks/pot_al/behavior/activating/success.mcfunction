#> pk_cr_di:blocks/pot_al/behavior/activating/success
#
# Activate
#
# @writes pk:common temp
#   pot_al: Pot_al
#       Data of the current pot'al
#
# @writes pk:common constructor_args   
#       Args used to create the portal
#
# @context the controller of a pot'al at @s

scoreboard players operation $temp pk.custom_block.component.id = @s pk.custom_block.component.id

# Search pot'al data of the current controller
function pk_cr_di:blocks/pot_al/data/search/from_score

# Define args for portal creation
#   owner
data modify storage pk:common constructor_args.owner set from storage pk:common temp.pot_al.owner
#   facing
data modify storage pk:common constructor_args.facing set from storage pk:common temp.pot_al.facing
#   variant
execute if data storage pk:common temp.pot_al.item{id:"minecraft:oak_sapling"} run data modify storage pk:common constructor_args.variant set value "oak"
execute if data storage pk:common temp.pot_al.item{id:"minecraft:birch_sapling"} run data modify storage pk:common constructor_args.variant set value "birch"
execute if data storage pk:common temp.pot_al.item{id:"minecraft:dark_oak_sapling"} run data modify storage pk:common constructor_args.variant set value "dark_oak"
execute if data storage pk:common temp.pot_al.item{id:"minecraft:warped_fungus"} run data modify storage pk:common constructor_args.variant set value "warped"
execute if data storage pk:common temp.pot_al.item{id:"minecraft:crimson_fungus"} run data modify storage pk:common constructor_args.variant set value "crimson"

# Remove pot'al block
function pk_cr_di:blocks/pot_al/actions/delete/_run

# Create portal feature
function pk_cr_di:features/portal/actions/create/from_pot_al

# Animations
playsound entity.lightning_bolt.thunder block @a[x=0] ~ ~ ~ 20 1.8
playsound block.beacon.power_select block @a[x=0] ~ ~ ~ 20 1.2
particle enchant ~ ~2 ~ 2 2 2 0 20
particle spore_blossom_air ~ ~2 ~ 1 1 1 0.1 100
particle explosion_emitter ~ ~2 ~ 1 1 1 0.1 1