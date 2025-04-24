#modloaded create sophisticatedcore

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.fluid.Fluid;
import crafttweaker.api.item.ItemStack;

<recipetype:create:filling>.addRecipe("fill_experience_bottle_from_sophisticatedcore_xp", <item:minecraft:experience_bottle>, <item:minecraft:glass_bottle>, <fluid:sophisticatedcore:xp_still> * ContextualConstants.fluidAmtFromMb(200), 100);
<recipetype:create:mixing>.addJsonRecipe("create_mix_crystallize_experience_nugget_from_sophisticatedcore_xp", {
  "type": "create:mixing",
  "ingredients": [
    (<fluid:sophisticatedcore:xp_still> * ContextualConstants.fluidAmtFromMb(60)) as IData,
    (<item:create:experience_nugget>) as IData,
  ],
  "results": [
    (<item:create:experience_nugget> * 2) as IData
  ]
});