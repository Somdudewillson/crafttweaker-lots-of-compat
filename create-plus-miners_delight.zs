#priority 9
#modloaded create miners_delight

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

<recipetype:create:deploying>.addRecipe(
    "assemble_miners_delight_seasoned_arthropods", 
    <item:miners_delight:weird_caviar>, 
    <item:miners_delight:cooked_arthropod>, 
    [<item:miners_delight:seasoned_arthropods> % 100], 
    false
);
<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("assemble_vegan_wrap")
 .transitionTo(<item:miners_delight:vegan_wrap>)
 .require(ContextualConstants.BREAD)
 .loops(1)
 .addOutput(<item:miners_delight:vegan_wrap>, 1)
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:miners_delight:baked_cave_carrot>))
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(ContextualConstants.BREAD)) );
<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("assemble_insect_wrap")
 .transitionTo(<item:miners_delight:insect_wrap>)
 .require(ContextualConstants.BREAD)
 .loops(2)
 .addOutput(<item:miners_delight:insect_wrap>, 1)
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:miners_delight:insect_meat>)) );