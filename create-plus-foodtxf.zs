#modloaded create foodtxf

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.IIngredient;

// Thermos =====
<recipetype:create:filling>.addJsonRecipe("create_fill_water_thermos", {
  "type": "create:filling",
  "ingredients": [
    <item:foodtxf:thermos> as IData,
    (<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ],
  "results": [
    <item:foodtxf:water_thermos> as IData
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_fill_lava_thermos", {
  "type": "create:filling",
  "ingredients": [
    <item:foodtxf:thermos> as IData,
    (<fluid:minecraft:lava> * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ],
  "results": [
    <item:foodtxf:lava_thermos> as IData
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_fill_milk_thermos", {
  "type": "create:filling",
  "ingredients": [
    <item:foodtxf:thermos> as IData,
    (ContextualConstants.MILK_FLUID * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ],
  "results": [
    <item:foodtxf:milk_thermos> as IData
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_fill_chocomilk_thermos", {
  "type": "create:filling",
  "ingredients": [
    <item:foodtxf:milk_thermos> as IData,
    (<fluid:create:chocolate> * ContextualConstants.fluidAmtFromMb(333)) as IData
  ],
  "results": [
    <item:foodtxf:chocomilk_thermos> as IData
  ]
});

<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_thermos_of_chocomilk_from_milk", {
    "type": "create:sequenced_assembly",
    "ingredient": { "item": "foodtxf:milk_thermos" },
    "transitionalItem": { "item": "foodtxf:milk_thermos" },
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [
                { "item": "foodtxf:milk_thermos" },
                { "item": "minecraft:cocoa_beans" }
            ],
            "results": [
                { "item": "foodtxf:milk_thermos" }
            ]
        }
    ],
    "results": [
        { "item": "foodtxf:chocomilk_thermos" }
    ],
    "loops": 2
});

<recipetype:create:emptying>.addJsonRecipe("create_empty_foodtxf_water_thermos", {
  "type": "create:emptying",
  "ingredients": [
    (<item:foodtxf:water_thermos> * 1) as IData,
  ],
  "results": [
    (<item:foodtxf:thermos> * 1) as IData,
    (<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ]
});
<recipetype:create:emptying>.addJsonRecipe("create_empty_foodtxf_lava_thermos", {
  "type": "create:emptying",
  "ingredients": [
    (<item:foodtxf:lava_thermos> * 1) as IData,
  ],
  "results": [
    (<item:foodtxf:thermos> * 1) as IData,
    (<fluid:minecraft:lava> * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ]
});
<recipetype:create:emptying>.addJsonRecipe("create_empty_foodtxf_milk_thermos", {
  "type": "create:emptying",
  "ingredients": [
    (<item:foodtxf:milk_thermos> * 1) as IData,
  ],
  "results": [
    (<item:foodtxf:thermos> * 1) as IData,
    (ContextualConstants.MILK_FLUID * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ]
});

// Glass of Fluid =====
<recipetype:create:filling>.addJsonRecipe("create_fill_foodtxf_glass_of_water", {
  "type": "create:filling",
  "ingredients": [
    <item:foodtxf:glass> as IData,
    (<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(333)) as IData
  ],
  "results": [
    <item:foodtxf:glass_of_water> as IData
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_fill_foodtxf_glass_of_lava", {
  "type": "create:filling",
  "ingredients": [
    <item:foodtxf:glass> as IData,
    (<fluid:minecraft:lava> * ContextualConstants.fluidAmtFromMb(333)) as IData
  ],
  "results": [
    <item:foodtxf:glass_of_lava> as IData
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_fill_foodtxf_glass_of_milk", {
  "type": "create:filling",
  "ingredients": [
    <item:foodtxf:glass> as IData,
    (ContextualConstants.MILK_FLUID * ContextualConstants.fluidAmtFromMb(333)) as IData
  ],
  "results": [
    <item:foodtxf:glass_of_milk> as IData
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_fill_foodtxf_glass_of_chocomilk", {
  "type": "create:filling",
  "ingredients": [
    <item:foodtxf:glass_of_milk> as IData,
    (<fluid:create:chocolate> * ContextualConstants.fluidAmtFromMb(111)) as IData
  ],
  "results": [
    <item:foodtxf:glass_of_chocomilk> as IData
  ]
});


<recipetype:create:deploying>.addJsonRecipe("create_deploy_bread_with_glass_of_water", {
  "type": "create:deploying",
  "ingredients": [
    <item:foodtxf:glass_of_water> as IData,
    <item:minecraft:bread> as IData
  ],
  "results": [
    <item:foodtxf:glass_of_water_and_bread> as IData
  ]
});
<recipetype:create:deploying>.addJsonRecipe("create_deploy_toasted_bread_with_glass_of_milk", {
  "type": "create:deploying",
  "ingredients": [
    <item:foodtxf:glass_of_milk> as IData,
    <item:foodtxf:toasted_bread> as IData
  ],
  "results": [
    <item:foodtxf:glass_of_milk_and_toasted_bread> as IData
  ]
});
<recipetype:create:deploying>.addJsonRecipe("create_deploy_toasted_bread_with_glass_of_chocomilk", {
  "type": "create:deploying",
  "ingredients": [
    <item:foodtxf:glass_of_chocomilk> as IData,
    <item:foodtxf:toasted_bread> as IData
  ],
  "results": [
    <item:foodtxf:glass_of_chocomilk_and_toasted_bread> as IData
  ]
});
<recipetype:create:deploying>.addJsonRecipe("create_deploy_cocoa_beans_into_glass_of_milk_and_toasted_bread", {
  "type": "create:deploying",
  "ingredients": [
    <item:foodtxf:glass_of_milk_and_toasted_bread> as IData,
    <item:minecraft:cocoa_beans> as IData
  ],
  "results": [
    <item:foodtxf:glass_of_chocomilk_and_toasted_bread> as IData
  ]
});
<recipetype:create:deploying>.addJsonRecipe("create_deploy_cocoa_beans_into_glass_of_milk_and_cookies", {
  "type": "create:deploying",
  "ingredients": [
    <item:foodtxf:glass_of_milk_and_cookies> as IData,
    <item:minecraft:cocoa_beans> as IData
  ],
  "results": [
    <item:foodtxf:glass_of_chocomilk_and_cookies> as IData
  ]
});

<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_glass_of_milk_and_cookies", {
    "type": "create:sequenced_assembly",
    "ingredient": { "item": "foodtxf:glass_of_milk" },
    "transitionalItem": { "item": "foodtxf:glass_of_milk" },
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [
                { "item": "foodtxf:glass_of_milk" },
                { "tag": "lots_of_compat:cookies" }
            ],
            "results": [
                { "item": "foodtxf:glass_of_milk" }
            ]
        }
    ],
    "results": [
        { "item": "foodtxf:glass_of_milk_and_cookies" }
    ],
    "loops": 2
});
<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_glass_of_chocomilk_and_cookies_from_chocomilk", {
    "type": "create:sequenced_assembly",
    "ingredient": { "item": "foodtxf:glass_of_chocomilk" },
    "transitionalItem": { "item": "foodtxf:glass_of_chocomilk" },
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [
                { "item": "foodtxf:glass_of_chocomilk" },
                { "tag": "lots_of_compat:cookies" }
            ],
            "results": [
                { "item": "foodtxf:glass_of_chocomilk" }
            ]
        }
    ],
    "results": [
        { "item": "foodtxf:glass_of_chocomilk_and_cookies" }
    ],
    "loops": 2
});
<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_glass_of_chocomilk_and_cookies_from_milk", {
    "type": "create:sequenced_assembly",
    "ingredient": { "item": "foodtxf:glass_of_milk" },
    "transitionalItem": { "item": "foodtxf:glass_of_milk" },
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [
                { "item": "foodtxf:glass_of_milk" },
                { "item": "minecraft:cocoa_beans" }
            ],
            "results": [
                { "item": "foodtxf:glass_of_milk" }
            ]
        },
        {
            "type": "create:deploying",
            "ingredients": [
                { "item": "foodtxf:glass_of_milk" },
                { "tag": "lots_of_compat:cookies" }
            ],
            "results": [
                { "item": "foodtxf:glass_of_milk" }
            ]
        },
        {
            "type": "create:deploying",
            "ingredients": [
                { "item": "foodtxf:glass_of_milk" },
                { "tag": "lots_of_compat:cookies" }
            ],
            "results": [
                { "item": "foodtxf:glass_of_milk" }
            ]
        }
    ],
    "results": [
        { "item": "foodtxf:glass_of_chocomilk_and_cookies" }
    ],
    "loops": 1
});

