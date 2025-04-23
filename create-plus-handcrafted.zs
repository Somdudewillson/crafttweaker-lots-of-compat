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
    <tag:items:minecraft:wooden_slabs> as IData
  ],
  "results": [
    <item:handcrafted:wood_plate> as IData
  ]
});
<recipetype:create:pressing>.addJsonRecipe("create_press_terracotta_to_plate", {
  "type": "create:pressing",
  "ingredients": [
    <item:minecraft:terracotta> as IData
  ],
  "results": [
    <item:handcrafted:terracotta_plate> as IData
  ]
});

<recipetype:create:deploying>.addRecipe(
    "deploy_white_dye_onto_terracotta_plate", 
    <item:handcrafted:terracotta_plate>, 
    <item:minecraft:white_dye>, 
    [<item:handcrafted:white_plate> % 100], 
    false
);

<recipetype:create:deploying>.addRecipe(
    "deploy_yellow_dye_onto_terracotta_plate", 
    <item:handcrafted:terracotta_plate>, 
    <item:minecraft:yellow_dye>, 
    [<item:handcrafted:yellow_plate> % 100], 
    false
);

<recipetype:create:deploying>.addRecipe(
    "deploy_blue_dye_onto_terracotta_plate", 
    <item:handcrafted:terracotta_plate>, 
    <item:minecraft:blue_dye>, 
    [<item:handcrafted:blue_plate> % 100], 
    false
);

<recipetype:create:mixing>.addJsonRecipe("create_mix_undye_terracotta_plate", {
  "type": "create:mixing",
  "ingredients": [
    (<item:handcrafted:white_plate> as IIngredient | <item:handcrafted:yellow_plate> | <item:handcrafted:blue_plate>) as IData,
    {
      "amount": ContextualConstants.fluidAmtFromMb(100),
      "fluid": "minecraft:water"
    }
  ],
  "results": [
    (<item:handcrafted:terracotta_plate> * 1) as IData
  ]
});

// Cups =====
<recipetype:create:deploying>.addRecipe(
    "deploy_white_dye_onto_terracotta_cup", 
    <item:handcrafted:terracotta_cup>, 
    <item:minecraft:white_dye>, 
    [<item:handcrafted:white_cup> % 100], 
    false
);

<recipetype:create:deploying>.addRecipe(
    "deploy_yellow_dye_onto_terracotta_cup", 
    <item:handcrafted:terracotta_cup>, 
    <item:minecraft:yellow_dye>, 
    [<item:handcrafted:yellow_cup> % 100], 
    false
);

<recipetype:create:deploying>.addRecipe(
    "deploy_blue_dye_onto_terracotta_cup", 
    <item:handcrafted:terracotta_cup>, 
    <item:minecraft:blue_dye>, 
    [<item:handcrafted:blue_cup> % 100], 
    false
);

<recipetype:create:mixing>.addJsonRecipe("create_mix_undye_terracotta_cup", {
  "type": "create:mixing",
  "ingredients": [
    (<item:handcrafted:white_cup> as IIngredient | <item:handcrafted:yellow_cup> | <item:handcrafted:blue_cup>) as IData,
    {
      "amount": ContextualConstants.fluidAmtFromMb(100),
      "fluid": "minecraft:water"
    }
  ],
  "results": [
    (<item:handcrafted:terracotta_cup> * 1) as IData
  ]
});

// Bowls =====
<recipetype:create:deploying>.addRecipe(
    "deploy_white_dye_onto_terracotta_bowl", 
    <item:handcrafted:terracotta_bowl>, 
    <item:minecraft:white_dye>, 
    [<item:handcrafted:white_bowl> % 100], 
    false
);

<recipetype:create:deploying>.addRecipe(
    "deploy_yellow_dye_onto_terracotta_bowl", 
    <item:handcrafted:terracotta_bowl>, 
    <item:minecraft:yellow_dye>, 
    [<item:handcrafted:yellow_bowl> % 100], 
    false
);

<recipetype:create:deploying>.addRecipe(
    "deploy_blue_dye_onto_terracotta_bowl", 
    <item:handcrafted:terracotta_bowl>, 
    <item:minecraft:blue_dye>, 
    [<item:handcrafted:blue_bowl> % 100], 
    false
);

