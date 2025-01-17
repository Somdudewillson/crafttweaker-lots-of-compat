#modloaded tconstruct quark

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;

<recipetype:tconstruct:melting>.addJsonRecipe("melting_quark_iron_plates", {
  "type": "tconstruct:melting",
  "ingredient": [
    (<item:quark:iron_plate> as IIngredient | <item:quark:iron_pillar> | <item:quark:iron_plate_stairs>) as IData
  ],
  "result": {
    "amount": 30,
    "fluid": "tconstruct:molten_iron"
  },
  "temperature": 800,
  "time": 15*4
});
<recipetype:tconstruct:melting>.addJsonRecipe("melting_quark_iron_plate_slabs", {
  "type": "tconstruct:melting",
  "ingredient": [
    (<item:quark:iron_plate_slab> as IIngredient | <item:quark:iron_plate_vertical_slab>) as IData
  ],
  "result": {
    "amount": 15,
    "fluid": "tconstruct:molten_iron"
  },
  "temperature": 800,
  "time": 7.5*4
});