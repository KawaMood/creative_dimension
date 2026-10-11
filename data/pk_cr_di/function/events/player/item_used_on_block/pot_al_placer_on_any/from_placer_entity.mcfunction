# Store block placer data
data modify storage pk:common temp.block_placer_entity set from entity @s
kill @s

# Try to place the block as the player
execute as @p[tag=pk.current.player] run function pk_cr_di:blocks/pot_al/actions/create/from_placer_entity