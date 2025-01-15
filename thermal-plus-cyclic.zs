#modloaded thermal thermal_expansion cyclic

<recipetype:thermal:crucible>.removeByName("thermal:machines/crucible/crucible_magma_block_to_lava");
<recipetype:thermal:crucible>.addJsonRecipe("crucible_magma_block_to_liquid_magma", {
  "type": "thermal:crucible",
  "ingredient": {
    "item": "minecraft:magma_block"
  },
  "result": [
    {
      "fluid": "cyclic:magma",
      "amount": 1000
    }
  ],
  "energy": 4800
});