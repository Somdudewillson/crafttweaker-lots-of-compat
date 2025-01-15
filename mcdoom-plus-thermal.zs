#modloaded doom thermal thermal_expansion

<recipetype:thermal:smelter>.addJsonRecipe("smelter_alloy_argent_plate_from_scrap", {
  "type": "thermal:smelter",
  "ingredients": [
    {
      "value": [
        {
          "item": "doom:argent_energy"
        }
      ],
      "count": 2
    },
    {
      "value": [
        {
          "tag": "forge:ingots/netherite_scrap"
        }
      ],
      "count": 1
    }
  ],
  "result": [
    {
      "item": "doom:argent_plate",
      "count": 2
    }
  ],
  "energy": 1000
});
<recipetype:thermal:smelter>.addJsonRecipe("smelter_alloy_argent_plate_from_ingot", {
  "type": "thermal:smelter",
  "ingredients": [
    {
      "value": [
        {
          "item": "doom:argent_energy"
        }
      ],
      "count": 1
    },
    {
      "value": [
        {
          "tag": "forge:ingots/netherite"
        }
      ],
      "count": 1
    }
  ],
  "result": [
    {
      "item": "doom:argent_plate",
      "count": 8
    }
  ],
  "energy": 8000
});

<recipetype:thermal:press>.addJsonRecipe("thermal_press_argent_bolt", {
    "type": "thermal:press",
    "ingredients": [
    {
        "item": "doom:argent_energy",
        "count": 1
    },
    {
        "tag": "forge:ingots/iron"
    }
    ],
    "result": [
    {
        "item": "doom:argent_bolt"
    }
    ],
    "energy": 2000
});
<recipetype:thermal:press>.addJsonRecipe("thermal_press_unmaykr_bolt", {
    "type": "thermal:press",
    "ingredients": [
    {
        "item": "doom:argent_energy",
        "count": 3
    },
    {
        "tag": "forge:ingots/iron"
    }
    ],
    "result": [
    {
        "item": "doom:unmaykr_bolt"
    }
    ],
    "energy": 7000
});
<recipetype:thermal:press>.addJsonRecipe("thermal_press_unmaykr_bolt_from_argent_bolts", {
    "type": "thermal:press",
    "ingredients": [
    {
        "item": "doom:argent_bolt",
        "count": 3
    }
    ],
    "result": [
    {
        "item": "doom:unmaykr_bolt",
        "count": 2
    }
    ],
    "energy": 500
});