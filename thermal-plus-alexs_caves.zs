#modloaded thermal thermal_expansion alexscaves

import crafttweaker.api.data.IData;

// Alloying
<recipetype:thermal:smelter>.addJsonRecipe("smelter_alloy_scarlet_neodymium", {
  "type": "thermal:smelter",
  "ingredients": [
    {
      "value": [
        {
          "tag": "forge:ingots/iron"
        },
        {
          "tag": "forge:dusts/iron"
        }
      ],
      "count": 2
    },
    {
      "value": [
        {
          "item": "alexscaves:raw_scarlet_neodymium"
        }
      ],
      "count": 2
    }
  ],
  "result": [
    {
      "item": "alexscaves:scarlet_neodymium_ingot",
      "count": 1
    }
  ],
  "energy": 1000
});
<recipetype:thermal:smelter>.addJsonRecipe("smelter_alloy_azure_neodymium", {
  "type": "thermal:smelter",
  "ingredients": [
    {
      "value": [
        {
          "tag": "forge:ingots/iron"
        },
        {
          "tag": "forge:dusts/iron"
        }
      ],
      "count": 2
    },
    {
      "value": [
        {
          "item": "alexscaves:raw_azure_neodymium"
        }
      ],
      "count": 2
    }
  ],
  "result": [
    {
      "item": "alexscaves:azure_neodymium_ingot",
      "count": 1
    }
  ],
  "energy": 1000
});
<recipetype:thermal:smelter>.addJsonRecipe("smelter_alloy_polymer_plate", {
  "type": "thermal:smelter",
  "ingredients": [
    {
      "value": [
        {
          "tag": "forge:ingots/iron"
        },
        {
          "tag": "forge:dusts/iron"
        }
      ],
      "count": 1
    },
    {
      "value": [
        {
          "tag": "forge:dusts/sulfur"
        }
      ],
      "count": 1
    },
    {
      "value": [
        {
          "tag": "forge:ingots/uranium"
        },
        {
          "tag": "forge:dusts/uranium"
        },
        {
          "item": "alexscaves:uranium"
        }
      ],
      "count": 1
    }
  ],
  "result": [
    {
      "item": "alexscaves:polymer_plate",
      "count": 3
    }
  ],
  "energy": 4800
});

// Press
<recipetype:thermal:press>.addJsonRecipe("unpack_cinder_blocks", {
    "type": "thermal:press",
    "ingredients": [
    {
        "tag": "alexscaves:concrete",
        "count": 1
    },
    {
        "item": "thermal:press_unpacking_die"
    }
    ],
    "result": [
    {
        "item": "alexscaves:cinder_brick",
        "count": 2
    }
    ],
    "energy": 100
});
<recipetype:thermal:press>.addJsonRecipe("press_ferrouslime_ball", {
    "type": "thermal:press",
    "ingredients": [
    {
        "tag": "forge:dusts/iron",
        "count": 1
    },
    {
        "tag": "forge:slimeballs"
    }
    ],
    "result": [
    {
        "item": "alexscaves:ferrouslime_ball",
        "count": 1
    }
    ],
    "energy": 500
});
if (<tag:fluids:forge:slime>.exists() && <tag:fluids:forge:slime>.elements.length>0) {
  <recipetype:thermal:press>.addJsonRecipe("pack_unrefined_waste_with_slime_byproduct", {
      "type": "thermal:press",
      "ingredients": [
      {
          "item": "alexscaves:toxic_paste",
          "count": 9
      },
      {
          "item": "thermal:press_packing_3x3_die"
      }
      ],
      "result": [
      {
          "item": "alexscaves:unrefined_waste",
          "count": 1
      },
      {
        "fluid": <tag:fluids:forge:slime>.elements[0].registryName.toString(),
        "amount": 250
      }
      ],
      "energy": 100
  });
} else {
  <recipetype:thermal:press>.addJsonRecipe("pack_unrefined_waste", {
      "type": "thermal:press",
      "ingredients": [
      {
          "item": "alexscaves:toxic_paste",
          "count": 9
      },
      {
          "item": "thermal:press_packing_3x3_die"
      }
      ],
      "result": [
      {
          "item": "alexscaves:unrefined_waste",
          "count": 1
      }
      ],
      "energy": 100
  });
}
<recipetype:thermal:press>.addJsonRecipe("thermal_press_pewen_sap", {
    "type": "thermal:press",
    "ingredients": [
    {
        "item": "alexscaves:pewen_sap",
        "count": 1
    }
    ],
    "result": [
    {
      "fluid": "thermal:sap",
      "amount": 150
    }
    ],
    "energy": 1000
});
<recipetype:thermal:press>.addJsonRecipe("thermal_press_amber", {
    "type": "thermal:press",
    "ingredients": [
    {
        "item": "alexscaves:amber",
        "count": 1
    }
    ],
    "result": [
    {
      "fluid": "thermal:sap",
      "amount": 1000
    }
    ],
    "energy": 6000
});
<recipetype:thermal:press>.addJsonRecipe("thermal_press_pewen_sap_into_amber", {
    "type": "thermal:press",
    "ingredients": [
    {
        "item": "alexscaves:pewen_sap",
        "count": 9
    },
    {
        "item": "thermal:press_packing_3x3_die"
    }
    ],
    "result": [
    {
      "item": "alexscaves:amber",
      "count": 1
    },
    {
      "fluid": "thermal:sap",
      "amount": 350
    }
    ],
    "energy": 2000
});

