#  Author: PeerHeer
# 
#  If there is no smoker at the entity, kill the entity. Else, continue.
execute unless block ~ ~ ~ minecraft:smoker run kill @s
execute if block ~ ~ ~ minecraft:smoker run function peerheer.better_smelting:block/checks/check_if_input
