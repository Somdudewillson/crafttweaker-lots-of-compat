#modloaded create thermal thermal_expansion

import crafttweaker.api.data.IData;

// Alloy Mixing
<recipetype:create:mixing>.addJsonRecipe("create_mix_bronze_from_ingots", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    {
      "tag": "forge:ingots/copper"
    },
    {
      "tag": "forge:ingots/copper"
    },
    {
      "tag": "forge:ingots/copper"
    },
    {
      "tag": "forge:ingots/tin"
    }
  ],
  "results": [
    {
      "count": 4,
      "item": "thermal:bronze_ingot"
    }
  ]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_electrum_from_ingots", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    {
      "tag": "forge:ingots/gold"
    },
    {
      "tag": "forge:ingots/silver"
    }
  ],
  "results": [
    {
      "count": 2,
      "item": "thermal:electrum_ingot"
    }
  ]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_invar_from_ingots", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    {
      "tag": "forge:ingots/iron"
    },
    {
      "tag": "forge:ingots/iron"
    },
    {
      "tag": "forge:ingots/nickel"
    }
  ],
  "results": [
    {
      "count": 3,
      "item": "thermal:invar_ingot"
    }
  ]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_constantan_from_ingots", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    {
      "tag": "forge:ingots/copper"
    },
    {
      "tag": "forge:ingots/nickel"
    }
  ],
  "results": [
    {
      "count": 2,
      "item": "thermal:constantan_ingot"
    }
  ]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_signalum_from_ingots", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    {
      "tag": "forge:ingots/copper"
    },
    {
      "tag": "forge:ingots/copper"
    },
    {
      "tag": "forge:ingots/copper"
    },
    {
      "tag": "forge:ingots/silver"
    },
    {
      "tag": "forge:dusts/redstone"
    },
    {
      "tag": "forge:dusts/redstone"
    },
    {
      "tag": "forge:dusts/redstone"
    },
    {
      "tag": "forge:dusts/redstone"
    }
  ],
  "results": [
    {
      "count": 4,
      "item": "thermal:signalum_ingot"
    }
  ]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_signalum_from_ingots_and_molten_redstone", {
  "type": "create:mixing",
  "ingredients": [
    {
      "tag": "forge:ingots/copper"
    },
    {
      "tag": "forge:ingots/copper"
    },
    {
      "tag": "forge:ingots/copper"
    },
    {
      "tag": "forge:ingots/silver"
    },
    {
      "amount": 400,
      "fluid": "thermal:redstone"
    }
  ],
  "results": [
    {
      "count": 4,
      "item": "thermal:signalum_ingot"
    }
  ]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_lumium_from_ingots", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    {
      "tag": "forge:ingots/tin"
    },
    {
      "tag": "forge:ingots/tin"
    },
    {
      "tag": "forge:ingots/tin"
    },
    {
      "tag": "forge:ingots/silver"
    },
    {
      "tag": "forge:dusts/glowstone"
    },
    {
      "tag": "forge:dusts/glowstone"
    }
  ],
  "results": [
    {
      "count": 4,
      "item": "thermal:lumium_ingot"
    }
  ]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_lumium_from_ingots_and_molten_glowstone", {
  "type": "create:mixing",
  "ingredients": [
    {
      "tag": "forge:ingots/tin"
    },
    {
      "tag": "forge:ingots/tin"
    },
    {
      "tag": "forge:ingots/tin"
    },
    {
      "tag": "forge:ingots/silver"
    },
    {
      "amount": 500,
      "fluid": "thermal:glowstone"
    }
  ],
  "results": [
    {
      "count": 4,
      "item": "thermal:lumium_ingot"
    }
  ]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_enderium_from_ingots", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    {
      "tag": "forge:ingots/lead"
    },
    {
      "tag": "forge:ingots/lead"
    },
    {
      "tag": "forge:ingots/lead"
    },
    {
      "tag": "forge:dusts/diamond"
    },
    {
      "tag": "forge:ender_pearls"
    },
    {
      "tag": "forge:ender_pearls"
    }
  ],
  "results": [
    {
      "count": 2,
      "item": "thermal:enderium_ingot"
    }
  ]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_enderium_from_ingots_and_molten_ender_pearls", {
  "type": "create:mixing",
  "ingredients": [
    {
      "tag": "forge:ingots/lead"
    },
    {
      "tag": "forge:ingots/lead"
    },
    {
      "tag": "forge:ingots/lead"
    },
    {
      "tag": "forge:dusts/diamond"
    },
    {
      "amount": 500,
      "fluid": "thermal:ender"
    }
  ],
  "results": [
    {
      "count": 2,
      "item": "thermal:enderium_ingot"
    }
  ]
});


