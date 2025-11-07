#modloaded blocksyouneed_luna

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.recipe.replacement.type.ModsFilteringRule;
import crafttweaker.api.recipe.replacement.type.NameFilteringRule;

#onlyif modloader forge
craftingTable.removeByName("blocksyouneed_luna:rec_copper_wire_c");
#endif

if (<tag:items:forge:wires/copper>.exists() && <tag:items:forge:wires/copper>.elements.length>1) {
    ContextualConstants.unifiedHideStack(<item:blocksyouneed_luna:copper_wire>);
    craftingTable.remove(<item:blocksyouneed_luna:copper_wire>);
}

Replacer.create()
    .filter(ModsFilteringRule.of(["blocksyouneed_luna"]))
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <targetingstrategy:crafttweaker:shallow>, <item:blocksyouneed_luna:copper_wire> as IIngredient, <tag:items:forge:wires/copper> as IIngredient)
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <targetingstrategy:crafttweaker:shallow>, <item:blocksyouneed_luna:aluminum_ingot> as IIngredient, <tag:items:forge:ingots/aluminum> as IIngredient)
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <targetingstrategy:crafttweaker:shallow>, <item:blocksyouneed_luna:rose_gold_ingot> as IIngredient, <tag:items:forge:ingots/rose_gold> as IIngredient)
    .execute();