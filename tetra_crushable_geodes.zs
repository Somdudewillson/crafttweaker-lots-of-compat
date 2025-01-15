#modloaded tetra

import crafttweaker.api.mod.Mods;

val GEODE_WEIGHT_TOTAL = 66.0;

#onlyif modloaded thermal thermal_expansion
<recipetype:thermal:pulverizer>.addJsonRecipe("thermal_pulverize_tetra_geode", {
  "type": "thermal:pulverizer",
  "ingredient": {
    "item": "tetra:geode"
  },
  "result": [
    {
      "item": "tetra:pristine_diamond",
      "chance": 6/GEODE_WEIGHT_TOTAL
    },
    {
      "item": "tetra:pristine_emerald",
      "chance": 4/GEODE_WEIGHT_TOTAL
    },
    {
      "item": "tetra:pristine_lapis",
      "chance": 8/GEODE_WEIGHT_TOTAL
    },
    {
      "item": "tetra:pristine_amethyst",
      "chance": 8/GEODE_WEIGHT_TOTAL
    }
  ],
  "experience": 0.1
});
#endif

#onlyif modloaded create
<recipetype:create:crushing>.addJsonRecipe("create_crush_tetra_geode", {
  "type": "create:crushing",
  "ingredients": [
    {
      "item": "tetra:geode"
    }
  ],
  "processingTime": 350,
  "results": [
    {
      "chance": 6/GEODE_WEIGHT_TOTAL,
      "item": "tetra:pristine_diamond"
    },
    {
      "chance": 4/GEODE_WEIGHT_TOTAL,
      "item": "tetra:pristine_emerald"
    },
    {
      "chance": 8/GEODE_WEIGHT_TOTAL,
      "item": "tetra:pristine_lapis"
    },
    {
      "chance": 8/GEODE_WEIGHT_TOTAL,
      "item": "tetra:pristine_amethyst"
    },
    {
      "chance": 4/GEODE_WEIGHT_TOTAL,
      "item": "minecraft:diamond"
    },
    {
      "chance": 2/GEODE_WEIGHT_TOTAL,
      "item": "minecraft:amethyst_shard"
    },
    {
      "chance": 4/GEODE_WEIGHT_TOTAL,
      "item": "minecraft:emerald"
    },
    {
      "chance": 5/GEODE_WEIGHT_TOTAL,
      "count": 7,
      "item": "minecraft:redstone"
    },
    {
      "chance": 5/GEODE_WEIGHT_TOTAL,
      "count": 7,
      "item": "minecraft:lapis_lazuli"
    }
  ]
});
#endif