#modloaded createbigcannons

<recipetype:createbigcannons:melting>.addJsonRecipe("create_melt_ice", {
  "type": "createbigcannons:melting",
  "heatRequirement": "heated",
  "ingredients": [
    {
      "item": "minecraft:ice"
    }
  ],
  "processingTime": 60,
  "results": [
    {
      "amount": 1000,
      "fluid": "minecraft:water"
    }
  ]
});
<recipetype:createbigcannons:melting>.addJsonRecipe("create_melt_snow", {
  "type": "createbigcannons:melting",
  "heatRequirement": "heated",
  "ingredients": [
    {
      "item": "minecraft:snow_block"
    }
  ],
  "processingTime": 25,
  "results": [
    {
      "amount": 500,
      "fluid": "minecraft:water"
    }
  ]
});
<recipetype:createbigcannons:melting>.addJsonRecipe("create_melt_snowball", {
  "type": "createbigcannons:melting",
  "heatRequirement": "heated",
  "ingredients": [
    {
      "item": "minecraft:snowball"
    }
  ],
  "processingTime": 5,
  "results": [
    {
      "amount": 125,
      "fluid": "minecraft:water"
    }
  ]
});