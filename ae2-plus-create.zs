#modloaded ae2 create

import crafttweaker.api.data.IData;

<recipetype:create:mixing>.addJsonRecipe("create_mix_grow_certus_quartz", {
  "type": "create:mixing",
  "ingredients": [
    {
      "item": "ae2:charged_certus_quartz_crystal"
    },
    <tag:items:forge:dusts/certus_quartz> as IData,
    {
      "amount": 100,
      "fluid": "minecraft:water"
    }
  ],
  "results": [
    (<item:ae2:certus_quartz_crystal> * 2) as IData
  ]
});

<recipetype:create:compacting>.addJsonRecipe("create_compact_fluix_pearl", {
  "type": "create:compacting",
  "ingredients": [
    {
      "tag": "forge:ender_pearls"
    },
    {
      "tag": "forge:dusts/fluix"
    },
    {
      "tag": "forge:dusts/fluix"
    },
    {
      "tag": "forge:dusts/fluix"
    },
    {
      "tag": "forge:dusts/fluix"
    },
    {
      "tag": "forge:gems/fluix"
    },
    {
      "tag": "forge:gems/fluix"
    },
    {
      "tag": "forge:gems/fluix"
    },
    {
      "tag": "forge:gems/fluix"
    }
  ],
  "results": [
    {
      "item": "ae2:fluix_pearl"
    }
  ]
});