#modloaded create supplementaries

import crafttweaker.api.data.IData;
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
import crafttweaker.api.item.ItemStack;

<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("assemble_supplementaries_candy")
 .transitionTo(<item:minecraft:paper>)
 .require(<item:minecraft:paper>)
 .loops(1)
 .addOutput(<item:supplementaries:candy> * 8, 1)
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:sugar>))
 .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:create:honey> * ContextualConstants.fluidAmtFromMb(250))) );

<recipetype:create:emptying>.addRecipe("empty_lumisene_bottle", <item:minecraft:glass_bottle>, <fluid:supplementaries:lumisene> * ContextualConstants.fluidAmtFromMb(250), <item:supplementaries:lumisene_bottle>, 100);
<recipetype:create:filling>.addRecipe("fill_lumisene_bottle", <item:supplementaries:lumisene_bottle>, <item:minecraft:glass_bottle>, <fluid:supplementaries:lumisene> * ContextualConstants.fluidAmtFromMb(250), 100);