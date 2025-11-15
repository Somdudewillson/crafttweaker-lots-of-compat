#modloaded createoreexcavation thermal thermal_expansion

import crafttweaker.api.data.IData;

// Raw Material Processing
<recipetype:thermal:pulverizer>.addJsonRecipe("thermal_pulverizer/redstone/from_raw", {
    "type": "thermal:pulverizer",
    "ingredient": <item:createoreexcavation:raw_redstone> as IData,
    "result": [ 
        CreateUtils.convertItemResult(<item:minecraft:redstone> % 400)
    ],
    "experience": 0.4
});

<recipetype:thermal:sawmill>.addJsonRecipe("thermal_sawmill/diamond/from_raw", {
  "type": "thermal:sawmill",
  "ingredient": <item:createoreexcavation:raw_diamond> as IData,
  "result": [ CreateUtils.convertItemResult(<item:minecraft:diamond> % 100) ],
  "energy": 5000,
  "experience": 0.8
});

<recipetype:thermal:sawmill>.addJsonRecipe("thermal_sawmill/emerald/from_raw", {
  "type": "thermal:sawmill",
  "ingredient": <item:createoreexcavation:raw_emerald> as IData,
  "result": [ CreateUtils.convertItemResult(<item:minecraft:emerald> % 100) ],
  "energy": 5000,
  "experience": 0.8
});