#modloaded create tfmg

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.recipe.replacement.type.ModsFilteringRule;
import crafttweaker.api.recipe.replacement.type.NameFilteringRule;

if (<tag:items:lots_of_compat:magnetic_ingots>.elements.length>0) {
    Replacer.create()
        .filter(ModsFilteringRule.of("tfmg"))
        .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <targetingstrategy:crafttweaker:deep>, <item:tfmg:magnetic_ingot> as IIngredient, <tag:items:lots_of_compat:magnetic_ingots> as IIngredient)
        .execute();
}

<recipetype:create:filling>.removeByName(["tfmg:filling/hardened_wood_creosote"]);
<recipetype:create:filling>.addJsonRecipe("create_fill_hardened_wood_creosote_generalized", {
  "type": "create:filling",
  "ingredients": [
    {
      "tag": "minecraft:planks"
    },
    {
      "amount": 200,
      "fluidTag": "forge:creosote"
    }
  ],
  "results": [
    {
      "item": "tfmg:hardened_planks"
    }
  ]
});