<recipetype:create:mixing>.addJsonRecipe("create_mix_foodtxf_glass_of_fruit_juice", {
  "type": "create:mixing",
  "ingredients": [
    (<item:foodtxf:glass> * 1) as IData,
    (<tag:item:foodtxf:fruits> * 1) as IData,
    (<tag:item:foodtxf:fruits> * 1) as IData
  ],
  "results": [
    (<item:foodtxf:glass_of_fruit_juice> * 1) as IData
  ]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_foodtxf_glass_of_vegetable_juice", {
  "type": "create:mixing",
  "ingredients": [
    (<item:foodtxf:glass> * 1) as IData,
    (<tag:item:foodtxf:vegetables> * 1) as IData,
    (<tag:item:foodtxf:vegetables> * 1) as IData
  ],
  "results": [
    (<item:foodtxf:glass_of_vegetable_juice> * 1) as IData
  ]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_foodtxf_glass_of_mixed_juice", {
  "type": "create:mixing",
  "ingredients": [
    (<item:foodtxf:glass> * 1) as IData,
    (<tag:item:foodtxf:fruits> * 1) as IData,
    (<tag:item:foodtxf:vegetables> * 1) as IData
  ],
  "results": [
    (<item:foodtxf:glass_of_mixed_juice> * 1) as IData
  ]
});

