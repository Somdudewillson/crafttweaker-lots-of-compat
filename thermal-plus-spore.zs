#modloaded spore thermal thermal_expansion

<recipetype:thermal:pulverizer>.addJsonRecipe("thermal_pulverize_amethyst", {
    "type": "thermal:pulverizer",
    "ingredient": {
        "tag": "forge:gems/amethyst"
    },
    "result": [
    {
        "item": "spore:amethyst_dust",
        "count": 1
    }
    ],
    "energy_mod": 0.5
});
<recipetype:thermal:smelter>.addJsonRecipe("smelter_alloy_compound", {
  "type": "thermal:smelter",
  "ingredients": [
    {
      "value": [
        {
          "tag": "forge:gems/amethyst"
        },
        {
          "tag": "forge:dusts/amethyst"
        }
      ],
      "count": 1
    },
    {
      "value": [
        {
          "item": "minecraft:sugar"
        }
      ],
      "count": 1
    }
  ],
  "result": [
    {
      "item": "spore:compound_plate",
      "count": 1
    }
  ],
  "energy": 4000
});

<recipetype:thermal:press>.addJsonRecipe("thermal_pack_ice_canister_with_blue_ice", {
    "type": "thermal:press",
    "ingredients": [
    {
        "item": "minecraft:blue_ice",
        "count": 1
    },
    {
        "tag": "forge:ingots/iron"
    }
    ],
    "result": [
    {
        "item": "spore:ice_canister"
    }
    ],
    "energy": 1000
});
<recipetype:thermal:press>.addJsonRecipe("thermal_pack_ice_canister_with_blizz_powder", {
    "type": "thermal:press",
    "ingredients": [
    {
        "item": "thermal:blizz_powder",
        "count": 4
    },
    {
        "tag": "forge:ingots/iron"
    }
    ],
    "result": [
    {
        "item": "spore:ice_canister",
        "count": 2
    }
    ],
    "energy": 1500
});