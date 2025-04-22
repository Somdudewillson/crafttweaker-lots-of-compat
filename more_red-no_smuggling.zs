#modloaded morered jumbofurnace jei

import crafttweaker.api.recipe.IRecipeManager;

<tag:blocks:jumbofurnace:jumbofurnaceable>.clear();
<tag:items:jumbofurnace:multiprocessing_upgrade>.clear();
<recipetype:jumbofurnace:jumbo_smelting>.removeAll();

#onlyif modloaded jei
import mods.jeitweaker.Jei;
Jei.hideIngredient(<item:jumbofurnace:jumbo_furnace_jei>);
Jei.hideModIngredients("jumbofurnace");
#endif