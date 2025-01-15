#priority 9
#modloaded create farmersdelight

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


<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("assemble_apple_pie")
 .transitionTo(<item:farmersdelight:pie_crust>)
 .require(<item:farmersdelight:pie_crust>)
 .loops(1)
 .addOutput(<item:farmersdelight:apple_pie>, 1)
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:apple>))
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:sugar>))
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:apple>))
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:sugar>))
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:apple>))
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:flour>))
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:flour>))
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:flour>)) );

<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("assemble_berry_cheesecake")
 .transitionTo(<item:farmersdelight:pie_crust>)
 .require(<item:farmersdelight:pie_crust>)
 .loops(2)
 .addOutput(<item:farmersdelight:sweet_berry_cheesecake>, 1)
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:sweet_berries>))
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:sweet_berries>))
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:sweet_berries>))
 .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:minecraft:milk> * 250)) );

<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("assemble_pumpkin_pie")
 .transitionTo(<item:farmersdelight:pie_crust>)
 .require(<item:farmersdelight:pie_crust>)
 .loops(2)
 .addOutput(<item:minecraft:pumpkin_pie>, 1)
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:farmersdelight:pumpkin_slice>))
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:farmersdelight:pumpkin_slice>))
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:farmersdelight:pumpkin_slice>))
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:sugar>)) );


<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("assemble_cod_rolls")
 .transitionTo(<item:farmersdelight:cooked_rice>)
 .require(<item:farmersdelight:cooked_rice>)
 .loops(2)
 .addOutput(<item:farmersdelight:cod_roll> * 2, 1)
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:farmersdelight:cod_slice>)) );
<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("assemble_salmon_rolls")
 .transitionTo(<item:farmersdelight:cooked_rice>)
 .require(<item:farmersdelight:cooked_rice>)
 .loops(2)
 .addOutput(<item:farmersdelight:salmon_roll> * 2, 1)
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:farmersdelight:salmon_slice>)) );
 
<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("assemble_mutton_wrap")
 .transitionTo(<item:farmersdelight:mutton_wrap>)
 .require(<tag:items:forge:bread>)
 .loops(1)
 .addOutput(<item:farmersdelight:mutton_wrap>, 1)
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:crops/cabbage>))
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:cooked_mutton>))
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:crops/onion>)) );