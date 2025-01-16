#modloaded tconstruct hostilenetworks

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;

<recipetype:tconstruct:melting>.addJsonRecipe("melting_generalized_overworld_prediction", {
  "type": "tconstruct:melting",
  "ingredient": [
    {
      "item": "hostilenetworks:overworld_prediction"
    }
  ],
  "result": {
    "amount": 50*10*8,
    "fluid": "tconstruct:meat_soup"
  },
  "temperature": 200,
  "time": 60
});
<recipetype:tconstruct:melting>.addJsonRecipe("melting_generalized_nether_prediction", {
  "type": "tconstruct:melting",
  "ingredient": [
    {
      "item": "hostilenetworks:nether_prediction"
    }
  ],
  "result": {
    "amount": 25*10*8,
    "fluid": "tconstruct:liquid_soul"
  },
  "temperature": 400,
  "time": 60
});
<recipetype:tconstruct:melting>.addJsonRecipe("melting_generalized_end_prediction", {
  "type": "tconstruct:melting",
  "ingredient": [
    {
      "item": "hostilenetworks:end_prediction"
    }
  ],
  "result": {
    "amount": 25*20*8,
    "fluid": "tconstruct:molten_ender"
  },
  "temperature": 477,
  "time": 60
});
<recipetype:tconstruct:melting>.addJsonRecipe("melting_blaze_prediction", {
  "type": "tconstruct:melting",
  "ingredient": [
    <item:hostilenetworks:prediction>.withTag({data_model: {id: "hostilenetworks:blaze"}}) as IData
  ],
  "result": {
    "amount": 20*10*16,
    "fluid": "tconstruct:blazing_blood"
  },
  "temperature": 1000,
  "time": 60
});

#onlyif modloaded thermal thermal_expansion
<recipetype:thermal:crucible>.addJsonRecipe("crucible_generalized_overworld_prediction", {
  "type": "thermal:crucible",
  "ingredient": {
    "item": "hostilenetworks:overworld_prediction"
  },
  "result": [
    {
      "fluid": "tconstruct:meat_soup",
      "amount": 50*10*8
    }
  ],
  "energy": 25000
});
<recipetype:thermal:crucible>.addJsonRecipe("crucible_generalized_nether_prediction", {
  "type": "thermal:crucible",
  "ingredient": {
    "item": "hostilenetworks:nether_prediction"
  },
  "result": [
    {
      "fluid": "tconstruct:liquid_soul",
      "amount": 25*10*8
    }
  ],
  "energy": 50000
});
<recipetype:thermal:crucible>.addJsonRecipe("crucible_generalized_end_prediction", {
  "type": "thermal:crucible",
  "ingredient": {
    "item": "hostilenetworks:end_prediction"
  },
  "result": [
    {
      "fluid": "tconstruct:molten_ender",
      "amount": 25*10*8
    }
  ],
  "energy": 60000
});
<recipetype:thermal:crucible>.addJsonRecipe("crucible_blaze_prediction", {
  "type": "thermal:crucible",
  "ingredient": <item:hostilenetworks:prediction>.withTag({data_model: {id: "hostilenetworks:blaze"}}) as IData,
  "result": [
    {
      "fluid": "tconstruct:blazing_blood",
      "amount": 20*10*16
    }
  ],
  "energy": 200000
});
#endif