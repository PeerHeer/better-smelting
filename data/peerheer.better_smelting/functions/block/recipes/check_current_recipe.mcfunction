#  Transfer the current item to the armor stand.
data modify entity @s HandItems[0] set from storage peerheer:better_smelting CurrentEntity.InputItem
#  Reset recipe found score.
scoreboard players set %btrsmlt.block.recipe_found peerheer.global 0
#  TODO: Use a score tree to determine the predicate to execute
#  If the recipe is not correct, check for a new recipe in the list.
execute if score %btrsmlt.block.recipe_found peerheer.global matches 0 run function peerheer.better_smelting:block/recipes/check_recipe_list
#  TODO: if recipe was found, start smelting
execute if score %btrsmlt.block.recipe_found peerheer.global matches 1 run say Start Smelting!
