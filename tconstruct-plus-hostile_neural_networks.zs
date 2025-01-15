#modloaded tconstruct hostilenetworks

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
  "energy": 50000
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
#endif