#  Author: PeerHeer
# 
#  If there is no furnace at the entity, kill the entity. Else, continue.
execute unless block ~ ~ ~ minecraft:furnace run kill @s
execute if block ~ ~ ~ minecraft:furnace run function peerheer.better_smelting:block/checks/check_if_input