// Bottler
<recipetype:thermal:bottler>.addJsonRecipe("bottle_ferrouslime_ball", {
  "type": "thermal:bottler",
  "ingredients": [
    {
      "tag": "forge:dusts/iron"
    },
    {
      "fluid_tag": "lots_of_compat:liquid_slime",
      "amount": 250
    }
  ],
  "result": [
    {
      "item": "alexscaves:ferrouslime_ball"
    }
  ]
});
if (<tag:fluids:forge:chocolate>.exists() && <tag:fluids:forge:chocolate>.elements.length > 0) {
  <recipetype:thermal:bottler>.addJsonRecipe("bottle_hot_chocolate_bottle", {
    "type": "thermal:bottler",
    "ingredients": [
      {
        "item": "minecraft:glass_bottle"
      },
      {
        "fluid_tag": "forge:chocolate",
        "amount": 250
      }
    ],
    "result": [
      {
        "item": "alexscaves:hot_chocolate_bottle"
      }
    ]
  });
}
<recipetype:thermal:bottler>.addJsonRecipe("bottle_purple_soda_bottle", {
  "type": "thermal:bottler",
  "ingredients": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "fluid": "alexscaves:purple_soda",
      "amount": 250
    }
  ],
  "result": [
    {
      "item": "alexscaves:purple_soda_bottle"
    }
  ]
});

// Emptying
<recipetype:thermal:centrifuge>.addJsonRecipe("thermal_empty_purple_soda_bottle", {
  "type": "thermal:centrifuge",
  "ingredient": {
    "item": "alexscaves:purple_soda_bottle"
  },
  "result": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "fluid": "alexscaves:purple_soda",
      "amount": 250
    }
  ],
  "energy": 400
});

// Lapidary Fuel
recipes.addJsonRecipe("thermal_lapidary_fuel_occult_gem", {
    "type": "thermal:lapidary_fuel",
    "ingredient": {
        "item": "alexscaves:occult_gem"
    },
    "energy": 60000
});

// Centrifuge
<recipetype:thermal:centrifuge>.addJsonRecipe("thermal_centrifuge_toxic_paste", {
  "type": "thermal:centrifuge",
  "ingredient": {
    "item": "alexscaves:toxic_paste"
  },
  "result": [
    {
      "item": "minecraft:slime_ball",
      "chance": 0.1
    },
    {
      "item": "alexscaves:uranium_shard",
      "chance": 1.0/8
    }
  ],
  "energy": 750
});
<recipetype:thermal:centrifuge>.addJsonRecipe("thermal_centrifuge_unrefined_waste", {
  "type": "thermal:centrifuge",
  "ingredient": {
    "item": "alexscaves:unrefined_waste"
  },
  "result": [
    {
      "item": "alexscaves:uranium_shard",
      "chance": 9.0/8
    }
  ],
  "energy": 750*9
});