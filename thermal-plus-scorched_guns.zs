#modloaded scguns thermal thermal_expansion

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.IData;

// Ore Processing
<recipetype:thermal:pulverizer>.addJsonRecipe("thermal_pulverize_anthralite_ore", {
    "type": "thermal:pulverizer",
    "ingredient": {
        "tag": "forge:ores/anthralite"
    },
    "result": [
    {
        "item": "scguns:crushed_raw_anthralite",
        "chance": 2.25
    }
    ],
    "experience": 0.2
});
<recipetype:thermal:pulverizer>.addJsonRecipe("thermal_pulverize_raw_anthralite", {
    "type": "thermal:pulverizer",
    "ingredient": {
        "tag": "forge:raw_materials/anthralite"
    },
    "result": [
    {
        "item": "scguns:crushed_raw_anthralite",
        "chance": 1.25
    }
    ],
    "experience": 0.2
});
<recipetype:thermal:pulverizer>.addJsonRecipe("thermal_pulverize_anthralite_ingot", {
    "type": "thermal:pulverizer",
    "ingredient": {
        "tag": "forge:ingots/anthralite"
    },
    "result": [
    {
        "item": "scguns:crushed_raw_anthralite",
        "count": 1
    }
    ],
    "energy_mod": 0.5
});

// Alloys/Blends
craftingTable.addShapeless("treated_iron_blend_from_dusts", 
    <item:scguns:treated_iron_blend> * 3, 
    [
        <tag:items:forge:dusts/iron>,
        <tag:items:forge:dusts/niter>,
        <tag:items:minecraft:coals>,
        ContextualConstants.REDSTONE_DUST
    ]);
craftingTable.addShapeless("treated_iron_blend_from_dusts_incl_steel_dust", 
    <item:scguns:treated_iron_blend> * 3, 
    [
        <tag:items:forge:dusts/steel>,
        <tag:items:forge:dusts/niter>,
        ContextualConstants.REDSTONE_DUST
    ]);
craftingTable.addShapeless("diamond_steel_blend_from_dusts", 
    <item:scguns:diamond_steel_blend> * 4, 
    [
        <tag:items:forge:dusts/anthralite>,
        <tag:items:forge:dusts/diamond>,
        <tag:items:forge:dusts/lapis>,
        <item:scguns:treated_iron_blend>
    ]);

// Machines
craftingTable.removeByName("scguns:powered_macerator");
craftingTable.addShaped("scguns_powered_macerator_with_thermal", 
    <item:scguns:powered_macerator>, 
    [
        [<tag:items:forge:slabs/smooth_stone>,<item:minecraft:air>,<tag:items:forge:slabs/smooth_stone>],
        [<tag:items:forge:slabs/smooth_stone>,<item:minecraft:blast_furnace>,<tag:items:forge:slabs/smooth_stone>],
        [<tag:items:forge:smooth_stone>,<item:scguns:lightning_battery> as IIngredient | <item:thermal:rf_coil>,<tag:items:forge:smooth_stone>]
    ]);
var pressIngotIngredient = ContextualConstants.IRON_INGOT as IIngredient | <item:scguns:treated_iron_ingot>;
craftingTable.removeByName("scguns:powered_mechanical_press");
craftingTable.addShaped("scguns_powered_mechanical_press_with_thermal", 
    <item:scguns:powered_mechanical_press>, 
    [
        [pressIngotIngredient,<tag:items:forge:storage_blocks/iron>,pressIngotIngredient],
        [pressIngotIngredient,<item:minecraft:blast_furnace>,pressIngotIngredient],
        [<tag:items:forge:smooth_stone>,<item:scguns:lightning_battery> as IIngredient | <item:thermal:rf_coil>,<tag:items:forge:smooth_stone>]
    ]);

