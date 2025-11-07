#modloaded create aether

import crafttweaker.api.data.IData;

// Filling
<recipetype:create:filling>.addJsonRecipe("create_fill_skyroot_water_bucket", {
  "type": "create:filling",
  "ingredients": [
    {
      "item": "aether:skyroot_bucket"
    },
    {
      "amount": 1000,
      "fluid": "minecraft:water"
    }
  ],
  "results": [
    {
      "item": "aether:skyroot_water_bucket"
    }
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_fill_skyroot_milk_bucket", {
  "type": "create:filling",
  "ingredients": [
    {
      "item": "aether:skyroot_bucket"
    },
    (ContextualConstants.MILK_FLUID * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ],
  "results": [
    {
      "item": "aether:skyroot_milk_bucket"
    }
  ]
});

// Emptying
// <recipetype:create:emptying>.removeByName("create:empty_aether_skyroot_milk_bucket_of_minecraft_milk");
<recipetype:create:emptying>.addJsonRecipe("create_empty_skyroot_water_bucket", {
  "type": "create:emptying",
  "ingredients": [
    {
      "item": "aether:skyroot_water_bucket"
    }
  ],
  "results": [
    {
      "item": "aether:skyroot_bucket"
    },
    {
      "amount": 1000,
      "fluid": "minecraft:water"
    }
  ]
});
<recipetype:create:emptying>.addJsonRecipe("create_empty_skyroot_milk_bucket", {
  "type": "create:emptying",
  "ingredients": [
    {
      "item": "aether:skyroot_milk_bucket"
    }
  ],
  "results": [
    {
      "item": "aether:skyroot_bucket"
    },
    (ContextualConstants.MILK_FLUID * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ]
});