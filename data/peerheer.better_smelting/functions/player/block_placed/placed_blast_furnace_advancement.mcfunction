#  Author: PeerHeer
#  Handle the blasting_furnace_placed advancement.
#  Revoke the advancement
advancement revoke @s only peerheer.better_smelting:block_placed/blast_furnace_placed
#  Set found_block to 0 to indicate start of search
scoreboard players set #btrsmlt.entity.found_block peerheer.global 0
#  Start finding the block
function peerheer.better_smelting:player/find_block/blast_furnace/coords0
