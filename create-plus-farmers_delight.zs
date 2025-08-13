#priority 9
#modloaded create farmersdelight

import crafttweaker.api.data.IData;
import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.fluid.Fluid;
import crafttweaker.api.item.ItemStack;

<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_apple_pie", {
    "type": "create:sequenced_assembly",
    "ingredient": { "item": "farmersdelight:pie_crust" },
    "transitional_item": { "id": "farmersdelight:pie_crust" },
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "minecraft:apple" }],
            "results": [{ "id": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "minecraft:sugar" }],
            "results": [{ "id": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "minecraft:apple" }],
            "results": [{ "id": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "minecraft:sugar" }],
            "results": [{ "id": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "minecraft:apple" }],
            "results": [{ "id": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, ContextualConstants.FLOUR],
            "results": [{ "id": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, ContextualConstants.FLOUR],
            "results": [{ "id": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, ContextualConstants.FLOUR],
            "results": [{ "id": "farmersdelight:pie_crust" }]
        }
    ],
    "results": [
        { "id": "farmersdelight:apple_pie" }
    ],
    "loops": 1
});

<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_berry_cheesecake", {
    "type": "create:sequenced_assembly",
    "ingredient": { "item": "farmersdelight:pie_crust" },
    "transitional_item": { "id": "farmersdelight:pie_crust" },
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "minecraft:sweet_berries" }],
            "results": [{ "id": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "minecraft:sweet_berries" }],
            "results": [{ "id": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "minecraft:sweet_berries" }],
            "results": [{ "id": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:filling",
            "ingredients": [
                { "item": "farmersdelight:pie_crust" },
                { "type": "fluid_stack", "fluid": ContextualConstants.MILK_FLUID.fluid.registryName, "amount": 250 }
            ],
            "results": [
                { "id": "farmersdelight:pie_crust" }
            ]
        }
    ],
    "results": [
        { "id": "farmersdelight:sweet_berry_cheesecake" }
    ],
    "loops": 2
});

<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_pumpkin_pie", {
    "type": "create:sequenced_assembly",
    "ingredient": { "item": "farmersdelight:pie_crust" },
    "transitional_item": { "id": "farmersdelight:pie_crust" },
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "farmersdelight:pumpkin_slice" }],
            "results": [{ "id": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "farmersdelight:pumpkin_slice" }],
            "results": [{ "id": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "farmersdelight:pumpkin_slice" }],
            "results": [{ "id": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "minecraft:sugar" }],
            "results": [{ "id": "farmersdelight:pie_crust" }]
        }
    ],
    "results": [
        { "id": "minecraft:pumpkin_pie" }
    ],
    "loops": 2
});


<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_cod_rolls", {
    "type": "create:sequenced_assembly",
    "ingredient": { "item": "farmersdelight:cooked_rice" },
    "transitional_item": { "id": "farmersdelight:cooked_rice" },
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:cooked_rice" }, { "item": "farmersdelight:cod_slice" }],
            "results": [{ "id": "farmersdelight:cooked_rice" }]
        }
    ],
    "results": [
        { "id": "farmersdelight:cod_roll", "count": 2 }
    ],
    "loops": 2
});
<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_salmon_rolls", {
    "type": "create:sequenced_assembly",
    "ingredient": { "item": "farmersdelight:cooked_rice" },
    "transitional_item": { "id": "farmersdelight:cooked_rice" },
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:cooked_rice" }, { "item": "farmersdelight:salmon_slice" }],
            "results": [{ "id": "farmersdelight:cooked_rice" }]
        }
    ],
    "results": [
        { "id": "farmersdelight:salmon_roll", "count": 2 }
    ],
    "loops": 2
});
 
<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_mutton_wrap", {
    "type": "create:sequenced_assembly",
    "ingredient": { "item": "minecraft:bread" },
    "transitional_item": { "id": "farmersdelight:mutton_wrap" },
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:mutton_wrap" }, ContextualConstants.CABBAGE],
            "results": [{ "id": "farmersdelight:mutton_wrap" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:mutton_wrap" }, ContextualConstants.COOKED_MUTTON],
            "results": [{ "id": "farmersdelight:mutton_wrap" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:mutton_wrap" }, ContextualConstants.ONION],
            "results": [{ "id": "farmersdelight:mutton_wrap" }]
        }
    ],
    "results": [
        { "id": "farmersdelight:mutton_wrap" }
    ],
    "loops": 1
});

<recipetype:create:mixing>.addJsonRecipe("create_mix_farmersdelight_honey_cookie", {
  "type": "create:mixing",
  "ingredients": [
    Utils.toRecipeJson(<item:minecraft:wheat> * 1),
    Utils.toRecipeJson(<item:minecraft:wheat> * 1),
    {
        "type": "fluid_stack", 
        "amount": ContextualConstants.fluidAmtFromMb(250),
        "fluid": "create:honey"
    }
  ],
  "results": [
    {
        "id": "farmersdelight:honey_cookie",
        "amount": 8
    }
  ]
});