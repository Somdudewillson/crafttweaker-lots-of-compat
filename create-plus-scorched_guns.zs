#modloaded create scguns

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.fluid.Fluid;

var SCGUNS_BLUEPRINTS as IItemStack[] = [
    (<item:scguns:copper_blueprint> as IItemStack),
    (<item:scguns:iron_blueprint> as IItemStack),
    (<item:scguns:treated_brass_blueprint> as IItemStack),
    (<item:scguns:diamond_steel_blueprint> as IItemStack),
    (<item:scguns:ocean_blueprint> as IItemStack),
    (<item:scguns:piglin_blueprint> as IItemStack),
    (<item:scguns:deep_dark_blueprint> as IItemStack),
    (<item:scguns:end_blueprint> as IItemStack)
];
var SCGUNS_BLUEPRINT_TYPES as IIngredient[IItemStack] = {
    (<item:scguns:copper_blueprint> as IItemStack): (<tag:items:forge:ingots/copper> as IIngredient),
    (<item:scguns:iron_blueprint> as IItemStack): (ContextualConstants.IRON_INGOT as IIngredient),
    (<item:scguns:treated_brass_blueprint> as IItemStack): (<item:scguns:treated_brass_ingot> as IIngredient),
    (<item:scguns:diamond_steel_blueprint> as IItemStack): (<item:scguns:diamond_steel_ingot> as IIngredient),
    (<item:scguns:ocean_blueprint> as IItemStack): (<tag:items:forge:gems/prismarine> as IIngredient),
    (<item:scguns:piglin_blueprint> as IItemStack): (ContextualConstants.GOLD_INGOT as IIngredient),
    (<item:scguns:deep_dark_blueprint> as IItemStack): (<item:minecraft:echo_shard> as IIngredient),
    (<item:scguns:end_blueprint> as IItemStack): (<item:minecraft:chorus_fruit> as IIngredient)
};
var SCGUNS_BLUEPRINT_TIERS as int[IItemStack] = {
    (<item:scguns:copper_blueprint> as IItemStack): 1,
    (<item:scguns:iron_blueprint> as IItemStack): 1,
    (<item:scguns:treated_brass_blueprint> as IItemStack): 2,
    (<item:scguns:diamond_steel_blueprint> as IItemStack): 2,
    (<item:scguns:ocean_blueprint> as IItemStack): 1,
    (<item:scguns:piglin_blueprint> as IItemStack): 3,
    (<item:scguns:deep_dark_blueprint> as IItemStack): 4,
    (<item:scguns:end_blueprint> as IItemStack): 4
};

var BASE_REPLICATION_FLUID_AMT = 200;
var REPLICATION_FLUIDS as stdlib.List<IFluidStack> = [<fluid:minecraft:lava> as IFluidStack] as IFluidStack[] as stdlib.List<IFluidStack>;
if (<tag:fluids:forge:experience>.exists() && <tag:fluids:forge:experience>.elements.length>0) {
    BASE_REPLICATION_FLUID_AMT = 100;
    REPLICATION_FLUIDS = new stdlib.List<IFluidStack>();
    for xpFluid in <tag:fluids:forge:experience>.elements {
        REPLICATION_FLUIDS.add(xpFluid * 1);
    }
}

for scgunBlueprint, copyingItem in SCGUNS_BLUEPRINT_TYPES {
    <recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("copy_scguns_"+scgunBlueprint.registryName.path)
        .require(scgunBlueprint)
        .transitionTo(scgunBlueprint)
        .loops(2)
        .addOutput(scgunBlueprint * 2, 1)
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:paper>))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(copyingItem))
        .addStep<mods.createtweaker.PressingRecipe>((rb) => rb) );
}

for scgunBlueprint in SCGUNS_BLUEPRINTS {
    var componentMaterial = SCGUNS_BLUEPRINT_TYPES[scgunBlueprint];
    var tier = SCGUNS_BLUEPRINT_TIERS[scgunBlueprint];
    
    var replicationFluidAmount = ContextualConstants.fluidAmtFromMb(BASE_REPLICATION_FLUID_AMT*tier*tier);
    var replicationFluidIngredient = (REPLICATION_FLUIDS[0] * replicationFluidAmount) as FluidIngredient;
    for replicationFluid in REPLICATION_FLUIDS {
        replicationFluidIngredient |= (replicationFluid * replicationFluidAmount) as FluidIngredient;
    }
    <recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("fabricate_scguns_"+scgunBlueprint.registryName.path)
        .require(<tag:items:forge:paper>)
        .transitionTo(<item:minecraft:paper>)
        .loops(4)
        .addOutput(scgunBlueprint, 1)
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(componentMaterial))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forge:paper>))
        .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(replicationFluidIngredient))
        .addStep<mods.createtweaker.PressingRecipe>((rb) => rb) );
}