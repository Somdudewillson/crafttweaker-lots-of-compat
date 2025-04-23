#modloaded create deeperdarker

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;

craftingTable.remove(<item:deeperdarker:resonarium_plate>);
craftingTable.addShapeless("craft_resonarium_plate_manual_only", <item:deeperdarker:resonarium_plate>, [
        <item:deeperdarker:resonarium>,
        <item:deeperdarker:resonarium>,
        <item:deeperdarker:resonarium>,
        <item:deeperdarker:resonarium>,
        <item:minecraft:scute>,
        <item:minecraft:scute>,
        <item:minecraft:scute>,
        <item:minecraft:scute>,
    ]);

<recipetype:create:compacting>.addJsonRecipe("create_compact_resonarium_plate", {
  "type": "create:compacting",
  "ingredients": [
    <item:deeperdarker:resonarium> as IData,
    <item:deeperdarker:resonarium> as IData,
    <item:deeperdarker:resonarium> as IData,
    <item:deeperdarker:resonarium> as IData,
    <item:minecraft:scute> as IData,
    <item:minecraft:scute> as IData,
    <item:minecraft:scute> as IData,
    <item:minecraft:scute> as IData
  ],
  "results": [
    (<item:deeperdarker:resonarium_plate> * 1) as IData
  ]
});