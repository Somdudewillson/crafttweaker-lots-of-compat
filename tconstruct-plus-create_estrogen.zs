#modloaded tconstruct create estrogen

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;

// --- Molten Amethyst Unification ---

<recipetype:create:mixing>.removeByName("estrogen:mixing/molten_amethyst");
<recipetype:create:mixing>.addJsonRecipe("create_mixing/molten_amethyst/from_gem", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    <tag:items:forge:gems/amethyst> as IData
  ],
  "results": [ (<fluid:tconstruct:molten_amethyst> * ContextualConstants.fluidAmtFromMb(100)) as IData ]
});

<recipetype:create:mixing>.removeByName("estrogen:mixing/tinted_glass");
<recipetype:create:mixing>.addJsonRecipe("create_mixing/tinted_glass/from_molten_amethyst", {
  "type": "create:mixing",
  "ingredients": [
    <item:minecraft:glass> as IData,
    (<fluid:tconstruct:molten_amethyst> * ContextualConstants.fluidAmtFromMb(100)) as IData
  ],
  "results": [ <item:minecraft:tinted_glass> as IData ]
});

<recipetype:create:filling>.removeByName("estrogen:filling/crystal_estrogen_pill");
<recipetype:create:filling>.addJsonRecipe("create_filling/crystal_estrogen_pill", {
  "type": "create:filling",
  "ingredients": [
    <item:estrogen:estrogen_pill> as IData,
    (<fluid:tconstruct:molten_amethyst> * ContextualConstants.fluidAmtFromMb(100)) as IData
  ],
  "results": [ <item:estrogen:crystal_estrogen_pill> as IData ]
});