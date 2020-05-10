#  Author: PeerHeer
#  Handle the marking of the furnace block
#  Set found_block to 1 to indicate end of search
scoreboard players set #btrsmlt.entity.found_block peerheer.global 1
#  Summon item frame marker
summon minecraft:item_frame ~ ~ ~ {CustomName:"{\"text\": \"Better Smelting Blast Furnace\", \"color\": \"gray\"}",Facing:1b,Fixed:1b,Invisible:1b,Invulnerable:1b,Silent:1b,ItemDropChance:0.0f,Tags:["trident-component.peerheer.better_smelting.marker_idle","trident-component.peerheer.better_smelting.marker_blast_furnace","trident-entity.peerheer.better_smelting.marker","global.ignore"],Item:{id:"minecraft:stone_button",Count:1b,tag:{InputItem:{},OutputItem:{}}}}
