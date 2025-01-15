#modloaded create alexsmobs

<recipetype:thermal:bottler>.addJsonRecipe("thermal_bottle_lava_bottle", {
  "type": "thermal:bottler",
  "ingredients": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "fluid": "minecraft:lava",
      "amount": 250
    }
  ],
  "result": [
    {
      "item": "alexsmobs:lava_bottle"
    }
  ]
});

<recipetype:thermal:centrifuge>.addJsonRecipe("thermal_empty_lava_bottle", {
  "type": "thermal:centrifuge",
  "ingredient": {
    "item": "alexsmobs:lava_bottle"
  },
  "result": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "fluid": "minecraft:lava",
      "amount": 250
    }
  ],
  "energy": 400
});