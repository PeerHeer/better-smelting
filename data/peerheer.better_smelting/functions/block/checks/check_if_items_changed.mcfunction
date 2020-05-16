#  Author: PeerHeer
# 
#  Check if input or output items changed
#  Reset scores
scoreboard players set %btrsmlt.block.changed.input peerheer.global 0
scoreboard players set %btrsmlt.block.changed.output peerheer.global 0
#  Transfer entity data to storage
data modify storage peerheer:better_smelting CurrentEntity set from entity @s Item.tag
#  Check if input item changed
execute store result score %btrsmlt.block.changed.input peerheer.global run data modify storage peerheer:better_smelting CurrentEntity.InputItem set from storage peerheer:better_smelting CurrentBlock.Items[{Slot:0b}]
#  Check if output item count changed
execute store result score %btrsmlt.block.count.output peerheer.global run data get storage peerheer:better_smelting CurrentBlock.Items[{Slot:2b}].Count
execute store result score %btrsmlt.entity.count.output peerheer.global run data get storage peerheer:better_smelting CurrentEntity.OutputItem.Count
#  TODO: move this into a score?
execute unless score %btrsmlt.block.count.output peerheer.global = %btrsmlt.entity.count.output peerheer.global run scoreboard players set %btrsmlt.block.changed.output peerheer.global 1
#  Change entity input and output items
data modify storage peerheer:better_smelting CurrentEntity.OutputItem set from storage peerheer:better_smelting CurrentBlock.Items[{Slot:2b}]
execute if score %btrsmlt.block.count.output peerheer.global matches 0 run data modify storage peerheer:better_smelting CurrentEntity.OutputItem set value {}
data modify entity @s Item.tag set from storage peerheer:better_smelting CurrentEntity
#  TODO: If input item changed, search for a new recipe
execute if score %btrsmlt.block.changed.input peerheer.global matches 1 as 9235d322-727a-47da-8240-3ba3b1ec2502 run function peerheer.better_smelting:block/recipes/check_current_recipe
#  TODO: If output count changed and not idle, compare to the output count of the current recipe. If it does not fit, idle
execute if score %btrsmlt.block.changed.output peerheer.global matches 1 run say Output item changed!