<recipetype:create:emptying>.addJsonRecipe("create_empty_foodtxf_glass_of_water", {
  "type": "create:emptying",
  "ingredients": [
    (<item:foodtxf:glass_of_water> * 1) as IData,
  ],
  "results": [
    (<item:foodtxf:glass> * 1) as IData,
    (<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(333)) as IData
  ]
});
<recipetype:create:emptying>.addJsonRecipe("create_empty_foodtxf_glass_of_lava", {
  "type": "create:emptying",
  "ingredients": [
    (<item:foodtxf:glass_of_lava> * 1) as IData,
  ],
  "results": [
    (<item:foodtxf:glass> * 1) as IData,
    (<fluid:minecraft:lava> * ContextualConstants.fluidAmtFromMb(333)) as IData
  ]
});
<recipetype:create:emptying>.addJsonRecipe("create_empty_foodtxf_glass_of_milk", {
  "type": "create:emptying",
  "ingredients": [
    (<item:foodtxf:glass_of_milk> * 1) as IData,
  ],
  "results": [
    (<item:foodtxf:glass> * 1) as IData,
    (ContextualConstants.MILK_FLUID * ContextualConstants.fluidAmtFromMb(333)) as IData
  ]
});

 // Cheese Sandwich =====
<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_cheese_sandwich", {
    "type": "create:sequenced_assembly",
    "ingredient": { "item": "foodtxf:toasted_bread_slice" },
    "transitionalItem": { "item": "foodtxf:toasted_bread_slice" },
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [
                { "item": "foodtxf:toasted_bread_slice" },
                { "item": "foodtxf:cheese_slice" }
            ],
            "results": [
                { "item": "foodtxf:toasted_bread_slice" }
            ]
        },
        {
            "type": "create:deploying",
            "ingredients": [
                { "item": "foodtxf:toasted_bread_slice" },
                { "item": "foodtxf:toasted_bread_slice" }
            ],
            "results": [
                { "item": "foodtxf:toasted_bread_slice" }
            ]
        }
    ],
    "results": [
        { "item": "foodtxf:cheese_sandwich" }
    ],
    "loops": 1
});

