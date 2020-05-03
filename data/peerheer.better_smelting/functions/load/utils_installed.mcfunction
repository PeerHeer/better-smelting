#  Author: PeerHeer
# 
#  Check if PeerHeer Utils is installed by calling a function from it.
scoreboard players set #utils.loaded peerheer.global 0
#  Call the function from PeerHeer Utils
function peerheer.utils:is_loaded
#  Print an error if the PeerHeer Utils pack was not found
execute if score #utils.loaded peerheer.global matches 0 run tellraw @a ["",{"text":"[","color":"dark_red"},{"text":"ERROR","color":"red"},{"text":"] ","color":"dark_red"},"You need to install the ",{"text":"PeerHeer Utils","color":"yellow"}," datapack to make ",{"text":"Better Smelting","color":"yellow"}," work!"]
