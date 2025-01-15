#modloaded ae2 thermal thermal_expansion

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;

<recipetype:thermal:crystallizer>.addJsonRecipe("crystallizer_certus_quartz", {
  "type": "thermal:crystallizer",
  "ingredients": [
    {
      "fluid": "minecraft:water",
      "amount": 2000
    },
    {
      "tag": "forge:dusts/certus_quartz"
    }
  ],
  "result": [
    {
      "item": "ae2:certus_quartz_crystal"
    }
  ]
});
<recipetype:thermal:crystallizer>.addJsonRecipe("crystallizer_charged_certus_quartz_propagation", {
  "type": "thermal:crystallizer",
  "ingredients": [
    {
      "fluid": "minecraft:water",
      "amount": 2000
    },
    {
      "tag": "forge:dusts/certus_quartz"
    },
    {
      "item": "ae2:charged_certus_quartz_crystal"
    }
  ],
  "result": (<item:ae2:charged_certus_quartz_crystal> * 2) as IData,
  "energy": 5000
});
<recipetype:thermal:crystallizer>.addJsonRecipe("crystallizer_fluix_crystal_from_dust", {
  "type": "thermal:crystallizer",
  "ingredients": [
    {
      "fluid": "minecraft:water",
      "amount": 2000
    },
    {
      "item": "ae2:charged_certus_quartz_crystal"
    },
    {
      "tag": "forge:dusts/fluix"
    }
  ],
  "result": [
    <item:ae2:fluix_crystal> as IData
  ],
  "energy": 5000
});
<recipetype:thermal:crystallizer>.addJsonRecipe("crystallizer_fluix_crystal_from_components", {
  "type": "thermal:crystallizer",
  "ingredients": [
    {
      "fluid": "thermal:redstone",
      "amount": 100
    },
    {
      "item": "ae2:charged_certus_quartz_crystal"
    },
    ((<tag:items:forge:gems/quartz> as IIngredient) | <tag:items:forge:dusts/quartz>) as IData
  ],
  "result": [
    (<item:ae2:fluix_crystal> * 2) as IData
  ],
  "energy": 5000
});

recipes.addJsonRecipe("thermal_lapidary_fuel_certus_quartz", {
  "type": "thermal:lapidary_fuel",
  "ingredient": {
    "item": "ae2:certus_quartz_crystal"
  },
  "energy": 30000 as int
});
recipes.addJsonRecipe("thermal_lapidary_fuel_charged_certus_quartz", {
  "type": "thermal:lapidary_fuel",
  "ingredient": {
    "item": "ae2:charged_certus_quartz_crystal"
  },
  "energy": new ConvertableEnergy(EnergyType.APPLIED_ENERGY,1600).to(EnergyType.REDSTONE_FLUX).amount + 30000 as int
});
recipes.addJsonRecipe("thermal_lapidary_fuel_fluix_crystal", {
  "type": "thermal:lapidary_fuel",
  "ingredient": {
    "item": "ae2:fluix_crystal"
  },
  "energy": new ConvertableEnergy(EnergyType.APPLIED_ENERGY,1600).to(EnergyType.REDSTONE_FLUX).amount + (30000 + 40000 + 1000)/2 as int
});

#onlyif modloaded create
<recipetype:create:mixing>.addJsonRecipe("create_mix_fluix_crystal_in_destabilized_redstone", {
  "type": "create:mixing",
  "ingredients": [
    {
      "item": "ae2:charged_certus_quartz_crystal"
    },
    ((<tag:items:forge:gems/quartz> as IIngredient) | <tag:items:forge:dusts/quartz>) as IData,
    {
      "amount": 100,
      "fluid": "thermal:redstone"
    }
  ],
  "results": [
    (<item:ae2:fluix_crystal> * 2) as IData
  ]
});
#endif