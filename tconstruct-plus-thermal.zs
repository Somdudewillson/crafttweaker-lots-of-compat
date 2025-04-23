#modloaded thermal thermal_expansion tconstruct

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;

// TConstruct melting stuff
<recipetype:tconstruct:melting>.addJsonRecipe("melting_redstone_into_thermal_destabilized_redstone", {
  "type": "tconstruct:melting",
  "ingredient": [
    {
      "tag": "forge:dusts/redstone"
    }
  ],
  "result": {
    "amount": 100,
    "fluid": "thermal:redstone"
  },
  "temperature": 1000,
  "time": 55
});
<recipetype:tconstruct:melting>.addJsonRecipe("melting_glowstone_into_thermal_energized_glowstone", {
  "type": "tconstruct:melting",
  "ingredient": [
    {
      "tag": "forge:dusts/glowstone"
    }
  ],
  "result": {
    "amount": 100,
    "fluid": "thermal:glowstone"
  },
  "temperature": 1500,
  "time": 55
});

// Thermal melting stuff
<recipetype:thermal:crucible>.addJsonRecipe("crucible_soul_sand_to_liquid_soul", {
  "type": "thermal:crucible",
  "ingredient": {
    "item": "minecraft:soul_sand"
  },
  "result": [
    {
      "fluid": "tconstruct:liquid_soul",
      "amount": 1000
    }
  ],
  "energy": 40000
});
<recipetype:thermal:crucible>.addJsonRecipe("crucible_soul_soil_to_liquid_soul", {
  "type": "thermal:crucible",
  "ingredient": {
    "item": "minecraft:soul_soil"
  },
  "result": [
    {
      "fluid": "tconstruct:liquid_soul",
      "amount": 1000
    }
  ],
  "energy": 40000
});

// Thermal refining fluids
<recipetype:thermal:refinery>.addJsonRecipe("thermal_refine_blazing_blood", {
  "type": "thermal:refinery",
  "ingredient": {
    "fluid": "tconstruct:blazing_blood",
    "amount": 250
  },
  "result": [
    {
      "fluid": "tconstruct:liquid_soul",
      "amount": 100
    },
    {
      "item": "minecraft:blaze_powder",
      "chance": 7.5
    }
  ],
  "energy": 6000,
  "experience": 0.3
});
<recipetype:thermal:refinery>.addJsonRecipe("thermal_refine_liquid_soul", {
  "type": "thermal:refinery",
  "ingredient": {
    "fluid": "tconstruct:liquid_soul",
    "amount": 1000
  },
  "result": [
    {
      "item": "minecraft:sand",
      "chance": 0.1
    }
  ],
  "energy": 25000,
  "experience": 250
});

// Brewing
<recipetype:thermal:brewer>.addJsonRecipe("brewing_liquid_soul_into_blazing_blood", {
  "type": "thermal:brewer",
  "ingredients": [
    {
      "fluid": "tconstruct:liquid_soul",
      "amount": 1000
    },
    (<tag:items:forge:dusts/blaze> * 9) as IData
  ],
  "result": [
    (<fluid:tconstruct:blazing_blood> * ContextualConstants.fluidAmtFromMb(200)) as IData
  ],
  "energy": 50000
});
<recipetype:thermal:brewer>.addJsonRecipe("brewing_blood_into_blazing_blood", {
  "type": "thermal:brewer",
  "ingredients": [
    {
      "fluid_tag": "lots_of_compat:blood_like",
      "amount": 1000
    },
    (<tag:items:forge:dusts/blaze> * 9) as IData
  ],
  "result": [
    (<fluid:tconstruct:blazing_blood> * ContextualConstants.fluidAmtFromMb(100)) as IData
  ],
  "energy": 75000
});

// Crystallizing slime crystals
<recipetype:thermal:crystallizer>.addJsonRecipe("crystallizer_earth_slime_crystal", {
  "type": "thermal:crystallizer",
  "ingredients": [
    {
      "fluid": "tconstruct:earth_slime",
      "amount": 250
    },
    <item:tconstruct:earth_slime_crystal> as IData
  ],
  "result": [
    (<item:tconstruct:earth_slime_crystal> * 2) as IData
  ],
  "energy": 5000
});
<recipetype:thermal:crystallizer>.addJsonRecipe("crystallizer_sky_slime_crystal", {
  "type": "thermal:crystallizer",
  "ingredients": [
    {
      "fluid": "tconstruct:sky_slime",
      "amount": 250
    },
    <item:tconstruct:sky_slime_crystal> as IData
  ],
  "result": [
    (<item:tconstruct:sky_slime_crystal> * 2) as IData
  ],
  "energy": 5000
});
<recipetype:thermal:crystallizer>.addJsonRecipe("crystallizer_ichor_slime_crystal", {
  "type": "thermal:crystallizer",
  "ingredients": [
    {
      "fluid": "tconstruct:blazing_blood",
      "amount": 100
    },
    <item:tconstruct:ichor_slime_crystal> as IData
  ],
  "result": [
    (<item:tconstruct:ichor_slime_crystal> * 2) as IData
  ],
  "energy": 5000
});
<recipetype:thermal:crystallizer>.addJsonRecipe("crystallizer_ender_slime_crystal", {
  "type": "thermal:crystallizer",
  "ingredients": [
    {
      "fluid": "tconstruct:ender_slime",
      "amount": 250
    },
    <item:tconstruct:ender_slime_crystal> as IData
  ],
  "result": [
    (<item:tconstruct:ender_slime_crystal> * 2) as IData
  ],
  "energy": 5000
});

