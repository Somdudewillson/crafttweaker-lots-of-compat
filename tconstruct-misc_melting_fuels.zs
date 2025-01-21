#modloaded tconstruct

recipes.addJsonRecipe("melting_fuel_magma", {
  "type": "tconstruct:melting_fuel",
  "duration": 100,
  "fluid": {
    "amount": 50,
    "fluid": "tconstruct:magma"
  },
  "rate": 8,
  "temperature": 800
});
#onlyif modloaded burnt
recipes.addJsonRecipe("melting_fuel_burnt_magma", {
  "type": "tconstruct:melting_fuel",
  "duration": 100,
  "fluid": {
    "amount": 50,
    "fluid": "burnt:liquid_magma"
  },
  "rate": 8,
  "temperature": 800
});
#endif
#onlyif modloaded bigreactors
recipes.addJsonRecipe("melting_fuel_bigreactors_steam", {
  "type": "tconstruct:melting_fuel",
  "duration": 100,
  "fluid": {
    "amount": 50,
    "fluid": "bigreactors:steam"
  },
  "rate": 1,
  "temperature": 100
});
#endif