#modloaded productivebees alexscaves


// Bottling
if (<tag:fluids:forge:chocolate>.exists() && <tag:fluids:forge:chocolate>.elements.length>0) {
    <recipetype:productivebees:bottler>.addJsonRecipe("productivebees_bottle_chocolate_bottle", {
        "type": "productivebees:bottler",
        "fluid": {
            "tag": "forge:chocolate",
            "amount": 250
        },
        "input": {
            "item": "minecraft:glass_bottle"
        },
        "output": {
            "item": "alexscaves:hot_chocolate_bottle"
        }
    });
}
<recipetype:productivebees:bottler>.addJsonRecipe("productivebees_bottle_purple_soda_bottle", {
    "type": "productivebees:bottler",
    "fluid": {
        "fluid": "alexscaves:purple_soda",
        "amount": 250
    },
    "input": {
        "item": "minecraft:glass_bottle"
    },
    "output": {
        "item": "alexscaves:purple_soda_bottle"
    }
});