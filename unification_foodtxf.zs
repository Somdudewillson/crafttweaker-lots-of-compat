#priority 5
#modloaded foodtxf

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.recipe.replacement.type.ModsFilteringRule;
import crafttweaker.api.recipe.replacement.type.NameFilteringRule;

Replacer.create()
    .filter(ModsFilteringRule.of(["foodtxf"]))
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <targetingstrategy:crafttweaker:shallow>, <item:foodtxf:rice> as IIngredient, ContextualConstants.RICE as IIngredient)
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <targetingstrategy:crafttweaker:shallow>, <item:foodtxf:dough_ball> as IIngredient, ContextualConstants.DOUGH as IIngredient)
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <targetingstrategy:crafttweaker:shallow>, <item:minecraft:cookie> as IIngredient, <tag:items:lots_of_compat:cookies> as IIngredient)
    .execute();

if (ContextualConstants.DOUGH.elements.length>1) {
    recipes.remove(<item:foodtxf:dough_ball>);
    recipes.remove(<item:foodtxf:mixing_bowl>);
    ContextualConstants.unifiedHideStacks([<item:foodtxf:dough_ball>, <item:foodtxf:mixing_bowl>]);
}