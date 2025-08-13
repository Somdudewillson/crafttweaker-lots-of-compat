#modloaded create handcrafted

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.recipe.replacement.type.ModsFilteringRule;
import crafttweaker.api.recipe.replacement.type.NameFilteringRule;

// Plates =====
<recipetype:create:pressing>.addJsonRecipe("create_press_wooden_slab_to_plate", {
  "type": "create:pressing",
  "ingredients": [
    <tag:item:minecraft:wooden_slabs> as IData
  ],
  "results": [
    CreateUtils.convertItemResult(<item:handcrafted:wood_plate>)
  ]
});
<recipetype:create:pressing>.addJsonRecipe("create_press_terracotta_to_plate", {
  "type": "create:pressing",
  "ingredients": [
    <item:minecraft:terracotta> as IData
  ],
  "results": [
    CreateUtils.convertItemResult(<item:handcrafted:terracotta_plate>)
  ]
});

<recipetype:create:deploying>.addJsonRecipe("deploy_white_dye_onto_terracotta_plate", {
  "type": "create:deploying",
  "ingredients": [
    <item:handcrafted:terracotta_plate> as IData,
    <item:minecraft:white_dye> as IData
  ],
  "results": [
    CreateUtils.convertItemResult(<item:handcrafted:white_plate>)
  ]
});

<recipetype:create:deploying>.addJsonRecipe("deploy_yellow_dye_onto_terracotta_plate", {
  "type": "create:deploying",
  "ingredients": [
    <item:handcrafted:terracotta_plate> as IData,
    <item:minecraft:yellow_dye> as IData
  ],
  "results": [
    CreateUtils.convertItemResult(<item:handcrafted:yellow_plate>)
  ]
});

<recipetype:create:deploying>.addJsonRecipe("deploy_blue_dye_onto_terracotta_plate", {
  "type": "create:deploying",
  "ingredients": [
    <item:handcrafted:terracotta_plate> as IData,
    <item:minecraft:blue_dye> as IData
  ],
  "results": [
    CreateUtils.convertItemResult(<item:handcrafted:blue_plate>)
  ]
});

<recipetype:create:mixing>.addJsonRecipe("create_mix_undye_terracotta_plate", {
  "type": "create:mixing",
  "ingredients": [
    (<item:handcrafted:white_plate> as IIngredient | <item:handcrafted:yellow_plate> | <item:handcrafted:blue_plate>) as IData,
    CreateUtils.convertFluidIngredient(<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(100))
  ],
  "results": [
    CreateUtils.convertItemResult(<item:handcrafted:terracotta_plate> * 1)
  ]
});

// Cups =====
<recipetype:create:deploying>.addJsonRecipe("deploy_white_dye_onto_terracotta_cup", {
  "type": "create:deploying",
  "ingredients": [
    <item:handcrafted:terracotta_cup> as IData,
    <item:minecraft:white_dye> as IData
  ],
  "results": [
    CreateUtils.convertItemResult(<item:handcrafted:white_cup>)
  ]
});

<recipetype:create:deploying>.addJsonRecipe("deploy_yellow_dye_onto_terracotta_cup", {
  "type": "create:deploying",
  "ingredients": [
    <item:handcrafted:terracotta_cup> as IData,
    <item:minecraft:yellow_dye> as IData
  ],
  "results": [
    CreateUtils.convertItemResult(<item:handcrafted:yellow_cup>)
  ]
});

<recipetype:create:deploying>.addJsonRecipe("deploy_blue_dye_onto_terracotta_cup", {
  "type": "create:deploying",
  "ingredients": [
    <item:handcrafted:terracotta_cup> as IData,
    <item:minecraft:blue_dye> as IData
  ],
  "results": [
    CreateUtils.convertItemResult(<item:handcrafted:blue_cup>)
  ]
});

<recipetype:create:mixing>.addJsonRecipe("create_mix_undye_terracotta_cup", {
  "type": "create:mixing",
  "ingredients": [
    (<item:handcrafted:white_cup> as IIngredient | <item:handcrafted:yellow_cup> | <item:handcrafted:blue_cup>) as IData,
    CreateUtils.convertFluidIngredient(<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(100))
  ],
  "results": [
    CreateUtils.convertItemResult(<item:handcrafted:terracotta_cup> * 1)
  ]
});

// Bowls =====
<recipetype:create:deploying>.addJsonRecipe("deploy_white_dye_onto_terracotta_bowl", {
  "type": "create:deploying",
  "ingredients": [
    <item:handcrafted:terracotta_bowl> as IData,
    <item:minecraft:white_dye> as IData
  ],
  "results": [
    CreateUtils.convertItemResult(<item:handcrafted:white_bowl>)
  ]
});

<recipetype:create:deploying>.addJsonRecipe("deploy_yellow_dye_onto_terracotta_bowl", {
  "type": "create:deploying",
  "ingredients": [
    <item:handcrafted:terracotta_bowl> as IData,
    <item:minecraft:yellow_dye> as IData
  ],
  "results": [
    CreateUtils.convertItemResult(<item:handcrafted:yellow_bowl>)
  ]
});

<recipetype:create:deploying>.addJsonRecipe("deploy_blue_dye_onto_terracotta_bowl", {
  "type": "create:deploying",
  "ingredients": [
    <item:handcrafted:terracotta_bowl> as IData,
    <item:minecraft:blue_dye> as IData
  ],
  "results": [
    CreateUtils.convertItemResult(<item:handcrafted:blue_bowl>)
  ]
});

