#modloaded handcrafted

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.recipe.replacement.type.ModsFilteringRule;
import crafttweaker.api.recipe.replacement.type.NameFilteringRule;

// Terracotta Pot =====
Replacer.create()
    .filter(ModsFilteringRule.of(["handcrafted"]))
    .filter(NameFilteringRule.regex(".*pot.*"))
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <targetingstrategy:crafttweaker:shallow>, <item:minecraft:gold_block> as IIngredient, ContextualConstants.GOLD_INGOT as IIngredient)
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <targetingstrategy:crafttweaker:shallow>, <item:minecraft:white_glazed_terracotta> as IIngredient, <item:minecraft:white_dye> as IIngredient)
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <targetingstrategy:crafttweaker:shallow>, <item:minecraft:blue_glazed_terracotta> as IIngredient, <item:minecraft:blue_dye> as IIngredient)
    .execute();