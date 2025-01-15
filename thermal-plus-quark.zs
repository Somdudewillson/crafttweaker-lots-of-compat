#modloaded quark thermal thermal_expansion

// Disenchantment Fuel
if (ConvertableEnergy.getConversionFactor(EnergyType.EXPERIENCE_POINTS, EnergyType.REDSTONE_FLUX)>0) {
  recipes.addJsonRecipe("thermal_disenchantment_fuel_ancient_fruit", {
    "type": "thermal:disenchantment_fuel",
    "ingredient": {
      "item": "quark:ancient_fruit"
    },
    "energy": new ConvertableEnergy(EnergyType.EXPERIENCE_POINTS,10).to(EnergyType.REDSTONE_FLUX).amount as int
  });
}