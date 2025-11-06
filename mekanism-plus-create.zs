#modloaded create mekanism

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;

function buildDirtyDustSplashingRecipe(dirtyDustTag as IIngredient, cleanDustTag as IIngredient) as void {
    if (dirtyDustTag.empty || dirtyDustTag.items.length == 0) {
        return;
    }
    if (cleanDustTag.empty || cleanDustTag.items.length == 0) {
        return;
    }

    var cleanDust = cleanDustTag.items[0] as IItemStack;
    var newRecipeName = "create_splash_dirty_dust_to_"+(cleanDust.registryName.path as string);
    <recipetype:create:splashing>.addJsonRecipe(newRecipeName, {
        "type": "create:splashing",
        "ingredients": [
            dirtyDustTag
        ],
        "results": [
            cleanDust
        ]
    });
}

buildDirtyDustSplashingRecipe(<tag:items:mekanism:dirty_dusts/aluminum>, <tag:items:forge:dusts/aluminum>);
buildDirtyDustSplashingRecipe(<tag:items:mekanism:dirty_dusts/anthralite>, <tag:items:forge:dusts/anthralite>);
buildDirtyDustSplashingRecipe(<tag:items:mekanism:dirty_dusts/cobalt>, <tag:items:forge:dusts/cobalt>);
buildDirtyDustSplashingRecipe(<tag:items:mekanism:dirty_dusts/hellforged>, <tag:items:forge:dusts/hellforged>);
buildDirtyDustSplashingRecipe(<tag:items:mekanism:dirty_dusts/nickel>, <tag:items:forge:dusts/nickel>);
buildDirtyDustSplashingRecipe(<tag:items:mekanism:dirty_dusts/silver>, <tag:items:forge:dusts/silver>);
buildDirtyDustSplashingRecipe(<tag:items:mekanism:dirty_dusts/zinc>, <tag:items:forge:dusts/zinc>);
buildDirtyDustSplashingRecipe(<tag:items:mekanism:dirty_dusts/iron>, <tag:items:forge:dusts/iron>);
buildDirtyDustSplashingRecipe(<tag:items:mekanism:dirty_dusts/gold>, <tag:items:forge:dusts/gold>);
buildDirtyDustSplashingRecipe(<tag:items:mekanism:dirty_dusts/osmium>, <tag:items:forge:dusts/osmium>);
buildDirtyDustSplashingRecipe(<tag:items:mekanism:dirty_dusts/copper>, <tag:items:forge:dusts/copper>);
buildDirtyDustSplashingRecipe(<tag:items:mekanism:dirty_dusts/tin>, <tag:items:forge:dusts/tin>);
buildDirtyDustSplashingRecipe(<tag:items:mekanism:dirty_dusts/lead>, <tag:items:forge:dusts/lead>);
buildDirtyDustSplashingRecipe(<tag:items:mekanism:dirty_dusts/uranium>, <tag:items:forge:dusts/uranium>);