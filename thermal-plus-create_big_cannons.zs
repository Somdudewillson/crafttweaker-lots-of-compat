#modloaded createbigcannons thermal thermal_expansion

// Material Melting
<recipetype:createbigcannons:melting>.addJsonRecipe("create_melt_redstone_dust", {
  "type": "createbigcannons:melting",
  "heatRequirement": "heated",
  "ingredients": [
    {
      "tag": "forge:dusts/redstone"
    }
  ],
  "processingTime": 100,
  "results": [
    {
      "amount": 100,
      "fluid": "thermal:redstone"
    }
  ]
});
<recipetype:createbigcannons:melting>.addJsonRecipe("create_melt_ender_pearl", {
  "type": "createbigcannons:melting",
  "heatRequirement": "heated",
  "ingredients": [
    {
      "tag": "forge:ender_pearls"
    }
  ],
  "processingTime": 810,
  "results": [
    {
      "amount": 250,
      "fluid": "thermal:ender"
    }
  ]
});

<recipetype:createbigcannons:melting>.addJsonRecipe("create_melt_glowstone_dust", {
  "type": "createbigcannons:melting",
  "heatRequirement": "superheated",
  "ingredients": [
    {
      "tag": "forge:dusts/glowstone"
    }
  ],
  "processingTime": 400,
  "results": [
    {
      "amount": 250,
      "fluid": "thermal:glowstone"
    }
  ]
});
<recipetype:createbigcannons:melting>.addJsonRecipe("create_melt_redstone_block", {
  "type": "createbigcannons:melting",
  "heatRequirement": "superheated",
  "ingredients": [
    {
      "tag": "forge:storage_blocks/redstone"
    }
  ],
  "processingTime": 450,
  "results": [
    {
      "amount": 900,
      "fluid": "thermal:redstone"
    }
  ]
});
<recipetype:createbigcannons:melting>.addJsonRecipe("create_melt_glowstone_block", {
  "type": "createbigcannons:melting",
  "heatRequirement": "superheated",
  "ingredients": [
    {
      "tag": "forge:storage_blocks/glowstone"
    }
  ],
  "processingTime": 800,
  "results": [
    {
      "amount": 1000,
      "fluid": "thermal:glowstone"
    }
  ]
});