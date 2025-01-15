#modloaded create tconstruct

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;

<recipetype:create:mixing>.addJsonRecipe("create_mix_blazing_blood_from_liquid_soul_heated", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    <tag:items:forge:dusts/blaze> as IData,
    <tag:items:forge:dusts/blaze> as IData,
    <tag:items:forge:dusts/blaze> as IData,
    <tag:items:forge:dusts/blaze> as IData,
    <tag:items:forge:dusts/blaze> as IData,
    <tag:items:forge:dusts/blaze> as IData,
    <tag:items:forge:dusts/blaze> as IData,
    <tag:items:forge:dusts/blaze> as IData,
    <tag:items:forge:dusts/blaze> as IData,
    (<fluid:tconstruct:liquid_soul> * 1000) as IData
  ],
  "results": [
    (<fluid:tconstruct:blazing_blood> * 100) as IData
  ]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_blazing_blood_from_liquid_soul_superheated", {
  "type": "create:mixing",
  "heatRequirement": "superheated",
  "ingredients": [
    <tag:items:forge:dusts/blaze> as IData,
    (<fluid:tconstruct:liquid_soul> * 500) as IData
  ],
  "results": [
    (<fluid:tconstruct:blazing_blood> * 100) as IData
  ]
});

<recipetype:create:mixing>.addJsonRecipe("create_mix_blazing_blood_from_blood_heated", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    <tag:items:forge:dusts/blaze> as IData,
    <tag:items:forge:dusts/blaze> as IData,
    <tag:items:forge:dusts/blaze> as IData,
    <tag:items:forge:dusts/blaze> as IData,
    <tag:items:forge:dusts/blaze> as IData,
    <tag:items:forge:dusts/blaze> as IData,
    <tag:items:forge:dusts/blaze> as IData,
    <tag:items:forge:dusts/blaze> as IData,
    <tag:items:forge:dusts/blaze> as IData,
    {
      "amount": 1000,
      "fluidTag": "lots_of_compat:blood_like"
    }
  ],
  "results": [
    (<fluid:tconstruct:blazing_blood> * 50) as IData
  ]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_blazing_blood_from_blood_superheated", {
  "type": "create:mixing",
  "heatRequirement": "superheated",
  "ingredients": [
    <tag:items:forge:dusts/blaze> as IData,
    <tag:items:forge:dusts/blaze> as IData,
    {
      "amount": 1000,
      "fluidTag": "lots_of_compat:blood_like"
    }
  ],
  "results": [
    (<fluid:tconstruct:blazing_blood> * 100) as IData
  ]
});

#onlyif modloaded create_enchantment_industry
<recipetype:create:mixing>.addJsonRecipe("create_mix_liquid_soul", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    (<fluid:tconstruct:liquid_soul> * 10) as IData,
    (<fluid:create_enchantment_industry:experience> * 10) as IData
  ],
  "results": [
    (<fluid:tconstruct:liquid_soul> * 20) as IData
  ]
});
#endif

// Create Filling
<recipetype:create:filling>.addJsonRecipe("create_fill_earth_slime_bottle", {
  "type": "create:filling",
  "ingredients": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "amount": 250,
      "fluid": "tconstruct:earth_slime"
    }
  ],
  "results": [
    {
      "item": "tconstruct:earth_slime_bottle"
    }
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_fill_sky_slime_bottle", {
  "type": "create:filling",
  "ingredients": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "amount": 250,
      "fluid": "tconstruct:sky_slime"
    }
  ],
  "results": [
    {
      "item": "tconstruct:sky_slime_bottle"
    }
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_fill_ender_slime_bottle", {
  "type": "create:filling",
  "ingredients": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "amount": 250,
      "fluid": "tconstruct:ender_slime"
    }
  ],
  "results": [
    {
      "item": "tconstruct:ender_slime_bottle"
    }
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_fill_magma_bottle", {
  "type": "create:filling",
  "ingredients": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "amount": 250,
      "fluidTag": "forge:magma"
    }
  ],
  "results": [
    {
      "item": "tconstruct:magma_bottle"
    }
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_fill_venom_bottle", {
  "type": "create:filling",
  "ingredients": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "amount": 250,
      "fluidTag": "tconstruct:venom"
    }
  ],
  "results": [
    {
      "item": "tconstruct:venom_bottle"
    }
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_golden_carrot_pouring", {
  "type": "create:filling",
  "ingredients": [
    {
      "item": "minecraft:carrot"
    },
    {
      "amount": 80,
      "fluid": "tconstruct:molten_gold"
    }
  ],
  "results": [
    {
      "item": "minecraft:golden_carrot"
    }
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_golden_apple_pouring", {
  "type": "create:filling",
  "ingredients": [
    {
      "item": "minecraft:apple"
    },
    {
      "amount": 720,
      "fluid": "tconstruct:molten_gold"
    }
  ],
  "results": [
    {
      "item": "minecraft:golden_apple"
    }
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_jeweled_apple_pouring", {
  "type": "create:filling",
  "ingredients": [
    {
      "item": "minecraft:apple"
    },
    {
      "amount": 200,
      "fluid": "tconstruct:molten_diamond"
    }
  ],
  "results": [
    {
      "item": "tconstruct:jeweled_apple"
    }
  ]
});

// Create Emptying
<recipetype:create:emptying>.addJsonRecipe("create_empty_earth_slime_bottle", {
  "type": "create:emptying",
  "ingredients": [
    {
      "item": "tconstruct:earth_slime_bottle"
    }
  ],
  "results": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "amount": 250,
      "fluid": "tconstruct:earth_slime"
    }
  ]
});
<recipetype:create:emptying>.addJsonRecipe("create_empty_sky_slime_bottle", {
  "type": "create:emptying",
  "ingredients": [
    {
      "item": "tconstruct:sky_slime_bottle"
    }
  ],
  "results": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "amount": 250,
      "fluid": "tconstruct:sky_slime"
    }
  ]
});
<recipetype:create:emptying>.addJsonRecipe("create_empty_ender_slime_bottle", {
  "type": "create:emptying",
  "ingredients": [
    {
      "item": "tconstruct:ender_slime_bottle"
    }
  ],
  "results": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "amount": 250,
      "fluid": "tconstruct:ender_slime"
    }
  ]
});
<recipetype:create:emptying>.addJsonRecipe("create_empty_magma_bottle", {
  "type": "create:emptying",
  "ingredients": [
    {
      "item": "tconstruct:magma_bottle"
    }
  ],
  "results": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "amount": 250,
      "fluid": "tconstruct:magma"
    }
  ]
});
<recipetype:create:emptying>.addJsonRecipe("create_empty_venom_bottle", {
  "type": "create:emptying",
  "ingredients": [
    {
      "item": "tconstruct:magma_bottle"
    }
  ],
  "results": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "amount": 250,
      "fluid": "tconstruct:venom"
    }
  ]
});