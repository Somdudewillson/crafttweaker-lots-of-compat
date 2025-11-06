#modloaded mekanism scguns

var jaopcaLoaded = false;
#onlyif modloaded jaopca
jaopcaLoaded = true;
#endif

// Ore Processing
if (!jaopcaLoaded) {
    <recipetype:mekanism:crushing>.addJsonRecipe("mekanism_crush_anthralite_ore", {
        "type": "mekanism:crushing",
        "input": {
            "ingredient": {
                "tag": "forge:ores/anthralite"
            }
        },
        "output": {
            "item": "scguns:crushed_raw_anthralite",
            "chance": 2.25
        }
    });
    <recipetype:mekanism:crushing>.addJsonRecipe("mekanism_crush_raw_anthralite", {
        "type": "mekanism:crushing",
        "input": {
            "ingredient": {
                "tag": "forge:raw_materials/anthralite"
            }
        },
        "output": {
            "item": "scguns:crushed_raw_anthralite",
            "chance": 1.25
        }
    });
    <recipetype:mekanism:crushing>.addJsonRecipe("mekanism_crush_anthralite_ingot", {
        "type": "mekanism:crushing",
        "input": {
            "ingredient": {
                "tag": "forge:ingots/anthralite"
            }
        },
        "output": {
            "item": "scguns:crushed_raw_anthralite",
            "count": 1
        }
    });
}