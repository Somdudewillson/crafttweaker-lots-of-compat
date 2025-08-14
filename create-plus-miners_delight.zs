#priority 9
#modloaded create miners_delight

import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.fluid.Fluid;
import crafttweaker.api.capability.Capabilities;
import crafttweaker.api.capability.ICapabilityProvider;
import crafttweaker.api.item.ItemStack;

<recipetype:create:deploying>.addJsonRecipe("assemble_miners_delight_seasoned_arthropods", {
  "type": "create:deploying",
  "ingredients": [
    <item:miners_delight:weird_caviar> as IData,
    <item:miners_delight:cooked_arthropod> as IData
  ],
  "results": [
    CreateUtils.convertItemResult(<item:miners_delight:seasoned_arthropods>)
  ]
});
<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_vegan_wrap", {
    "type": "create:sequenced_assembly",
    "ingredient": { "item": "minecraft:bread" },
    "transitional_item": { "id": "miners_delight:vegan_wrap" },
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [
                { "item": "miners_delight:vegan_wrap" },
                { "tag": "miners_delight:baked_cave_carrot" }
            ],
            "results": [
                { "item": "miners_delight:vegan_wrap" }
            ]
        },
        {
            "type": "create:deploying",
            "ingredients": [
                { "item": "miners_delight:vegan_wrap" },
                { "item": "minecraft:bread" }
            ],
            "results": [
                { "item": "miners_delight:vegan_wrap" }
            ]
        }
    ],
    "results": [
        { "item": "miners_delight:vegan_wrap" }
    ],
    "loops": 1
});
<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_insect_wrap", {
    "type": "create:sequenced_assembly",
    "ingredient": { "item": "minecraft:bread" },
    "transitional_item": { "id": "miners_delight:insect_wrap" },
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [
                { "item": "miners_delight:insect_wrap" },
                { "tag": "miners_delight:insect_meat" }
            ],
            "results": [
                { "item": "miners_delight:insect_wrap" }
            ]
        }
    ],
    "results": [
        { "item": "miners_delight:insect_wrap" }
    ],
    "loops": 2
});