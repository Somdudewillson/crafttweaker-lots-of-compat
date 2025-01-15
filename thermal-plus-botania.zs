#modloaded botania thermal thermal_expansion

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;

var MANA_TO_RF_FUEL_FACTOR = ConvertableEnergy.getConversionFactor(EnergyType.BOTANIA_MANA, EnergyType.REDSTONE_FLUX)*1.1;
var ELVEN_TRADE_FACTOR = 1.25;

recipes.addJsonRecipe("thermal_lapidary_fuel_mana_diamond", {
  "type": "thermal:lapidary_fuel",
  "ingredient": {
    "tag": "forge:gems/mana_diamond"
  },
  "energy": 500000+(10000*MANA_TO_RF_FUEL_FACTOR) as int
});
recipes.addJsonRecipe("thermal_lapidary_fuel_dragonstone", {
  "type": "thermal:lapidary_fuel",
  "ingredient": {
    "tag": "forge:gems/dragonstone"
  },
  "energy": (500000+(10000*MANA_TO_RF_FUEL_FACTOR))*ELVEN_TRADE_FACTOR as int
});
recipes.addJsonRecipe("thermal_lapidary_fuel_mana_quartz", {
  "type": "thermal:lapidary_fuel",
  "ingredient": {
    "item": "botania:quartz_mana"
  },
  "energy": 40000+(250*MANA_TO_RF_FUEL_FACTOR)
});
recipes.addJsonRecipe("thermal_lapidary_fuel_flower_quartz", {
  "type": "thermal:lapidary_fuel",
  "ingredient": (<item:botania:quartz_lavender> as IIngredient | <item:botania:quartz_sunny>)as IData,
  "energy": 40000
});
recipes.addJsonRecipe("thermal_lapidary_fuel_blaze_quartz", {
  "type": "thermal:lapidary_fuel",
  "ingredient": {
    "item": "botania:quartz_blaze"
  },
  "energy": 40000+((12000/8)*2) as int
});
recipes.addJsonRecipe("thermal_lapidary_fuel_redstone_quartz", {
  "type": "thermal:lapidary_fuel",
  "ingredient": {
    "item": "botania:quartz_red"
  },
  "energy": 40000+((4000/8)*2) as int
});
recipes.addJsonRecipe("thermal_lapidary_fuel_elven_quartz", {
  "type": "thermal:lapidary_fuel",
  "ingredient": {
    "item": "botania:quartz_elven"
  },
  "energy": 40000*ELVEN_TRADE_FACTOR as int
});