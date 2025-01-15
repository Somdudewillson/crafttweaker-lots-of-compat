#modloaded create mekanism thermal

<recipetype:create:pressing>.addJsonRecipe("create_press_coal_to_dust", {
  "type": "create:pressing",
  "ingredients": [
    {
      "item": "minecraft:coal"
    }
  ],
  "results": [
    {
      "item": "mekanism:dust_coal"
    }
  ]
});
<recipetype:create:pressing>.addJsonRecipe("create_press_charcoal_to_dust", {
  "type": "create:pressing",
  "ingredients": [
    {
      "item": "minecraft:charcoal"
    }
  ],
  "results": [
    {
      "item": "mekanism:dust_charcoal"
    }
  ]
});

<recipetype:create:mixing>.addJsonRecipe("create_mix_enriched_iron", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    {
      "tag": "forge:ingots/iron"
    },
    {
      "tag": "forge:dusts/charcoal"
    }
  ],
  "results": [
    {
      "count": 1,
      "item": "mekanism:enriched_iron"
    }
  ]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_steel", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    {
      "item": "mekanism:enriched_iron"
    },
    {
      "tag": "forge:dusts/coal"
    }
  ],
  "results": [
    {
      "count": 1,
      "item": "thermal:steel_ingot"
    }
  ]
});