// Foundry/Smeltery Fuels
#onlyif modloaded systeams
recipes.addJsonRecipe("melting_fuel_systeams_steam", {
  "type": "tconstruct:melting_fuel",
  "duration": 100,
  "fluid": {
    "amount": 50,
    "fluid": "systeams:steam"
  },
  "rate": 1,
  "temperature": 100
});
recipes.addJsonRecipe("melting_fuel_systeams_warm_steam", {
  "type": "tconstruct:melting_fuel",
  "duration": 100,
  "fluid": {
    "amount": 50,
    "fluid": "systeams:steamier"
  },
  "rate": 5.75,
  "temperature": 575
});
recipes.addJsonRecipe("melting_fuel_systeams_hot_steam", {
  "type": "tconstruct:melting_fuel",
  "duration": 100,
  "fluid": {
    "amount": 50,
    "fluid": "systeams:steamiest"
  },
  "rate": 10.5,
  "temperature": 1050
});
recipes.addJsonRecipe("melting_fuel_systeams_superhot_steam", {
  "type": "tconstruct:melting_fuel",
  "duration": 100,
  "fluid": {
    "amount": 50,
    "fluid": "systeams:steamiester"
  },
  "rate": 15.25,
  "temperature": 1525
});
recipes.addJsonRecipe("melting_fuel_systeams_plasma", {
  "type": "tconstruct:melting_fuel",
  "duration": 100,
  "fluid": {
    "amount": 50,
    "fluid": "systeams:steamiestest"
  },
  "rate": 20,
  "temperature": 2000
});
#endif

// Thermal fuels
recipes.addJsonRecipe("magmatic_fuel_tconstruct_magma", {
  "type": "thermal:magmatic_fuel",
  "ingredient": {
    "fluid": "tconstruct:magma",
    "amount": 1000
  },
  "energy": 80000
});

recipes.addJsonRecipe("thermal_lapidary_fuel_earth_slime_crystal", {
    "type": "thermal:lapidary_fuel",
    "ingredient": {
        "item": "tconstruct:earth_slime_crystal"
    },
    "energy": 10000
});
recipes.addJsonRecipe("thermal_lapidary_fuel_sky_slime_crystal", {
    "type": "thermal:lapidary_fuel",
    "ingredient": {
        "item": "tconstruct:sky_slime_crystal"
    },
    "energy": 25000
});
recipes.addJsonRecipe("thermal_lapidary_fuel_ichor_slime_crystal", {
    "type": "thermal:lapidary_fuel",
    "ingredient": {
        "item": "tconstruct:ichor_slime_crystal"
    },
    "energy": 40000
});
recipes.addJsonRecipe("thermal_lapidary_fuel_ender_slime_crystal", {
    "type": "thermal:lapidary_fuel",
    "ingredient": {
        "item": "tconstruct:ender_slime_crystal"
    },
    "energy": 80000
});

// Blast Chiller
<recipetype:thermal:chiller>.addJsonRecipe("chill_slime_ball_from_tconstruct_slime", {
  "type": "thermal:chiller",
  "ingredients": [
    {
      "fluid": "tconstruct:earth_slime",
      "amount": 250
    },
    {
      "item": "thermal:chiller_ball_cast"
    }
  ],
  "result": [
    {
      "item": "minecraft:slime_ball",
      "count": 1
    }
  ],
  "energy": 500
});
<recipetype:thermal:chiller>.addJsonRecipe("chill_sky_slime_ball_from_tconstruct_sky_slime", {
  "type": "thermal:chiller",
  "ingredients": [
    {
      "fluid": "tconstruct:sky_slime",
      "amount": 250
    },
    {
      "item": "thermal:chiller_ball_cast"
    }
  ],
  "result": [
    {
      "item": "tconstruct:sky_slime_ball",
      "count": 1
    }
  ],
  "energy": 500
});
<recipetype:thermal:chiller>.addJsonRecipe("chill_ender_slime_ball_from_tconstruct_ender_slime", {
  "type": "thermal:chiller",
  "ingredients": [
    {
      "fluid": "tconstruct:ender_slime",
      "amount": 250
    },
    {
      "item": "thermal:chiller_ball_cast"
    }
  ],
  "result": [
    {
      "item": "tconstruct:ender_slime_ball",
      "count": 1
    }
  ],
  "energy": 500
});
<recipetype:thermal:chiller>.addJsonRecipe("chill_golden_carrot", {
  "type": "thermal:chiller",
  "ingredients": [
    {
      "fluid": "tconstruct:molten_gold",
      "amount": 80
    },
    {
      "item": "minecraft:carrot"
    }
  ],
  "result": [
    {
      "item": "minecraft:golden_carrot",
      "count": 1
    }
  ],
  "energy": 500
});
<recipetype:thermal:chiller>.addJsonRecipe("chill_golden_apple", {
  "type": "thermal:chiller",
  "ingredients": [
    {
      "fluid": "tconstruct:molten_gold",
      "amount": 720
    },
    {
      "item": "minecraft:apple"
    }
  ],
  "result": [
    {
      "item": "minecraft:golden_apple",
      "count": 1
    }
  ],
  "energy": 500
});
<recipetype:thermal:chiller>.addJsonRecipe("chill_jeweled_apple", {
  "type": "thermal:chiller",
  "ingredients": [
    {
      "fluid": "tconstruct:molten_diamond",
      "amount": 200
    },
    {
      "item": "minecraft:apple"
    }
  ],
  "result": [
    {
      "item": "tconstruct:jeweled_apple",
      "count": 1
    }
  ],
  "energy": 500
});
//TODO: Figure out how to automatically populate tconstruct casting recipes into the blast chiller

