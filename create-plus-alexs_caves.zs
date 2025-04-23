#modloaded create alexscaves

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;

// Ferrouslime Ball Creation
<recipetype:create:mixing>.addJsonRecipe("create_mix_ferrouslime_ball_from_slime_ball_and_dust", {
  "type": "create:mixing",
  "heatRequirement": "none",
  "ingredients": [
    <tag:items:forge:slimeballs> as IData,
    (<tag:items:create:crushed_raw_materials/iron> as IIngredient | <tag:items:forge:dusts/iron>) as IData
  ],
  "results": [
    {
      "count": 1,
      "item": "alexscaves:ferrouslime_ball"
    }
  ]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_ferrouslime_ball_from_slime_ball_and_ingot", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    <tag:items:forge:slimeballs> as IData,
    ContextualConstants.IRON_INGOT as IData
  ],
  "results": [
    {
      "count": 1,
      "item": "alexscaves:ferrouslime_ball"
    }
  ]
});
if (<tag:fluids:lots_of_compat:liquid_slime>.elements.length > 0) {
    <recipetype:create:mixing>.addJsonRecipe("create_mix_ferrouslime_ball_from_liquid_slime_and_dust", {
        "type": "create:mixing",
        "heatRequirement": "none",
        "ingredients": [
            {
                "fluidTag": "lots_of_compat:liquid_slime",
                "amount": 250
            },
            (<tag:items:create:crushed_raw_materials/iron> as IIngredient | <tag:items:forge:dusts/iron>) as IData
        ],
        "results": [
            {
            "count": 1,
            "item": "alexscaves:ferrouslime_ball"
            }
        ]
    });
    <recipetype:create:mixing>.addJsonRecipe("create_mix_ferrouslime_ball_from_liquid_slime_and_ingot", {
        "type": "create:mixing",
        "heatRequirement": "heated",
        "ingredients": [
            {
                "fluidTag": "lots_of_compat:liquid_slime",
                "amount": 250
            },
            ContextualConstants.IRON_INGOT as IData
        ],
        "results": [
            {
            "count": 1,
            "item": "alexscaves:ferrouslime_ball"
            }
        ]
    });
}

// Filling
<recipetype:create:filling>.addJsonRecipe("create_fill_chocolate_bottle", {
  "type": "create:filling",
  "ingredients": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "amount": 250,
      "fluidTag": "forge:chocolate"
    }
  ],
  "results": [
    {
      "item": "alexscaves:hot_chocolate_bottle"
    }
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_fill_purple_soda_bottle", {
  "type": "create:filling",
  "ingredients": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "amount": 250,
      "fluid": "alexscaves:purple_soda"
    }
  ],
  "results": [
    {
      "item": "alexscaves:purple_soda_bottle"
    }
  ]
});

// Emptying
<recipetype:create:emptying>.addJsonRecipe("create_empty_purple_soda_bottle", {
  "type": "create:emptying",
  "ingredients": [
    {
      "item": "alexscaves:purple_soda_bottle"
    }
  ],
  "results": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "amount": 250,
      "fluid": "alexscaves:purple_soda"
    }
  ]
});

// Mixing
<recipetype:create:mixing>.addJsonRecipe("create_mix_darkened_apple", {
  "type": "create:mixing",
  "heatRequirement": "none",
  "ingredients": [
    <tag:items:forge:fruits/apple> as IData,
    <item:alexscaves:pure_darkness> as IData,
    <item:alexscaves:pure_darkness> as IData,
    <item:alexscaves:pure_darkness> as IData,
    <item:alexscaves:pure_darkness> as IData
  ],
  "results": [
    {
      "count": 1,
      "item": "alexscaves:darkened_apple"
    }
  ]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_polymer_plate", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    (ContextualConstants.IRON_INGOT as IIngredient | <tag:items:forge:dusts/iron>) as IData,
    <tag:items:forge:dusts/sulfur> as IData,
    (<tag:items:forge:ingots/uranium> as IIngredient | <tag:items:forge:dusts/uranium> | <item:alexscaves:uranium>) as IData
  ],
  "results": [
    {
      "count": 3,
      "item": "alexscaves:polymer_plate"
    }
  ]
});