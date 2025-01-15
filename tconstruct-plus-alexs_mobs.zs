#modloaded tconstruct alexsmobs

// Filling
<recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct_fill_lava_bottle", {
  "type": "tconstruct:casting_table",
  "cast": {
    "item": "minecraft:glass_bottle"
  },
  "cast_consumed": true,
  "cooling_time": 1,
  "fluid": {
    "amount": 250,
    "fluid": "minecraft:lava"
  },
  "result": "alexsmobs:lava_bottle"
});