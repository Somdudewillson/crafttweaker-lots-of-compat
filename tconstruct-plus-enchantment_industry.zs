#modloaded tconstruct create create_enchantment_industry

// Filling
<recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct_fill_hyper_experience_bottle", {
  "type": "tconstruct:casting_table",
  "cast": {
    "item": "minecraft:glass_bottle"
  },
  "cast_consumed": true,
  "cooling_time": 1,
  "fluid": {
    "amount": 10,
    "fluid": "create_enchantment_industry:hyper_experience"
  },
  "result": "create_enchantment_industry:hyper_experience_bottle"
});