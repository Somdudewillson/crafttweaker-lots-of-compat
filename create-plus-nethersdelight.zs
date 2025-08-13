#priority 9
#modloaded create nethersdelight

import mods.create.MixingManager;
import crafttweaker.api.recipe.type.Recipe;
import mods.createtweaker.ProcessingRecipe;
import mods.createtweaker.BasinRecipe;
import mods.createtweaker.MixingRecipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.fluid.Fluid;
import crafttweaker.api.capability.Capabilities;
import crafttweaker.api.capability.ICapabilityProvider;
import crafttweaker.api.item.ItemStack;

<recipetype:create:milling>.addJsonRecipe("milled_strider_meat", {
  "type": "create:milling",
  "ingredients": [
    <item:nethersdelight:strider_slice> as IData
  ],
  "results": [
    (<item:nethersdelight:ground_strider> * 2) as IData,
    (<item:nethersdelight:ground_strider> % 50) as IData
  ],
  "processingTime": 80
});
<recipetype:create:crushing>.addJsonRecipe("crushed_strider_meat", {
  "type": "create:crushing",
  "ingredients": [
    <item:nethersdelight:strider_slice> as IData
  ],
  "results": [
    (<item:nethersdelight:ground_strider> * 2) as IData,
    (<item:nethersdelight:ground_strider> % 75) as IData
  ],
  "processingTime": 20
});