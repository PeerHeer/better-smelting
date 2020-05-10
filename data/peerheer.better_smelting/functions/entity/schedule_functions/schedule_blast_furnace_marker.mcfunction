#  Author: PeerHeer
#  Function scheduled every 3 ticks for blast furnace markers.
execute as @e[type=minecraft:item_frame,tag=trident-component.peerheer.better_smelting.marker_blast_furnace,tag=trident-component.peerheer.better_smelting.marker_idle] at @s run function peerheer.better_smelting:block/checks/check_if_block/check_if_blast_furnace
#  Reschedule the function
schedule function peerheer.better_smelting:entity/schedule_functions/schedule_blast_furnace_marker 3t
