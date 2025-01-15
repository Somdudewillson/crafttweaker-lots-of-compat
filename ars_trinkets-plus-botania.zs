#modloaded ars_trinkets botania

<recipetype:botania:terra_plate>.addJsonRecipe("discounted_terrasteel_ars_nouveau", {
  "type": "botania:terra_plate",
  "ingredients": [
    {
      "item": "botania:manasteel_ingot"
    },
    {
      "item": "botania:mana_pearl"
    },
    {
      "item": "botania:mana_diamond"
    },
    {
      "item": "ars_trinkets:green_essence"
    }
  ],
  "mana": 50000,
  "result": {
    "item": "botania:terrasteel_ingot"
  }
});

// Mana Pool Transmutation [Resource Essence Extraction] Recipes
<recipetype:botania:mana_infusion>.addJsonRecipe("copper_to_copper_essence_botania", {
  "type": "botania:mana_infusion",
  "catalyst": {
    "type": "block",
    "block": "botania:transmutation_catalyst"
  },
  "input": {
    "tag": "forge:storage_blocks/copper"
  },
  "mana": new ConvertableEnergy(EnergyType.ARS_SOURCE, 10*4).to(EnergyType.BOTANIA_MANA),
  "output": {
    "item": "ars_trinkets:copper_essence"
  }
});
<recipetype:botania:mana_infusion>.addJsonRecipe("iron_to_iron_essence_botania", {
  "type": "botania:mana_infusion",
  "catalyst": {
    "type": "block",
    "block": "botania:transmutation_catalyst"
  },
  "input": {
    "tag": "forge:storage_blocks/iron"
  },
  "mana": new ConvertableEnergy(EnergyType.ARS_SOURCE, 20*4).to(EnergyType.BOTANIA_MANA),
  "output": {
    "item": "ars_trinkets:iron_essence"
  }
});
<recipetype:botania:mana_infusion>.addJsonRecipe("silver_to_silver_essence_botania", {
  "type": "botania:mana_infusion",
  "catalyst": {
    "type": "block",
    "block": "botania:transmutation_catalyst"
  },
  "input": {
    "tag": "forge:storage_blocks/silver"
  },
  "mana": new ConvertableEnergy(EnergyType.ARS_SOURCE, 40*4).to(EnergyType.BOTANIA_MANA),
  "output": {
    "item": "ars_trinkets:silver_essence"
  }
});
<recipetype:botania:mana_infusion>.addJsonRecipe("gold_to_gold_essence_botania", {
  "type": "botania:mana_infusion",
  "catalyst": {
    "type": "block",
    "block": "botania:transmutation_catalyst"
  },
  "input": {
    "tag": "forge:storage_blocks/gold"
  },
  "mana": new ConvertableEnergy(EnergyType.ARS_SOURCE, 80*4).to(EnergyType.BOTANIA_MANA),
  "output": {
    "item": "ars_trinkets:gold_essence"
  }
});
<recipetype:botania:mana_infusion>.addJsonRecipe("source_gem_to_crystal_essence_botania", {
  "type": "botania:mana_infusion",
  "catalyst": {
    "type": "block",
    "block": "botania:transmutation_catalyst"
  },
  "input": {
    "tag": "forge:storage_blocks/source"
  },
  "mana": new ConvertableEnergy(EnergyType.ARS_SOURCE, 160*4).to(EnergyType.BOTANIA_MANA),
  "output": {
    "item": "ars_trinkets:crystal_essence"
  }
});

// Black Lotus Crafting Recipes
<recipetype:ars_nouveau:enchanting_apparatus>.addJsonRecipe("mana_lotus_to_black_lotus", {
  "type": "ars_nouveau:enchanting_apparatus",
  "keepNbtOfReagent": false,
  "output": {
    "count": 8,
    "item": "botania:black_lotus"
  },
  "pedestalItems": [
    {
      "tag": "botania:mana_dusts"
    },
    {
      "tag": "botania:mana_dusts"
    },
    {
      "tag": "forge:dyes/black"
    },
  ],
  "reagent": [
    {
      "item": "ars_trinkets:essence_lotus_4"
    }
  ],
  "sourceCost": 0
});
<recipetype:ars_nouveau:enchanting_apparatus>.addJsonRecipe("mana_lotus_to_blacker_lotus", {
  "type": "ars_nouveau:enchanting_apparatus",
  "keepNbtOfReagent": false,
  "output": {
    "count": 8,
    "item": "botania:blacker_lotus"
  },
  "pedestalItems": [
    {
      "tag": "botania:mana_dusts"
    },
    {
      "tag": "botania:mana_dusts"
    },
    {
      "tag": "forge:dyes/black"
    },
  ],
  "reagent": [
    {
      "item": "ars_trinkets:essence_lotus_8"
    }
  ],
  "sourceCost": 0
});