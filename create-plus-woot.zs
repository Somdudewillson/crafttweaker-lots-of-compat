#modloaded create woot_revived

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;

<recipetype:create:mixing>.addJsonRecipe("create_mix/alloy/stygian/ingot", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    (<tag:items:forge:ingots/iron> as IIngredient | <tag:items:forge:dusts/iron>) as IData,
    <item:minecraft:soul_soil> as IData,
    <item:minecraft:amethyst_shard> as IData
  ],
  "results": [(<item:woot_revived:stygian_ingot> * 2) as IData]
});

<recipetype:create:compacting>.addJsonRecipe("create_compact/woot_plate/stygian_plate", {
  "type": "create:compacting",
  "heatRequirement": "heated",
  "ingredients": [
    <item:woot_revived:stygian_ingot> as IData,
    <item:woot_revived:plate_mold> as IData
  ],
  "results": [
    <item:woot_revived:plate_mold> as IData,
    <item:woot_revived:stygian_plate> as IData
  ]
});
<recipetype:create:compacting>.addJsonRecipe("create_compact/woot_shard/mob_shard", {
  "type": "create:compacting",
  "heatRequirement": "heated",
  "ingredients": [
    <item:woot_revived:stygian_ingot> as IData,
    <item:woot_revived:stygian_ingot> as IData,
    <item:woot_revived:shard_mold> as IData
  ],
  "results": [
    <item:woot_revived:shard_mold> as IData,
    <item:woot_revived:mob_shard> as IData
  ]
});
<recipetype:create:compacting>.addJsonRecipe("create_compact/woot_shard/copper_shard", {
  "type": "create:compacting",
  "heatRequirement": "heated",
  "ingredients": [
    <tag:items:forge:ingots/copper> as IData,
    <tag:items:forge:ingots/copper> as IData,
    <tag:items:forge:ingots/copper> as IData,
    <tag:items:forge:ingots/copper> as IData,
    <item:woot_revived:shard_mold> as IData
  ],
  "results": [
    <item:woot_revived:shard_mold> as IData,
    <item:woot_revived:copper_shard> as IData
  ]
});