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

<recipetype:create:milling>.addRecipe(
    "milled_strider_meat", 
    Utils.expandItemStackYieldToPercentagedResult(<item:nethersdelight:ground_strider>*2, 1.5*100, true), 
    <item:nethersdelight:strider_slice>, 
    80);
<recipetype:create:crushing>.addRecipe(
    "crushed_strider_meat", 
    Utils.expandItemStackYieldToPercentagedResult(<item:nethersdelight:ground_strider>*2, 1.75*100, true), 
    <item:nethersdelight:strider_slice>, 
    20);