<recipetype:create:mixing>.addJsonRecipe("create_mix_undye_terracotta_bowl", {
  "type": "create:mixing",
  "ingredients": [
    (<item:handcrafted:white_bowl> as IIngredient | <item:handcrafted:yellow_bowl> | <item:handcrafted:blue_bowl>) as IData,
    {
      "amount": ContextualConstants.fluidAmtFromMb(100),
      "fluid": "minecraft:water"
    }
  ],
  "results": [
    (<item:handcrafted:terracotta_bowl> * 1) as IData
  ]
});

// Combos =====
<recipetype:create:deploying>.addRecipe(
    "deploy_wood_cup_onto_wood_plate", 
    <item:handcrafted:wood_plate>, 
    <item:handcrafted:wood_cup>, 
    [<item:handcrafted:wood_crockery_combo> % 100], 
    false
);
<recipetype:create:deploying>.addRecipe(
    "deploy_terracotta_cup_onto_terracotta_plate", 
    <item:handcrafted:terracotta_plate>, 
    <item:handcrafted:terracotta_cup>, 
    [<item:handcrafted:terracotta_crockery_combo> % 100], 
    false
);
<recipetype:create:deploying>.addRecipe(
    "deploy_white_cup_onto_white_plate", 
    <item:handcrafted:white_plate>, 
    <item:handcrafted:white_cup>, 
    [<item:handcrafted:white_crockery_combo> % 100], 
    false
);
<recipetype:create:deploying>.addRecipe(
    "deploy_yellow_cup_onto_yellow_plate", 
    <item:handcrafted:yellow_plate>, 
    <item:handcrafted:yellow_cup>, 
    [<item:handcrafted:yellow_crockery_combo> % 100], 
    false
);
<recipetype:create:deploying>.addRecipe(
    "deploy_blue_cup_onto_blue_plate", 
    <item:handcrafted:blue_plate>, 
    <item:handcrafted:blue_cup>, 
    [<item:handcrafted:blue_crockery_combo> % 100], 
    false
);

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
    {
      "amount": ContextualConstants.fluidAmtFromMb(100),
      "fluid": "minecraft:water"
    }
  ],
  "results": [
    (<item:handcrafted:terracotta_crockery_combo> * 1) as IData
  ]
});

// Cushion =====
<recipetype:create:mixing>.addJsonRecipe("create_mix_undye_cushion", {
  "type": "create:mixing",
  "ingredients": [
    (<item:handcrafted:black_cushion> as IIngredient | <item:handcrafted:blue_cushion> | <item:handcrafted:brown_cushion> | <item:handcrafted:cyan_cushion> | <item:handcrafted:gray_cushion> | <item:handcrafted:green_cushion> | <item:handcrafted:light_blue_cushion> | <item:handcrafted:light_gray_cushion> | <item:handcrafted:lime_cushion> | <item:handcrafted:magenta_cushion> | <item:handcrafted:orange_cushion> | <item:handcrafted:pink_cushion> | <item:handcrafted:purple_cushion> | <item:handcrafted:red_cushion> | <item:handcrafted:yellow_cushion>) as IData,
    {
      "amount": ContextualConstants.fluidAmtFromMb(100),
      "fluid": "minecraft:water"
    }
  ],
  "results": [
    (<item:handcrafted:white_cushion> * 1) as IData
  ]
});

// Sheet =====
<recipetype:create:mixing>.addJsonRecipe("create_mix_undye_sheet", {
  "type": "create:mixing",
  "ingredients": [
    (<item:handcrafted:black_sheet> as IIngredient | <item:handcrafted:blue_sheet> | <item:handcrafted:brown_sheet> | <item:handcrafted:cyan_sheet> | <item:handcrafted:gray_sheet> | <item:handcrafted:green_sheet> | <item:handcrafted:light_blue_sheet> | <item:handcrafted:light_gray_sheet> | <item:handcrafted:lime_sheet> | <item:handcrafted:magenta_sheet> | <item:handcrafted:orange_sheet> | <item:handcrafted:pink_sheet> | <item:handcrafted:purple_sheet> | <item:handcrafted:red_sheet> | <item:handcrafted:yellow_sheet>) as IData,
    {
      "amount": ContextualConstants.fluidAmtFromMb(100),
      "fluid": "minecraft:water"
    }
  ],
  "results": [
    (<item:handcrafted:white_sheet> * 1) as IData
  ]
});