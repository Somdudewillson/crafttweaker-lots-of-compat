#modloaded foodtxf

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;

craftingTable.removeByName(["foodtxf:water_thermos_recipe","foodtxf:lava_thermos_recipe","foodtxf:milk_thermos_recipe"]);

((<item:foodtxf:glass_of_lava> as IIngredient).getRemainingItem(<item:foodtxf:glass>) as IIngredient).burnTime = 6667;
((<item:foodtxf:lava_thermos> as IIngredient).getRemainingItem(<item:foodtxf:thermos>) as IIngredient).burnTime = 20000;