// Empanada =====
<recipetype:create:compacting>.addJsonRecipe("create_compact_raw_cheese_empanada", {
  "type": "create:compacting",
  "ingredients": [
    ContextualConstants.DOUGH as IData,
    <item:foodtxf:cheese_slice> as IData
  ],
  "results": [
    (<item:foodtxf:raw_cheese_empanada> * 1) as IData
  ]
});
<recipetype:create:compacting>.addJsonRecipe("create_compact_raw_meat_empanada", {
  "type": "create:compacting",
  "ingredients": [
    ContextualConstants.DOUGH as IData,
    ContextualConstants.RAW_MEAT as IData
  ],
  "results": [
    (<item:foodtxf:raw_meat_empanada> * 1) as IData
  ]
});

// Box =====
<recipetype:create:mixing>.addJsonRecipe("create_mix_foodtxf_box", {
  "type": "create:mixing",
  "ingredients": [
    (<item:minecraft:paper> * 1) as IData,
    (<item:minecraft:paper> * 1) as IData,
    (<item:minecraft:paper> * 1) as IData,
    (<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ],
  "results": [
    (<item:foodtxf:box> * 3) as IData
  ]
});
<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_foodtxf_box", {
    "type": "create:sequenced_assembly",
    "ingredient": { "item": "minecraft:paper" },
    "transitionalItem": { "item": "minecraft:paper" },
    "sequence": [
        {
            "type": "create:filling",
            "ingredients": [
                { "item": "minecraft:paper" },
                {
                    "fluid": "minecraft:water",
                    "amount": 500
                }
            ],
            "results": [
                { "item": "minecraft:paper" }
            ]
        },
        {
            "type": "create:deploying",
            "ingredients": [
                { "item": "minecraft:paper" },
                { "item": "minecraft:paper" }
            ],
            "results": [
                { "item": "minecraft:paper" }
            ]
        }
    ],
    "results": [
        { "item": "foodtxf:box", "count": 3 }
    ],
    "loops": 2
});

// Cereal =====
<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_box_of_cereal", {
    "type": "create:sequenced_assembly",
    "ingredient": { "item": "foodtxf:box" },
    "transitionalItem": { "item": "foodtxf:box" },
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [
                { "item": "foodtxf:box" },
                { "tag": ContextualConstants.SEEDS.items[0].tag }
            ],
            "results": [
                { "item": "foodtxf:box" }
            ]
        }
    ],
    "results": [
        { "item": "foodtxf:box_of_cereal" }
    ],
    "loops": 8
});

// Box of Cookies =====
<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_box_of_cookies", {
    "type": "create:sequenced_assembly",
    "ingredient": { "item": "foodtxf:box" },
    "transitionalItem": { "item": "foodtxf:box" },
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [
                { "item": "foodtxf:box" },
                { "tag": "lots_of_compat:cookies" }
            ],
            "results": [
                { "item": "foodtxf:box" }
            ]
        }
    ],
    "results": [
        { "item": "foodtxf:box_of_cookies" }
    ],
    "loops": 8
});

 // Bowl of Rice =====
<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_foodtxf_rice_bowl", {
    "type": "create:sequenced_assembly",
    "ingredient": { "item": "minecraft:bowl" },
    "transitionalItem": { "item": "minecraft:bowl" },
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [
                { "item": "minecraft:bowl" },
                { "tag": ContextualConstants.RICE.items[0].tag }
            ],
            "results": [
                { "item": "minecraft:bowl" }
            ]
        }
    ],
    "results": [
        { "item": "foodtxf:rice_bowl" }
    ],
    "loops": 3
});