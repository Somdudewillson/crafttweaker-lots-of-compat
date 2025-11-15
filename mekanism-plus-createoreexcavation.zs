#modloaded createoreexcavation mekanism

import crafttweaker.api.data.IData;

// Raw Material Processing
<recipetype:mekanism:crushing>.addJsonRecipe("mekanism_crushing/redstone/from_raw", {
    "type": "mekanism:crushing",
    "input": {
        "ingredient": <item:createoreexcavation:raw_redstone> as IData
    },
    "output": (<item:minecraft:redstone> * 4) as IData
});

<recipetype:mekanism:sawing>.addJsonRecipe("mekanism_sawing/diamond/from_raw", {
  "type": "mekanism:sawing",
  "input": {
    "ingredient": <item:createoreexcavation:raw_diamond> as IData
  },
  "mainOutput": <item:minecraft:diamond> as IData
});

<recipetype:mekanism:sawing>.addJsonRecipe("mekanism_sawing/emerald/from_raw", {
  "type": "mekanism:sawing",
  "input": {
    "ingredient": <item:createoreexcavation:raw_emerald> as IData
  },
  "mainOutput": <item:minecraft:emerald> as IData
});