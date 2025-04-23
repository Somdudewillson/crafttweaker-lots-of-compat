#priority 5
#modloaded farmersdelight

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.recipe.replacement.type.ModsFilteringRule;
import crafttweaker.api.recipe.replacement.type.NameFilteringRule;

Replacer.create()
    .filter(ModsFilteringRule.of(["farmersdelight"]))
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <targetingstrategy:crafttweaker:shallow>, <item:farmersdelight:rice> as IIngredient, ContextualConstants.RICE as IIngredient)
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <targetingstrategy:crafttweaker:shallow>, <item:farmersdelight:wheat_dough> as IIngredient, ContextualConstants.DOUGH as IIngredient)
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <targetingstrategy:crafttweaker:shallow>, <item:minecraft:rotten_flesh> as IIngredient, <tag:items:lots_of_compat:raw_humanoid_flesh> as IIngredient)
    .execute();