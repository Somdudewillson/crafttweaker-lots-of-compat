#modloaded tconstruct

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;

if (<tag:items:lots_of_compat:magnetic_ingots>.elements.length>0) {
    recipes.addJsonRecipe("magnetic_modifier_from_ingot", {
        "type": "tconstruct:modifier",
        "allow_crystal": true,
        "inputs": [
            <tag:items:lots_of_compat:magnetic_ingots> as IData
        ],
        "level": {
            "max": 5
        },
        "result": "tconstruct:magnetic",
        "slots": {
            "upgrades": 1
        },
        "tools": [
            {
            "tag": "tconstruct:modifiable/melee/weapon"
            },
            {
            "tag": "tconstruct:modifiable/harvest"
            }
        ]
    });
    recipes.addJsonRecipe("magnetic_armor_modifier_from_ingot", {
        "type": "tconstruct:modifier",
        "allow_crystal": true,
        "inputs": [
            <tag:items:lots_of_compat:magnetic_ingots> as IData
        ],
        "level": 1,
        "result": "tconstruct:magnetic",
        "slots": {
            "upgrades": 1
        },
        "tools": {
            "tag": "tconstruct:modifiable/armor/worn"
        }
    });
}