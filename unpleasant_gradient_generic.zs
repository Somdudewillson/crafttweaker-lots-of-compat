#modloaded unpleasant_gradient

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;

(<item:unpleasant_gradient:unpleasant_chunk> as IIngredient).burnTime = 192;
(<item:unpleasant_gradient:unpleasantwool> as IIngredient).burnTime = 100+(192*4);