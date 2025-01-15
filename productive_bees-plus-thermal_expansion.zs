#modloaded productivebees thermal thermal_expansion

// Bottling
<recipetype:productivebees:bottler>.addJsonRecipe("productivebees_bottle_syrup_bottle", {
    "type": "productivebees:bottler",
    "fluid": {
        "fluid": "thermal:syrup",
        "amount": 250
    },
    "input": {
        "item": "minecraft:glass_bottle"
    },
    "output": {
        "item": "thermal:syrup_bottle"
    }
});

//TODO: See if this automatic compat is even possible?

// import crafttweaker.api.recipe.IRecipeManager;
// import crafttweaker.api.data.MapData;
// import crafttweaker.api.data.IData;
// import crafttweaker.api.recipe.type.Recipe;
// import crafttweaker.api.world.Container;

// var beeCentrifugeRecipes = (<recipetype:productivebees:centrifuge>.getAllRecipes() as stdlib.List<Recipe<Container>>);
// for beeCentrifugeRecipe in beeCentrifugeRecipes {
//     var centrifugeRecipeIdParts = (beeCentrifugeRecipe.getId() as string).split("/");
//     var honeycomb_type = centrifugeRecipeIdParts[centrifugeRecipeIdParts.length-1];
//     var substrIdx = honeycomb_type.indexOf('_');
//     if (substrIdx == null) { continue; }
//     honeycomb_type = honeycomb_type[(substrIdx as int)+1 .. honeycomb_type.length];
//     println(beeCentrifugeRecipe.getId());
//     println(honeycomb_type);
// }