<recipetype:create:mixing>.addJsonRecipe("create_mix_undye_terracotta_bowl", {
  "type": "create:mixing",
  "ingredients": [
    (<item:handcrafted:white_bowl> as IIngredient | <item:handcrafted:yellow_bowl> | <item:handcrafted:blue_bowl>) as IData,
    CreateUtils.convertFluidIngredient(<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(100))
  ],
  "results": [
    CreateUtils.convertItemResult(<item:handcrafted:terracotta_bowl> * 1)
  ]
});

// Combos =====
<recipetype:create:deploying>.addJsonRecipe("deploy_wood_cup_onto_wood_plate", {
  "type": "create:deploying",
  "ingredients": [
    <item:handcrafted:wood_plate> as IData,
    <item:handcrafted:wood_cup> as IData
  ],
  "results": [
    CreateUtils.convertItemResult(<item:handcrafted:wood_crockery_combo>)
  ]
});
<recipetype:create:deploying>.addJsonRecipe("deploy_terracotta_cup_onto_terracotta_plate", {
  "type": "create:deploying",
  "ingredients": [
    <item:handcrafted:terracotta_plate> as IData,
    <item:handcrafted:terracotta_cup> as IData
  ],
  "results": [
    CreateUtils.convertItemResult(<item:handcrafted:terracotta_crockery_combo>)
  ]
});
<recipetype:create:deploying>.addJsonRecipe("deploy_white_cup_onto_white_plate", {
  "type": "create:deploying",
  "ingredients": [
    <item:handcrafted:white_plate> as IData,
    <item:handcrafted:white_cup> as IData
  ],
  "results": [
    CreateUtils.convertItemResult(<item:handcrafted:white_crockery_combo>)
  ]
});
<recipetype:create:deploying>.addJsonRecipe("deploy_yellow_cup_onto_yellow_plate", {
  "type": "create:deploying",
  "ingredients": [
    <item:handcrafted:yellow_plate> as IData,
    <item:handcrafted:yellow_cup> as IData
  ],
  "results": [
    CreateUtils.convertItemResult(<item:handcrafted:yellow_crockery_combo>)
  ]
});
<recipetype:create:deploying>.addJsonRecipe("deploy_blue_cup_onto_blue_plate", {
  "type": "create:deploying",
  "ingredients": [
    <item:handcrafted:blue_plate> as IData,
    <item:handcrafted:blue_cup> as IData
  ],
  "results": [
    CreateUtils.convertItemResult(<item:handcrafted:blue_crockery_combo>)
  ]
});

craftingTable.addShapeless("combine_to_white_crockery_combo", <item:handcrafted:white_crockery_combo>, [
    <item:handcrafted:white_plate>,
    <item:handcrafted:white_cup>,
]);
craftingTable.addShapeless("combine_to_yellow_crockery_combo", <item:handcrafted:yellow_crockery_combo>, [
    <item:handcrafted:yellow_plate>,
    <item:handcrafted:yellow_cup>,
]);
craftingTable.addShapeless("combine_to_blue_crockery_combo", <item:handcrafted:blue_crockery_combo>, [
    <item:handcrafted:blue_plate>,
    <item:handcrafted:blue_cup>,
]);

<recipetype:create:mixing>.addJsonRecipe("create_mix_undye_terracotta_crockery_combo", {
  "type": "create:mixing",
  "ingredients": [
    (<item:handcrafted:white_crockery_combo> as IIngredient | <item:handcrafted:yellow_crockery_combo> | <item:handcrafted:blue_crockery_combo>) as IData,
    CreateUtils.convertFluidIngredient(<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(100))
  ],
  "results": [
    CreateUtils.convertItemResult(<item:handcrafted:terracotta_crockery_combo> * 1)
  ]
});

// Cushion =====
<recipetype:create:mixing>.addJsonRecipe("create_mix_undye_cushion", {
  "type": "create:mixing",
  "ingredients": [
    (<item:handcrafted:black_cushion> as IIngredient | <item:handcrafted:blue_cushion> | <item:handcrafted:brown_cushion> | <item:handcrafted:cyan_cushion> | <item:handcrafted:gray_cushion> | <item:handcrafted:green_cushion> | <item:handcrafted:light_blue_cushion> | <item:handcrafted:light_gray_cushion> | <item:handcrafted:lime_cushion> | <item:handcrafted:magenta_cushion> | <item:handcrafted:orange_cushion> | <item:handcrafted:pink_cushion> | <item:handcrafted:purple_cushion> | <item:handcrafted:red_cushion> | <item:handcrafted:yellow_cushion>) as IData,
    CreateUtils.convertFluidIngredient(<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(100))
  ],
  "results": [
    CreateUtils.convertItemResult(<item:handcrafted:white_cushion> * 1)
  ]
});

// Sheet =====
<recipetype:create:mixing>.addJsonRecipe("create_mix_undye_sheet", {
  "type": "create:mixing",
  "ingredients": [
    (<item:handcrafted:black_sheet> as IIngredient | <item:handcrafted:blue_sheet> | <item:handcrafted:brown_sheet> | <item:handcrafted:cyan_sheet> | <item:handcrafted:gray_sheet> | <item:handcrafted:green_sheet> | <item:handcrafted:light_blue_sheet> | <item:handcrafted:light_gray_sheet> | <item:handcrafted:lime_sheet> | <item:handcrafted:magenta_sheet> | <item:handcrafted:orange_sheet> | <item:handcrafted:pink_sheet> | <item:handcrafted:purple_sheet> | <item:handcrafted:red_sheet> | <item:handcrafted:yellow_sheet>) as IData,
    CreateUtils.convertFluidIngredient(<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(100))
  ],
  "results": [
    CreateUtils.convertItemResult(<item:handcrafted:white_sheet> * 1)
  ]
});