// Ammo
<recipetype:thermal:bottler>.addJsonRecipe("thermal_fill_energy_core", {
    "type": "thermal:bottler",
    "ingredients": [
        {
            "item": "scguns:empty_core"
        },
        {
            "fluid": "thermal:redstone",
            "amount": 900
        }
    ],
    "result": [
        {
            "item": "scguns:energy_core"
        }
    ]
});
<recipetype:thermal:bottler>.addJsonRecipe("thermal_refill_energy_core", {
    "type": "thermal:bottler",
    "ingredients": [
        {
            "item": "scguns:depleted_energy_core"
        },
        {
            "fluid": "thermal:redstone",
            "amount": 200
        }
    ],
    "result": [
        {
            "item": "scguns:energy_core"
        }
    ]
});
#onlyif modloaded systeams
<recipetype:thermal:bottler>.addJsonRecipe("thermal_fill_plasma_core", {
    "type": "thermal:bottler",
    "ingredients": [
        {
            "item": "scguns:empty_core"
        },
        {
            "fluid": "systeams:steamiestest",
            "amount": 1000
        }
    ],
    "result": [
        {
            "item": "scguns:plasma_core"
        }
    ]
});
<recipetype:thermal:bottler>.addJsonRecipe("thermal_fill_plasma_core_from_energy_core", {
    "type": "thermal:bottler",
    "ingredients": [
        {
            "item": "scguns:energy_core"
        },
        {
            "fluid": "systeams:steamiestest",
            "amount": 500
        }
    ],
    "result": [
        {
            "item": "scguns:plasma_core"
        }
    ]
});
#endif
<recipetype:thermal:press>.addJsonRecipe("thermal_pack_blaze_fuel", {
    "type": "thermal:press",
    "ingredients": [
    {
        "tag": "forge:dusts/blaze",
        "count": 4
    },
    {
        "item": "scguns:empty_tank"
    }
    ],
    "result": [
    {
        "item": "scguns:blaze_fuel"
    }
    ],
    "energy": 500
});
<recipetype:thermal:press>.addJsonRecipe("thermal_pack_swarm_bomb", {
    "type": "thermal:press",
    "ingredients": [
    {
        "item": "minecraft:rotten_flesh"
    },
    {
        "tag": "forge:glass"
    }
    ],
    "result": [
    {
        "item": "scguns:swarm_bomb"
    }
    ],
    "energy": 500
});

#onlyif modloaded systeams
craftingTable.addShapeless("convert_systeams_plasma_ball_to_scguns_plasma", 
    <item:scguns:plasma>, 
    [
        <item:systeams:steamiestest_ball>
    ]);
craftingTable.addShapeless("convert_scguns_plasma_to_systeams_plasma_ball", 
    <item:systeams:steamiestest_ball>, 
    [
        <item:scguns:plasma>
    ]);
<recipetype:thermal:centrifuge>.addJsonRecipe("centrifuge_scguns_plasma_to_systeams_plasma", {
  "type": "thermal:centrifuge",
  "ingredient": {
    "item": "scguns:plasma"
  },
  "result": [
    {
      "fluid": "systeams:steamiestest",
      "amount": 1000
    }
  ],
  "energy": 400
});
#endif

#onlyif modloaded create systeams
<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("scguns_energy_cell_filling")
    .require(<item:scguns:empty_cell>)
    .transitionTo(<item:scguns:empty_cell>)
    .loops(1)
    .addOutput(<item:scguns:energy_cell>, 1)
    .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:systeams:steamiestest> * ContextualConstants.fluidAmtFromMb(100)))
    .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:scguns:stan_bullet_tips>))
    .addStep<mods.createtweaker.PressingRecipe>((rb) => rb) );
#endif

