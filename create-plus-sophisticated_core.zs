#modloaded create sophisticatedcore

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.fluid.Fluid;
import crafttweaker.api.item.ItemStack;

<recipetype:create:filling>.addRecipe("fill_experience_bottle_from_sophisticatedcore_xp", <item:minecraft:experience_bottle>, <item:minecraft:glass_bottle>, <fluid:sophisticatedcore:xp_still> * ContextualConstants.fluidAmtFromMb(200), 100);