// TConstruct Filling
<recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct_fill_syrup_bottle", {
  "type": "tconstruct:casting_table",
  "cast": {
    "item": "minecraft:glass_bottle"
  },
  "cast_consumed": true,
  "cooling_time": 1,
  "fluid": {
    "amount": 250,
    "tag": "thermal:syrup"
  },
  "result": "thermal:syrup_bottle"
});

// Thermal Filling
<recipetype:thermal:bottler>.addJsonRecipe("thermal_bottle_earth_slime_bottle", {
  "type": "thermal:bottler",
  "ingredients": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "fluid": "tconstruct:earth_slime",
      "amount": 250
    }
  ],
  "result": [
    {
      "item": "tconstruct:earth_slime_bottle"
    }
  ]
});
<recipetype:thermal:bottler>.addJsonRecipe("thermal_bottle_sky_slime_bottle", {
  "type": "thermal:bottler",
  "ingredients": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "fluid": "tconstruct:sky_slime",
      "amount": 250
    }
  ],
  "result": [
    {
      "item": "tconstruct:sky_slime_bottle"
    }
  ]
});
<recipetype:thermal:bottler>.addJsonRecipe("thermal_bottle_ender_slime_bottle", {
  "type": "thermal:bottler",
  "ingredients": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "fluid": "tconstruct:ender_slime",
      "amount": 250
    }
  ],
  "result": [
    {
      "item": "tconstruct:ender_slime_bottle"
    }
  ]
});
<recipetype:thermal:bottler>.addJsonRecipe("thermal_bottle_magma_bottle", {
  "type": "thermal:bottler",
  "ingredients": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "fluid_tag": "forge:magma",
      "amount": 250
    }
  ],
  "result": [
    {
      "item": "tconstruct:magma_bottle"
    }
  ]
});
<recipetype:thermal:bottler>.addJsonRecipe("thermal_bottle_venom_bottle", {
  "type": "thermal:bottler",
  "ingredients": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "fluid_tag": "tconstruct:venom",
      "amount": 250
    }
  ],
  "result": [
    {
      "item": "tconstruct:venom_bottle"
    }
  ]
});

// Thermal Emptying
<recipetype:thermal:centrifuge>.addJsonRecipe("thermal_empty_earth_slime_bottle", {
  "type": "thermal:centrifuge",
  "ingredient": {
    "item": "tconstruct:earth_slime_bottle"
  },
  "result": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "fluid": "tconstruct:earth_slime",
      "amount": 250
    }
  ],
  "energy": 400
});
<recipetype:thermal:centrifuge>.addJsonRecipe("thermal_empty_sky_slime_bottle", {
  "type": "thermal:centrifuge",
  "ingredient": {
    "item": "tconstruct:sky_slime_bottle"
  },
  "result": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "fluid": "tconstruct:sky_slime",
      "amount": 250
    }
  ],
  "energy": 400
});
<recipetype:thermal:centrifuge>.addJsonRecipe("thermal_empty_ender_slime_bottle", {
  "type": "thermal:centrifuge",
  "ingredient": {
    "item": "tconstruct:ender_slime_bottle"
  },
  "result": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "fluid": "tconstruct:ender_slime",
      "amount": 250
    }
  ],
  "energy": 400
});
<recipetype:thermal:centrifuge>.addJsonRecipe("thermal_empty_magma_bottle", {
  "type": "thermal:centrifuge",
  "ingredient": {
    "item": "tconstruct:magma_bottle"
  },
  "result": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "fluid": "tconstruct:magma",
      "amount": 250
    }
  ],
  "energy": 400
});
<recipetype:thermal:centrifuge>.addJsonRecipe("thermal_empty_venom_bottle", {
  "type": "thermal:centrifuge",
  "ingredient": {
    "item": "tconstruct:venom_bottle"
  },
  "result": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "fluid": "tconstruct:venom",
      "amount": 250
    }
  ],
  "energy": 400
});