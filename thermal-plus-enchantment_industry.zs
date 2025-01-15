#modloaded create create_enchantment_industry thermal thermal_expansion

<recipetype:thermal:bottler>.addJsonRecipe("thermal_bottle_hyper_experience_bottle", {
  "type": "thermal:bottler",
  "ingredients": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "fluid": "create_enchantment_industry:hyper_experience",
      "amount": 10
    }
  ],
  "result": [
    {
      "item": "create_enchantment_industry:hyper_experience_bottle"
    }
  ]
});

<recipetype:thermal:centrifuge>.addJsonRecipe("thermal_empty_hyper_experience_bottle", {
  "type": "thermal:centrifuge",
  "ingredient": {
    "item": "create_enchantment_industry:hyper_experience_bottle"
  },
  "result": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "fluid": "create_enchantment_industry:hyper_experience",
      "amount": 10
    }
  ],
  "energy": 400
});