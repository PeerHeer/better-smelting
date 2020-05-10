#   Author: PeerHeer
#  
#   Checks if there is an input item in the block.
data modify storage peerheer:better_smelting CurrentBlock set from block ~ ~ ~
execute if data storage peerheer:better_smelting CurrentBlock.Items[{Slot:0b}] run function peerheer.better_smelting:block/checks/check_if_burn_time
