#modloaded supplementaries

import crafttweaker.api.data.IData;
import crafttweaker.api.world.Container;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.fluid.Fluid;
import crafttweaker.api.item.ItemStack;

((<item:supplementaries:lumisene_bottle> as IIngredient).getRemainingItem(<item:minecraft:glass_bottle>) as IIngredient).burnTime = 100000/4;
((<item:supplementaries:lumisene_bucket> as IIngredient).getRemainingItem(<item:minecraft:bucket>) as IIngredient).burnTime = 100000;