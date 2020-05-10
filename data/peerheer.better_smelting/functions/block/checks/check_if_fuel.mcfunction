#   Author: PeerHeer
#  
#   Checks if the block has any fuel left.
scoreboard players set %block.checks.has_fuel peerheer.global 0
execute if data storage peerheer:better_smelting CurrentBlock.Items[{Slot:1b}] unless data storage peerheer:better_smelting CurrentBlock.Items[{Slot:1b,id:"minecraft:bucket"}] run scoreboard players set %block.checks.has_fuel peerheer.global 1
execute if score %block.checks.has_fuel peerheer.global matches 1 run function peerheer.better_smelting:block/checks/check_if_items_changed
execute unless score %block.checks.has_fuel peerheer.global matches 1 run say I don't have Fuel!
