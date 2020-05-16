#   Author: PeerHeer
#  
#   Checks if the block has any fuel left.
scoreboard players set %btrsmlt.block.checks.has_fuel peerheer.global 0
execute if data storage peerheer:better_smelting CurrentBlock.Items[{Slot:1b}] unless data storage peerheer:better_smelting CurrentBlock.Items[{Slot:1b,id:"minecraft:bucket"}] run scoreboard players set %btrsmlt.block.checks.has_fuel peerheer.global 1
execute if score %btrsmlt.block.checks.has_fuel peerheer.global matches 1 run function peerheer.better_smelting:block/checks/check_if_items_changed
#     unless score $hasFuel $globalObjective matches 1 function /../change_cook_time
