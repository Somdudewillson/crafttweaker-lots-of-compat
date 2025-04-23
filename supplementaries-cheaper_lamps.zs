#modloaded supplementaries

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.recipe.replacement.type.ModsFilteringRule;
import crafttweaker.api.recipe.replacement.type.NameFilteringRule;

Replacer.create()
    .filter(ModsFilteringRule.of("supplementaries"))
    .filter(NameFilteringRule.regex(".*lamp.*"))
    .replace<IIngredient>(
        <recipecomponent:crafttweaker:input/ingredients>, 
        <targetingstrategy:crafttweaker:deep>, 
        <item:minecraft:shroomlight> as IIngredient, 
        <item:minecraft:shroomlight> as IIngredient | ContextualConstants.GLOWSTONE_STORAGE_BLOCK
    )
    .execute();