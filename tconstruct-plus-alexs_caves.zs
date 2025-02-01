#modloaded tconstruct alexscaves

// Ferrouslime Ball Creation
<recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct_cast_ferrouslime_ball_from_slime_ball_and_molten_iron", {
  "type": "tconstruct:casting_table",
  "cast": {
    "tag": "forge:slimeballs"
  },
  "cast_consumed": true,
  "cooling_time": 20,
  "fluid": {
    "amount": 90,
    "fluid": "tconstruct:molten_iron"
  },
  "result": "alexscaves:ferrouslime_ball"
});
if (<tag:items:forge:dusts/iron>.elements.length>0) {
    <recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct_cast_ferrouslime_ball_from_iron_dust_and_liquid_slime", {
        "type": "tconstruct:casting_table",
        "cast": {
            "tag": "forge:dusts/iron"
        },
        "cast_consumed": true,
        "cooling_time": 20,
        "fluid": {
            "amount": 250,
            "tag": "lots_of_compat:liquid_slime"
        },
        "result": "alexscaves:ferrouslime_ball"
    });
}

// Filling
if (<tag:fluids:forge:chocolate>.exists() && <tag:fluids:forge:chocolate>.elements.length > 0) {
  <recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct_fill_hot_chocolate_bottle", {
    "type": "tconstruct:casting_table",
    "cast": {
      "item": "minecraft:glass_bottle"
    },
    "cast_consumed": true,
    "cooling_time": 1,
    "fluid": {
      "amount": 250,
      "tag": "forge:chocolate"
    },
    "result": "alexscaves:hot_chocolate_bottle"
  });
}
<recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct_fill_purple_soda_bottle", {
  "type": "tconstruct:casting_table",
  "cast": {
    "item": "minecraft:glass_bottle"
  },
  "cast_consumed": true,
  "cooling_time": 1,
  "fluid": {
    "amount": 250,
    "fluid": "alexscaves:purple_soda"
  },
  "result": "alexscaves:purple_soda_bottle"
});

// Casting
<recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct_cast_alexscaves_uranium_with_disposable_cast", {
  "type": "tconstruct:casting_table",
  "cast": {
    "tag": "tconstruct:casts/single_use/gem"
  },
  "cast_consumed": true,
  "cooling_time": 5*20,
  "fluid": {
    "amount": 120,
    "fluid": "tconstruct:molten_uranium"
  },
  "result": "alexscaves:uranium"
});
<recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct_cast_alexscaves_uranium_with_reusable_cast", {
  "type": "tconstruct:casting_table",
  "cast": {
    "tag": "tconstruct:casts/multi_use/gem"
  },
  "cast_consumed": false,
  "cooling_time": 5*20,
  "fluid": {
    "amount": 120,
    "fluid": "tconstruct:molten_uranium"
  },
  "result": "alexscaves:uranium"
});


<recipetype:tconstruct:melting>.addJsonRecipe("tconstruct_melt_unrefined_waste", {
  "type": "tconstruct:melting",
  "ingredient": [
    {
      "item": "alexscaves:unrefined_waste"
    }
  ],
  "result": {
    "amount": 15,
    "fluid": "tconstruct:molten_uranium"
  },
  "temperature": 830,
  "time": 60*20
});