// Mold Pressing
<tag:items:thermal:crafting/dies>.add(<item:scguns:small_casing_mold>);
<tag:items:thermal:crafting/dies>.add(<item:scguns:medium_casing_mold>);
<tag:items:thermal:crafting/dies>.add(<item:scguns:large_casing_mold>);
<tag:items:thermal:crafting/dies>.add(<item:scguns:bullet_mold>);
<tag:items:thermal:crafting/dies>.add(<item:scguns:gun_parts_mold>);
<tag:items:thermal:crafting/dies>.add(<item:scguns:disc_mold>);
var SCGUNS_MOLD_PROCESS_TIME as int[IItemStack] = {
    (<item:scguns:small_casing_mold> as IItemStack): 15,
    (<item:scguns:medium_casing_mold> as IItemStack): 15,
    (<item:scguns:large_casing_mold> as IItemStack): 15,
    (<item:scguns:bullet_mold> as IItemStack): 15,
    (<item:scguns:gun_parts_mold> as IItemStack): 100,
    (<item:scguns:disc_mold> as IItemStack): 200
};
var SCGUNS_MOLD_RECIPES = [
    [<item:scguns:small_casing_mold> as IIngredient, ContextualConstants.IRON_INGOT as IIngredient, (<item:scguns:small_iron_casing> as IIngredient) * 12],
    [<item:scguns:small_casing_mold> as IIngredient, <tag:items:forge:ingots/copper> as IIngredient, (<item:scguns:small_copper_casing> as IIngredient) * 12],
    [<item:scguns:small_casing_mold> as IIngredient, <tag:items:forge:ingots/brass> as IIngredient, (<item:scguns:small_brass_casing> as IIngredient) * 12],
    [<item:scguns:small_casing_mold> as IIngredient, <tag:items:forge:ingots/diamond_steel> as IIngredient, (<item:scguns:small_diamond_steel_casing> as IIngredient) * 12],

    [<item:scguns:medium_casing_mold> as IIngredient, ContextualConstants.IRON_INGOT as IIngredient, (<item:scguns:empty_cell> as IIngredient) * 8],
    [<item:scguns:medium_casing_mold> as IIngredient, <tag:items:forge:ingots/copper> as IIngredient, (<item:scguns:medium_copper_casing> as IIngredient) * 8],
    [<item:scguns:medium_casing_mold> as IIngredient, <tag:items:forge:ingots/brass> as IIngredient, (<item:scguns:medium_brass_casing> as IIngredient) * 8],
    [<item:scguns:medium_casing_mold> as IIngredient, <tag:items:forge:ingots/diamond_steel> as IIngredient, (<item:scguns:medium_diamond_steel_casing> as IIngredient) * 8],
    [<item:scguns:medium_casing_mold> as IIngredient, <item:minecraft:shulker_shell> as IIngredient, (<item:scguns:shulker_casing> as IIngredient) * 12],

    [<item:scguns:large_casing_mold> as IIngredient, ContextualConstants.IRON_INGOT as IIngredient, (<item:scguns:large_iron_casing> as IIngredient) * 5],
    [<item:scguns:large_casing_mold> as IIngredient, <tag:items:forge:ingots/brass> as IIngredient, (<item:scguns:large_brass_casing> as IIngredient) * 5],

    [<item:scguns:bullet_mold> as IIngredient, <tag:items:scguns:standard_bullet_material> as IIngredient, (<item:scguns:standard_bullet> as IIngredient) * 12],
    [<item:scguns:bullet_mold> as IIngredient, <tag:items:scguns:advanced_bullet_material> as IIngredient, (<item:scguns:hardened_bullet> as IIngredient) * 12],

    [<item:scguns:gun_parts_mold> as IIngredient, <tag:items:forge:storage_blocks/iron> as IIngredient, (<item:scguns:gun_parts> as IIngredient) * 2],
    [<item:scguns:gun_parts_mold> as IIngredient, <tag:items:forge:storage_blocks/anthralite> as IIngredient, (<item:scguns:heavy_gun_parts> as IIngredient) * 2],
    [<item:scguns:gun_parts_mold> as IIngredient, <tag:items:forge:storage_blocks/treated_iron> as IIngredient, (<item:scguns:heavy_gun_parts> as IIngredient) * 1],

    [<item:scguns:disc_mold> as IIngredient, <tag:items:forge:storage_blocks/copper> as IIngredient, (<item:scguns:copper_disc> as IIngredient) * 2]
];
var usedMoldRecipeNames: bool[string] = {};
for moldRecipeParts in SCGUNS_MOLD_RECIPES {
    var baseRecipeName = "thermal_press_scguns_"+((moldRecipeParts[2].ingredient.items[0] as IItemStack).registryName.path);
    var recipeName = baseRecipeName;
    var i = 1;
    while recipeName in usedMoldRecipeNames {
        i += 1;
        recipeName = baseRecipeName+"_"+i;
    }
    var recipeTime = SCGUNS_MOLD_PROCESS_TIME[(moldRecipeParts[0].ingredient.items[0] as IItemStack)];
    <recipetype:thermal:press>.addJsonRecipe(recipeName, {
        "type": "thermal:press",
        "ingredients": [
        moldRecipeParts[1] as IData,
        moldRecipeParts[0] as IData
        ],
        "result": [
        moldRecipeParts[2] as IData
        ],
        "energy": (500*recipeTime) as int
    });
    usedMoldRecipeNames[recipeName] = true;
}