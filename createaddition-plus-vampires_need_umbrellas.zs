#modloaded create createaddition vampiresneedumbrellas

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;

<recipetype:createaddition:rolling>.addJsonRecipe("roll_iron_umbrella_rod", {
	"type":"createaddition:rolling",
	"input": {
      	"tag": "forge:rods/iron"
	},
	"result": (<item:vampiresneedumbrellas:iron_umbrella_rod> * 1) as IData
});
<recipetype:createaddition:rolling>.addJsonRecipe("roll_gold_umbrella_rod", {
	"type":"createaddition:rolling",
	"input": {
      	"tag": "forge:rods/gold"
	},
	"result": (<item:vampiresneedumbrellas:gold_umbrella_rod> * 1) as IData
});