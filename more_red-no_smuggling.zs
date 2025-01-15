#modloaded morered jumbofurnace

import crafttweaker.api.recipe.IRecipeManager;
import mods.jeitweaker.Jei;

<tag:blocks:jumbofurnace:jumbofurnaceable>.clear();
<tag:items:jumbofurnace:multiprocessing_upgrade>.clear();
<recipetype:jumbofurnace:jumbo_smelting>.removeAll();
Jei.hideIngredient(<item:jumbofurnace:jumbo_furnace_jei>);
Jei.hideModIngredients("jumbofurnace");