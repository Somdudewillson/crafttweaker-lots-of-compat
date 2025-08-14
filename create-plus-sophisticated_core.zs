#modloaded create sophisticatedcore

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.fluid.Fluid;
import crafttweaker.api.item.ItemStack;

<recipetype:create:filling>.addJsonRecipe("fill_experience_bottle_from_sophisticatedcore_xp", {
    "type": "create:filling",
    "ingredients": [
        <item:minecraft:glass_bottle> as IData,
        CreateUtils.convertFluidIngredient(<fluid:sophisticatedcore:xp_still> * ContextualConstants.fluidAmtFromMb(200))
    ],
    "results": [
        CreateUtils.convertItemResult(<item:minecraft:experience_bottle>)
    ]
});