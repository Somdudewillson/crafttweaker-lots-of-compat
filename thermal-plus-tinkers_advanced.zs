#modloaded thermal thermal_expansion tconstruct tinkers_advanced

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;

recipes.addJsonRecipe("magmatic_fuel_tinkers_advanced_over_heated_lava", {
  "type": "thermal:magmatic_fuel",
  "ingredient": {
    "fluid": "tinkers_advanced:over_heated_lava",
    "amount": 1000
  },
  "energy": 200000 * 1.2
});

recipes.addJsonRecipe("magmatic_fuel_tinkers_advanced_gaseous_lava", {
  "type": "thermal:magmatic_fuel",
  "ingredient": {
    "fluid": "tinkers_advanced:gaseous_lava",
    "amount": 1000
  },
  "energy": 400000 * 1.5
});

recipes.addJsonRecipe("magmatic_fuel_tinkers_advanced_plasmatic_lava", {
  "type": "thermal:magmatic_fuel",
  "ingredient": {
    "fluid": "tinkers_advanced:plasmatic_lava",
    "amount": 1000
  },
  "energy": 800000 * 1.8
});