// Rod Crushing
<recipetype:create:crushing>.addJsonRecipe("create_crush_basalz_rod", {
  "type": "create:crushing",
  "ingredients": [
    {
      "item": "thermal:basalz_rod"
    }
  ],
  "processingTime": 100,
  "results": [
    {
      "count": 3,
      "item": "thermal:basalz_powder"
    },
    {
      "chance": 0.25,
      "count": 3,
      "item": "thermal:basalz_powder"
    }
  ]
});
<recipetype:create:crushing>.addJsonRecipe("create_crush_blitz_rod", {
  "type": "create:crushing",
  "ingredients": [
    {
      "item": "thermal:blitz_rod"
    }
  ],
  "processingTime": 100,
  "results": [
    {
      "count": 3,
      "item": "thermal:blitz_powder"
    },
    {
      "chance": 0.25,
      "count": 3,
      "item": "thermal:blitz_powder"
    }
  ]
});
<recipetype:create:crushing>.addJsonRecipe("create_crush_blizz_rod", {
  "type": "create:crushing",
  "ingredients": [
    {
      "item": "thermal:blizz_rod"
    }
  ],
  "processingTime": 100,
  "results": [
    {
      "count": 3,
      "item": "thermal:blizz_powder"
    },
    {
      "chance": 0.25,
      "count": 3,
      "item": "thermal:blizz_powder"
    }
  ]
});

// Melting
<recipetype:create:mixing>.addJsonRecipe("create_mix_melt_redstone", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    {
      "tag": "forge:dusts/redstone"
    }
  ],
  "results": [
    {
      "amount": 100,
      "fluid": "thermal:redstone"
    }
  ]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_melt_glowstone", {
  "type": "create:mixing",
  "heatRequirement": "superheated",
  "ingredients": [
    {
      "tag": "forge:dusts/glowstone"
    }
  ],
  "results": [
    {
      "amount": 250,
      "fluid": "thermal:glowstone"
    }
  ]
});

// Thermal Pulverizing
<recipetype:thermal:pulverizer>.addJsonRecipe("thermal_pulverize_obsidian_create", {
  "type": "thermal:pulverizer",
  "ingredient": {
    "tag": "forge:obsidian"
  },
  "result": [
    {
      "chance": 4,
      "item": "create:powdered_obsidian"
    }
  ],
  "experience": 0.1,
  "energy": 200000
});

// Disenchantment Fuel
if (ConvertableEnergy.getConversionFactor(EnergyType.EXPERIENCE_POINTS, EnergyType.REDSTONE_FLUX)>0) {
  recipes.addJsonRecipe("thermal_disenchantment_fuel_experience_nugget", {
    "type": "thermal:disenchantment_fuel",
    "ingredient": {
      "item": "create:experience_nugget"
    },
    "energy": new ConvertableEnergy(EnergyType.EXPERIENCE_POINTS,3).to(EnergyType.REDSTONE_FLUX).amount as int
  });
  recipes.addJsonRecipe("thermal_disenchantment_fuel_experience_block", {
    "type": "thermal:disenchantment_fuel",
    "ingredient": {
      "item": "create:experience_block"
    },
    "energy": new ConvertableEnergy(EnergyType.EXPERIENCE_POINTS,3*9).to(EnergyType.REDSTONE_FLUX).amount as int
  });
}
#onlyif modloaded create_enchantment_industry
recipes.addJsonRecipe("thermal_disenchantment_fuel_hyper_experience_bottle", {
  "type": "thermal:disenchantment_fuel",
  "ingredient": {
    "item": "create_enchantment_industry:hyper_experience_bottle"
  },
  "energy": 32000*10
});
#endif

// Emptying
<recipetype:thermal:centrifuge>.addJsonRecipe("thermal_empty_builders_tea", {
  "type": "thermal:centrifuge",
  "ingredient": {
    "item": "create:builders_tea"
  },
  "result": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "fluid": "create:tea",
      "amount": 250
    }
  ],
  "energy": 400
});
<recipetype:create:emptying>.addJsonRecipe("create_empty_syrup_bottle", {
  "type": "create:emptying",
  "ingredients": [
    {
      "item": "thermal:syrup_bottle"
    }
  ],
  "results": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "amount": 250,
      "fluid": "thermal:syrup"
    }
  ]
});

//Filling
<recipetype:create:filling>.addJsonRecipe("create_fill_syrup_bottle", {
  "type": "create:filling",
  "ingredients": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "amount": 250,
      "fluid": "thermal:syrup"
    }
  ],
  "results": [
    {
      "item": "thermal:syrup_bottle"
    }
  ]
});

// Create compacting
<recipetype:create:compacting>.addJsonRecipe("create_compact_latex_to_rubber", {
  "type": "create:compacting",
  "ingredients": [
    {
      "amount": 1000,
      "fluid": "thermal:latex"
    }
  ],
  "results": [
    (<item:thermal:rubber> * 3) as IData
  ]
});