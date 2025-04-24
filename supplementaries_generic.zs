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

craftingTable.addShapeless("lumisene_bottle_and_sand_to_glowstone_dust_manual_only", <item:minecraft:glowstone_dust> * 4, [
    <item:supplementaries:lumisene_bottle>,
    <tag:items:minecraft:sand>,
]);
craftingTable.addShaped("lumisene_bucket_and_sand_to_glowstone_dust", <item:minecraft:glowstone_dust> * 16, [
    [<item:minecraft:air>, <tag:items:minecraft:sand>, <item:minecraft:air>],
    [<tag:items:minecraft:sand>, <item:supplementaries:lumisene_bucket>, <tag:items:minecraft:sand>],
    [<item:minecraft:air>, <tag:items:minecraft:sand>, <item:minecraft:air>],
]);

craftingTable.addShapeless("lumisene_bottle_and_gravel_to_gunpowder_manual_only", <item:minecraft:gunpowder> * 2, [
    <item:supplementaries:lumisene_bottle>,
    ContextualConstants.GRAVEL,
]);
craftingTable.addShaped("lumisene_bucket_and_gravel_to_gunpowder", <item:minecraft:gunpowder> * 8, [
    [<item:minecraft:air>, ContextualConstants.GRAVEL, <item:minecraft:air>],
    [ContextualConstants.GRAVEL, <item:supplementaries:lumisene_bucket>, ContextualConstants.GRAVEL],
    [<item:minecraft:air>, ContextualConstants.GRAVEL, <item:minecraft:air>],
]);

craftingTable.addShapeless("lumisene_bottle_and_ink_sac_to_glow_ink_sac_manual_only", <item:minecraft:glow_ink_sac> * 1, [
    <item:supplementaries:lumisene_bottle>,
    <item:supplementaries:lumisene_bottle>,
    <item:minecraft:ink_sac>,
]);
craftingTable.addShaped("lumisene_bucket_ink_sac_to_glow_ink_sac", <item:minecraft:glow_ink_sac> * 2, [
    [<item:minecraft:air>, <item:minecraft:ink_sac>, <item:minecraft:air>],
    [<item:minecraft:ink_sac>, <item:supplementaries:lumisene_bucket>, <item:minecraft:ink_sac>],
    [<item:minecraft:air>, <item:minecraft:ink_sac>, <item:minecraft:air>],
]);