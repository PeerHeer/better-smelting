#  Author: PeerHeer
# 
#  If there is no blast_furnace at the entity, kill the entity. Else, continue.
execute unless block ~ ~ ~ minecraft:blast_furnace run kill @s
execute if block ~ ~ ~ minecraft:blast_furnace run function peerheer.better_smelting:block/checks/check_if_input
