#priority 5
#modloaded farmersdelight

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.recipe.replacement.type.ModsFilteringRule;
import crafttweaker.api.recipe.replacement.type.NameFilteringRule;

if (<tag:items:forge:flour>.exists() && <tag:items:forge:flour>.elements.length>0) {
    Replacer.create()
        .filter(ModsFilteringRule.of(["farmersdelight"]))
        .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <targetingstrategy:crafttweaker:shallow>, <item:minecraft:wheat> as IIngredient, <tag:items:forge:flour> as IIngredient | <item:minecraft:wheat>)
        .execute();
}