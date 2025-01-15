#priority -5
#modloaded jaopca

#onlyif modloaded create tfmg
// Create: The Factory Must Grow adds a different pressing recipe for their plastic ingot
<recipetype:create:pressing>.removeByName("jaopca:create.material_to_plate.plastic");
#endif

//TODO: Investigate making this automatic use check work.
// Probably best way to do this is to build a recipe graph from jaopca-added items and identify if they have any non-jaopca leaf nodes.

// import crafttweaker.api.mod.Mod;
// import crafttweaker.api.mod.Mods;
// import crafttweaker.api.item.IItemStack;
// import crafttweaker.api.recipe.IRecipeManager;
// import crafttweaker.api.GenericRecipesManager;
// import crafttweaker.api.recipe.type.Recipe;
// import crafttweaker.api.world.Container;
// import mods.jeitweaker.Jei;

// var itemsToCheck = new stdlib.List<IItemStack>();
// for item in loadedMods["jaopca"].getItemStacks() {
//     itemsToCheck.add(item);
// }

// var allValidRecipes = new stdlib.List<Recipe<Container>>();
// for recipeToFilter in (recipes.getAllRecipes() as stdlib.List<Recipe<Container>>) {
//     var recipeId = recipeToFilter.getId() as string;
//     if ("jaopca" in recipeId) {
//         continue;
//     }
//     if (recipeToFilter.getIngredients().length == 0) {
//         continue;
//     }
//     allValidRecipes.add(recipeToFilter);
// }

// var itemsToRemove = new stdlib.List<IItemStack>();
// for itemToCheck in itemsToCheck {
//     if (itemToCheck in <tag:items:forge:storage_blocks> || itemToCheck in <tag:items:forge:storage_blocks/raw>) {
//         continue;
//     }

//     var foundUsefulRecipe = false;
//     for recipeToCheck in allValidRecipes {
//         for ingredient in recipeToCheck.getIngredients() {
//             if (itemToCheck in ingredient) {
//                 foundUsefulRecipe = true;
//                 break;
//             }
//         }

//         if (foundUsefulRecipe) { break; }
//     }
//     if (!foundUsefulRecipe) {
//         itemsToRemove.add(itemToCheck);
//     }
// }

// for itemToRemove in itemsToRemove {
//     recipes.remove(itemToRemove);
//     recipes.removeByInput(itemToRemove);
//     Jei.hideIngredient(itemToRemove);
// }