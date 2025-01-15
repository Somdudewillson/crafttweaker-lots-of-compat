#modloaded tconstruct create tfmg

<recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct_pour_plastic_sheet", {
  "type": "tconstruct:casting_table",
  "cooling_time": 98,
  "fluid": {
    "amount": 200,
    "fluid": "tfmg:liquid_plastic"
  },
  "result": "tfmg:plastic_sheet"
});

// Filling
<recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct_fill_bottle_of_concrete", {
  "type": "tconstruct:casting_table",
  "cast": {
    "item": "minecraft:glass_bottle"
  },
  "cast_consumed": true,
  "cooling_time": 1,
  "fluid": {
    "amount": 250,
    "fluid": "tfmg:liquid_concrete"
  },
  "result": "tfmg:bottle_of_concrete"
});
<recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct_fill_bottle_of_battery_acid", {
  "type": "tconstruct:casting_table",
  "cast": {
    "item": "minecraft:glass_bottle"
  },
  "cast_consumed": true,
  "cooling_time": 1,
  "fluid": {
    "amount": 250,
    "fluid": "tfmg:sulfuric_acid"
  },
  "result": "tfmg:bottle_of_battery_acid"
});