#modloaded alexscaves bigreactors

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.recipe.replacement.type.ModsFilteringRule;
import crafttweaker.api.recipe.replacement.type.NameFilteringRule;

Replacer.create()
    .filter(ModsFilteringRule.of(["alexscaves","modulargolems"]))
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <targetingstrategy:crafttweaker:shallow>, <item:alexscaves:uranium> as IIngredient, <item:alexscaves:uranium> as IIngredient | <tag:item:forge:ingots/uranium>)
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <targetingstrategy:crafttweaker:shallow>, <item:alexscaves:charred_remnant> as IIngredient, <item:alexscaves:charred_remnant> as IIngredient | <tag:item:forge:plates/obsidian> | <tag:item:forge:plates/lead>)
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <targetingstrategy:crafttweaker:shallow>, <item:alexscaves:block_of_uranium> as IIngredient, <tag:item:forge:storage_blocks/uranium> as IIngredient)
    .execute();