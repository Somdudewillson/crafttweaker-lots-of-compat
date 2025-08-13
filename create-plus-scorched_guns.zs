#modloaded create scguns

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;

var SCGUNS_BLUEPRINTS as IItemStack[] = [
    (<item:scguns:copper_blueprint> as IItemStack),
    (<item:scguns:iron_blueprint> as IItemStack),
    (<item:scguns:treated_brass_blueprint> as IItemStack),
    (<item:scguns:diamond_steel_blueprint> as IItemStack),
    (<item:scguns:ocean_blueprint> as IItemStack),
    (<item:scguns:piglin_blueprint> as IItemStack),
    (<item:scguns:deep_dark_blueprint> as IItemStack),
    (<item:scguns:end_blueprint> as IItemStack)
];
var SCGUNS_BLUEPRINT_TYPES as IIngredient[IItemStack] = {
    (<item:scguns:copper_blueprint> as IItemStack): (<tag:item:forge:ingots/copper> as IIngredient),
    (<item:scguns:iron_blueprint> as IItemStack): (ContextualConstants.IRON_INGOT as IIngredient),
    (<item:scguns:treated_brass_blueprint> as IItemStack): (<item:scguns:treated_brass_ingot> as IIngredient),
    (<item:scguns:diamond_steel_blueprint> as IItemStack): (<item:scguns:diamond_steel_ingot> as IIngredient),
    (<item:scguns:ocean_blueprint> as IItemStack): (<tag:item:forge:gems/prismarine> as IIngredient),
    (<item:scguns:piglin_blueprint> as IItemStack): (ContextualConstants.GOLD_INGOT as IIngredient),
    (<item:scguns:deep_dark_blueprint> as IItemStack): (<item:minecraft:echo_shard> as IIngredient),
    (<item:scguns:end_blueprint> as IItemStack): (<item:minecraft:chorus_fruit> as IIngredient)
};
var SCGUNS_BLUEPRINT_TIERS as int[IItemStack] = {
    (<item:scguns:copper_blueprint> as IItemStack): 1,
    (<item:scguns:iron_blueprint> as IItemStack): 1,
    (<item:scguns:treated_brass_blueprint> as IItemStack): 2,
    (<item:scguns:diamond_steel_blueprint> as IItemStack): 2,
    (<item:scguns:ocean_blueprint> as IItemStack): 1,
    (<item:scguns:piglin_blueprint> as IItemStack): 3,
    (<item:scguns:deep_dark_blueprint> as IItemStack): 4,
    (<item:scguns:end_blueprint> as IItemStack): 4
};

var BASE_REPLICATION_FLUID_AMT = ContextualConstants.fluidAmtFromMb(200);
var REPLICATION_FLUID = <fluid:minecraft:lava>;
if (<tag:item:forge:circuits/advanced>.exists() && <tag:item:forge:circuits/advanced>.elements.length>0) {
    BASE_REPLICATION_FLUID_AMT = ContextualConstants.fluidAmtFromMb(100);
    REPLICATION_FLUID = <tag:fluid:forge:experience>;
}

for scgunBlueprint, copyingItem in SCGUNS_BLUEPRINT_TYPES {
    <recipetype:create:sequenced_assembly>.addJsonRecipe("copy_scguns_"+scgunBlueprint.registryName.path, {
        "type": "create:sequenced_assembly",
        "ingredient": scgunBlueprint as IData,
        "transitional_item": scgunBlueprint as IData,
        "sequence": [
            { "type": "create:deploying", "ingredients": [ <item:minecraft:air> as IData, <tag:item:forge:paper> as IData ], "results": [ <item:minecraft:air> as IData ] },
            { "type": "create:deploying", "ingredients": [ <item:minecraft:air> as IData, copyingItem as IData ], "results": [ <item:minecraft:air> as IData ] },
            { "type": "create:pressing", "ingredients": [ <item:minecraft:air> as IData ], "results": [ <item:minecraft:air> as IData ] }
        ],
        "results": [
            (scgunBlueprint * 2) as IData
        ],
        "loops": 2
    });
}

for scgunBlueprint in SCGUNS_BLUEPRINTS {
    var componentMaterial = SCGUNS_BLUEPRINT_TYPES[scgunBlueprint];
    var tier = SCGUNS_BLUEPRINT_TIERS[scgunBlueprint];
    
    <recipetype:create:sequenced_assembly>.addJsonRecipe("fabricate_scguns_"+scgunBlueprint.registryName.path, {
        "type": "create:sequenced_assembly",
        "ingredient": <tag:item:forge:paper> as IData,
        "transitional_item": <item:minecraft:paper> as IData,
        "sequence": [
            { "type": "create:deploying", "ingredients": [ <item:minecraft:air> as IData, componentMaterial as IData ], "results": [ <item:minecraft:air> as IData ] },
            { "type": "create:deploying", "ingredients": [ <item:minecraft:air> as IData, <tag:item:forge:paper> as IData ], "results": [ <item:minecraft:air> as IData ] },
            { "type": "create:filling", "ingredients": [ <item:minecraft:air> as IData ], "fluid": { "fluid": REPLICATION_FLUID.registryName.toString(), "amount": BASE_REPLICATION_FLUID_AMT*tier*tier }, "results": [ <item:minecraft:air> as IData ] },
            { "type": "create:pressing", "ingredients": [ <item:minecraft:air> as IData ], "results": [ <item:minecraft:air> as IData ] }
        ],
        "results": [
            scgunBlueprint as IData
        ],
        "loops": 4
    });
}