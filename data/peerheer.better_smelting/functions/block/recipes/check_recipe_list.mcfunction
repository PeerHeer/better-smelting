#  TODO: Check the global recipe list, indexed on item ID length AND if it has NBT or not. NBT flag is important to be able to overwrite vanilla recipes.
#  TODO: Check recipes hard-coded so no function tree is required.
#  TODO: If item has a tag, first check all recipes with a tag, then if none were found, all recipes without a tag.
#  Get item ID length
execute store result score %btrsmlt.item.id.length peerheer.global run data get storage peerheer:better_smelting CurrentEntity.InputItem.id
#  Check if item has a tag
execute store result score %btrsmlt.item.has_tag peerheer.global if data storage peerheer:better_smelting CurrentEntity.InputItem.tag
