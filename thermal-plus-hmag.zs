#modloaded hmag thermal thermal_expansion

// Disenchantment Fuel
if (ConvertableEnergy.getConversionFactor(EnergyType.EXPERIENCE_POINTS, EnergyType.REDSTONE_FLUX)>0) {
  recipes.addJsonRecipe("thermal_disenchantment_fuel_exp_berry", {
    "type": "thermal:disenchantment_fuel",
    "ingredient": {
      "item": "hmag:exp_berry"
    },
    "energy": new ConvertableEnergy(EnergyType.EXPERIENCE_POINTS,15).to(EnergyType.REDSTONE_FLUX).amount as int
  });
}