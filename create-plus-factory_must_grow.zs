#modloaded create tfmg

// Filling
<recipetype:create:filling>.addJsonRecipe("create_fill_bottle_of_concrete", {
  "type": "create:filling",
  "ingredients": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "amount": 250,
      "fluid": "tfmg:liquid_concrete"
    }
  ],
  "results": [
    {
      "item": "tfmg:bottle_of_concrete"
    }
  ]
});

// Emptying
<recipetype:create:emptying>.addJsonRecipe("create_empty_bottle_of_concrete", {
  "type": "create:emptying",
  "ingredients": [
    {
      "item": "tfmg:bottle_of_concrete"
    }
  ],
  "results": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "amount": 250,
      "fluid": "tfmg:liquid_concrete"
    }
  ]
});
<recipetype:create:emptying>.addJsonRecipe("create_empty_bottle_of_battery_acid", {
  "type": "create:emptying",
  "ingredients": [
    {
      "item": "tfmg:bottle_of_battery_acid"
    }
  ],
  "results": [
    {
      "item": "minecraft:glass_bottle"
    },
    {
      "amount": 250,
      "fluid": "tfmg:sulfuric_acid"
    }
  ]
});