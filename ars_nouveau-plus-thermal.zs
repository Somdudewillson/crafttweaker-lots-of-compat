#modloaded ars_nouveau thermal thermal_expansion

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;

var SOURCE_TO_RF_FUEL_FACTOR = ConvertableEnergy.getConversionFactor(EnergyType.ARS_SOURCE, EnergyType.REDSTONE_FLUX)*1.1;

recipes.addJsonRecipe("thermal_lapidary_fuel_source_gem", {
  "type": "thermal:lapidary_fuel",
  "ingredient": {
    "tag": "forge:gems/source"
  },
  "energy": 40000+(500*SOURCE_TO_RF_FUEL_FACTOR) as int
});
if (ConvertableEnergy.getConversionFactor(EnergyType.EXPERIENCE_POINTS, EnergyType.REDSTONE_FLUX)>0) {
  recipes.addJsonRecipe("thermal_disenchantment_fuel_xp_gem", {
    "type": "thermal:disenchantment_fuel",
    "ingredient": {
      "item": "ars_nouveau:experience_gem"
    },
    "energy": new ConvertableEnergy(EnergyType.EXPERIENCE_POINTS,3).to(EnergyType.REDSTONE_FLUX).amount as int
  });
  recipes.addJsonRecipe("thermal_disenchantment_fuel_greater_xp_gem", {
    "type": "thermal:disenchantment_fuel",
    "ingredient": {
      "item": "ars_nouveau:greater_experience_gem"
    },
    "energy": new ConvertableEnergy(EnergyType.EXPERIENCE_POINTS,12).to(EnergyType.REDSTONE_FLUX).amount as int
  });
}