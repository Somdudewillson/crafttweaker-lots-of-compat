#modloaded grimoireofgaia thermal thermal_expansion

if (ConvertableEnergy.getConversionFactor(EnergyType.EXPERIENCE_LEVELS, EnergyType.REDSTONE_FLUX)>0) {
    recipes.addJsonRecipe("thermal_disenchantment_fuel_experience_iron", {
        "type": "thermal:disenchantment_fuel",
        "ingredient": {
            "item": "grimoireofgaia:experience_iron"
        },
        "energy": new ConvertableEnergy(EnergyType.EXPERIENCE_LEVELS,1).to(EnergyType.REDSTONE_FLUX).amount as int
    });
    recipes.addJsonRecipe("thermal_disenchantment_fuel_experience_gold", {
        "type": "thermal:disenchantment_fuel",
        "ingredient": {
            "item": "grimoireofgaia:experience_gold"
        },
        "energy": new ConvertableEnergy(EnergyType.EXPERIENCE_LEVELS,2).to(EnergyType.REDSTONE_FLUX).amount as int
    });
    recipes.addJsonRecipe("thermal_disenchantment_fuel_experience_diamond", {
        "type": "thermal:disenchantment_fuel",
        "ingredient": {
            "item": "grimoireofgaia:experience_diamond"
        },
        "energy": new ConvertableEnergy(EnergyType.EXPERIENCE_LEVELS,4).to(EnergyType.REDSTONE_FLUX).amount as int
    });
}