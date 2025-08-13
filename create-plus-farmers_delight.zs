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
    "transitionalItem": { "item": "farmersdelight:pie_crust" },
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "minecraft:apple" }],
            "results": [{ "item": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "minecraft:sugar" }],
            "results": [{ "item": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "minecraft:apple" }],
            "results": [{ "item": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "minecraft:sugar" }],
            "results": [{ "item": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "minecraft:apple" }],
            "results": [{ "item": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "tag": ContextualConstants.FLOUR.tag }],
            "results": [{ "item": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "tag": ContextualConstants.FLOUR.tag }],
            "results": [{ "item": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "tag": ContextualConstants.FLOUR.tag }],
            "results": [{ "item": "farmersdelight:pie_crust" }]
        }
    ],
    "results": [
        { "item": "farmersdelight:apple_pie" }
    ],
    "loops": 1
});

<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_berry_cheesecake", {
    "type": "create:sequenced_assembly",
    "ingredient": { "item": "farmersdelight:pie_crust" },
    "transitionalItem": { "item": "farmersdelight:pie_crust" },
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "minecraft:sweet_berries" }],
            "results": [{ "item": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "minecraft:sweet_berries" }],
            "results": [{ "item": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "minecraft:sweet_berries" }],
            "results": [{ "item": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:filling",
            "ingredients": [
                { "item": "farmersdelight:pie_crust" },
                { "fluid": ContextualConstants.MILK_FLUID.id, "amount": 250 }
            ],
            "results": [
                { "item": "farmersdelight:pie_crust" }
            ]
        }
    ],
    "results": [
        { "item": "farmersdelight:sweet_berry_cheesecake" }
    ],
    "loops": 2
});

<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_pumpkin_pie", {
    "type": "create:sequenced_assembly",
    "ingredient": { "item": "farmersdelight:pie_crust" },
    "transitionalItem": { "item": "farmersdelight:pie_crust" },
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "farmersdelight:pumpkin_slice" }],
            "results": [{ "item": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "farmersdelight:pumpkin_slice" }],
            "results": [{ "item": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "farmersdelight:pumpkin_slice" }],
            "results": [{ "item": "farmersdelight:pie_crust" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:pie_crust" }, { "item": "minecraft:sugar" }],
            "results": [{ "item": "farmersdelight:pie_crust" }]
        }
    ],
    "results": [
        { "item": "minecraft:pumpkin_pie" }
    ],
    "loops": 2
});


<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_cod_rolls", {
    "type": "create:sequenced_assembly",
    "ingredient": { "item": "farmersdelight:cooked_rice" },
    "transitionalItem": { "item": "farmersdelight:cooked_rice" },
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:cooked_rice" }, { "item": "farmersdelight:cod_slice" }],
            "results": [{ "item": "farmersdelight:cooked_rice" }]
        }
    ],
    "results": [
        { "item": "farmersdelight:cod_roll", "count": 2 }
    ],
    "loops": 2
});
<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_salmon_rolls", {
    "type": "create:sequenced_assembly",
    "ingredient": { "item": "farmersdelight:cooked_rice" },
    "transitionalItem": { "item": "farmersdelight:cooked_rice" },
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:cooked_rice" }, { "item": "farmersdelight:salmon_slice" }],
            "results": [{ "item": "farmersdelight:cooked_rice" }]
        }
    ],
    "results": [
        { "item": "farmersdelight:salmon_roll", "count": 2 }
    ],
    "loops": 2
});
 
<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_mutton_wrap", {
    "type": "create:sequenced_assembly",
    "ingredient": { "item": ContextualConstants.BREAD.items[0].id },
    "transitionalItem": { "item": "farmersdelight:mutton_wrap" },
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:mutton_wrap" }, { "tag": ContextualConstants.CABBAGE.tag }],
            "results": [{ "item": "farmersdelight:mutton_wrap" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:mutton_wrap" }, { "tag": ContextualConstants.COOKED_MUTTON.tag }],
            "results": [{ "item": "farmersdelight:mutton_wrap" }]
        },
        {
            "type": "create:deploying",
            "ingredients": [{ "item": "farmersdelight:mutton_wrap" }, { "tag": ContextualConstants.ONION.tag }],
            "results": [{ "item": "farmersdelight:mutton_wrap" }]
        }
    ],
    "results": [
        { "item": "farmersdelight:mutton_wrap" }
    ],
    "loops": 1
});

<recipetype:create:mixing>.addJsonRecipe("create_mix_farmersdelight_honey_cookie", {
  "type": "create:mixing",
  "ingredients": [
    ((<item:minecraft:wheat> * 1) as IIngredient) as IData,
    ((<item:minecraft:wheat> * 1) as IIngredient) as IData,
    {
      "amount": ContextualConstants.fluidAmtFromMb(250),
      "fluid": "create:honey"
    }
  ],
  "results": [
    (<item:farmersdelight:honey_cookie> * 8) as IData
  ]
});