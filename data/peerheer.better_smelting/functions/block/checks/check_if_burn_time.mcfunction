#   Author: PeerHeer
#  
#   Checks if the block has any BurnTime left.
scoreboard players set %block.checks.has_burn_time peerheer.global 1
execute if data storage peerheer:better_smelting CurrentBlock{BurnTime:0s} run scoreboard players set %block.checks.has_burn_time peerheer.global 0
execute if score %block.checks.has_burn_time peerheer.global matches 1 run function peerheer.better_smelting:block/checks/check_if_items_changed
execute unless score %block.checks.has_burn_time peerheer.global matches 1 run function peerheer.better_smelting:block/checks/check_if_fuel
