#modloaded productivebees create tfmg


// Bottling
<recipetype:productivebees:bottler>.addJsonRecipe("productivebees_bottle_bottle_of_concrete", {
    "type": "productivebees:bottler",
    "fluid": {
        "fluid": "tfmg:liquid_concrete",
        "amount": 250
    },
    "input": {
        "item": "minecraft:glass_bottle"
    },
    "output": {
        "item": "tfmg:bottle_of_concrete"
    }
});
<recipetype:productivebees:bottler>.addJsonRecipe("productivebees_bottle_bottle_of_battery_acid", {
    "type": "productivebees:bottler",
    "fluid": {
        "fluid": "tfmg:sulfuric_acid",
        "amount": 250
    },
    "input": {
        "item": "minecraft:glass_bottle"
    },
    "output": {
        "item": "tfmg:bottle_of_battery_acid"
    }
});