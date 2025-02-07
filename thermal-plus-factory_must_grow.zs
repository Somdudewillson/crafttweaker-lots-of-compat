#modloaded thermal thermal_expansion create tfmg

// Refinery
<recipetype:thermal:refinery>.addJsonRecipe("refinery_refine_naptha", {
  "type": "thermal:refinery",
  "ingredient": {
    "fluid": "tfmg:naphtha",
    "amount": 100
  },
  "result": [
    {
      "fluid": "tfmg:propylene",
      "amount": 50
    },
    {
      "fluid": "tfmg:ethylene",
      "amount": 50
    }
  ],
  "energy": 6000,
  "experience": 0.2
});
<recipetype:thermal:refinery>.addJsonRecipe("refinery_refine_propylene", {
  "type": "thermal:refinery",
  "ingredient": {
    "fluid": "tfmg:propylene",
    "amount": 100
  },
  "result": [
    {
      "fluid": "tfmg:liquid_plastic",
      "amount": 100
    }
  ],
  "energy": 500,
  "experience": 0.1
});
<recipetype:thermal:refinery>.addJsonRecipe("refinery_refine_ethylene", {
  "type": "thermal:refinery",
  "ingredient": {
    "fluid": "tfmg:ethylene",
    "amount": 100
  },
  "result": [
    {
      "fluid": "tfmg:liquid_plastic",
      "amount": 100
    }
  ],
  "energy": 500,
  "experience": 0.1
});

// Blast Chiller
<recipetype:thermal:chiller>.addJsonRecipe("thermal_chill_slag", {
  "type": "thermal:chiller",
  "ingredients": [
    {
      "fluid": "tfmg:molten_slag",
      "amount": 1000
    }
  ],
  "result": [
    {
      "item": "tfmg:slag",
      "count": 9
    }
  ],
  "energy": 100
});

// Filling
<recipetype:thermal:bottler>.addJsonRecipe("thermal_bottle_bottle_of_concrete", {
  "type": "thermal:bottler",
  "ingredients": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "fluid": "tfmg:liquid_concrete",
      "amount": 250
    }
  ],
  "result": [
    {
      "item": "tfmg:bottle_of_concrete"
    }
  ]
});
<recipetype:thermal:bottler>.addJsonRecipe("thermal_bottle_bottle_of_battery_acid", {
  "type": "thermal:bottler",
  "ingredients": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "fluid_tag": "forge:sulfuric_acid",
      "amount": 250
    }
  ],
  "result": [
    {
      "item": "tfmg:bottle_of_battery_acid"
    }
  ]
});

<recipetype:thermal:bottler>.addJsonRecipe("thermal_bottle_hardened_wood", {
  "type": "thermal:bottler",
  "ingredients": [
    {
      "tag": "minecraft:planks"
    },
    {
      "fluid_tag": "forge:creosote",
      "amount": 200
    }
  ],
  "result": [
    {
      "item": "tfmg:hardened_planks"
    }
  ]
});

// Emptying
<recipetype:thermal:centrifuge>.addJsonRecipe("thermal_empty_bottle_of_concrete", {
  "type": "thermal:centrifuge",
  "ingredient": {
    "item": "tfmg:bottle_of_concrete"
  },
  "result": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "fluid": "tfmg:liquid_concrete",
      "amount": 250
    }
  ],
  "energy": 400
});
<recipetype:thermal:centrifuge>.addJsonRecipe("thermal_empty_bottle_of_battery_acid", {
  "type": "thermal:centrifuge",
  "ingredient": {
    "item": "tfmg:bottle_of_battery_acid"
  },
  "result": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "fluid": "tfmg:sulfuric_acid",
      "amount": 250
    }
  ],
  "energy": 400
});