#  Author: PeerHeer
# 
#  Executes on #minecraft:load
#  Check if PeerHeer Utils is installed
schedule function peerheer.better_smelting:load/utils_installed 1t
#  Send user feedback
tellraw @a ["",{"text":"[","color":"dark_green"},{"text":"INFO","color":"green"},{"text":"] ","color":"dark_green"},"Loaded datapack ",{"text":"Better Smelting","color":"yellow","hoverEvent":{"action":"show_text","value":["","Better Smelting","\n","Better Smelting datapack for Minecraft 1.16+ by PeerHeer"]}}]
