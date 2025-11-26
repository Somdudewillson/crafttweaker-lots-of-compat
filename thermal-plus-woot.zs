#modloaded thermal thermal_expansion woot_revived

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.item.IItemStack;

<tag:items:thermal:crafting/dies>.add(<item:woot_revived:plate_mold>);
<tag:items:thermal:crafting/dies>.add(<item:woot_revived:shard_mold>);
<tag:items:thermal:crafting/dies>.add(<item:woot_revived:dye_casing_mold>);

// Packing/Unpacking ===
<recipetype:thermal:press>.addJsonRecipe("thermal_press/packing3x3/stygian/block", {
    "type": "thermal:press",
    "ingredients": [
        (<item:woot_revived:stygian_ingot> * 9) as IData,
        <item:thermal:press_packing_3x3_die> as IData
    ],
    "result": [<item:woot_revived:stygian_block> as IData],
    "energy": 400
});
<recipetype:thermal:press>.addJsonRecipe("thermal_press/unpacking/stygian/ingot", {
    "type": "thermal:press",
    "ingredients": [
        (<item:woot_revived:stygian_block> * 1) as IData,
        <item:thermal:press_unpacking_die> as IData
    ],
    "result": [(<item:woot_revived:stygian_ingot> * 9) as IData],
    "energy": 400
});
<recipetype:thermal:press>.addJsonRecipe("thermal_press/packing3x3/xp_shard", {
    "type": "thermal:press",
    "ingredients": [
        (<item:woot_revived:xp_splinter> * 9) as IData,
        <item:thermal:press_packing_3x3_die> as IData
    ],
    "result": [<item:woot_revived:xp_shard> as IData],
    "energy": 400
});

// Alloying ===
<recipetype:thermal:smelter>.addJsonRecipe("thermal_smelter/alloy/stygian/ingot", {
  "type": "thermal:smelter",
  "ingredients": [
    {
      "value": [
        {
          "tag": "forge:ingots/iron"
        },
        {
          "tag": "forge:dusts/iron"
        }
      ],
      "count": 1
    },
    {
      "value": [
        {
          "item": "minecraft:soul_soil"
        }
      ],
      "count": 1
    },
    {
      "value": [
        {
          "item": "minecraft:amethyst_shard"
        }
      ],
      "count": 1
    }
  ],
  "result": [(<item:woot_revived:stygian_ingot> * 2) as IData],
  "energy": 3200
});

// Mold Pressing ===
<recipetype:thermal:press>.addJsonRecipe("thermal_press/woot_plate/stygian_plate", {
    "type": "thermal:press",
    "ingredients": [
        (<item:woot_revived:stygian_ingot> * 1) as IData,
        <item:woot_revived:plate_mold> as IData
    ],
    "result": [<item:woot_revived:stygian_plate> as IData],
    "energy": 3600
});
<recipetype:thermal:press>.addJsonRecipe("thermal_press/woot_shard/mob_shard", {
    "type": "thermal:press",
    "ingredients": [
        (<item:woot_revived:stygian_ingot> * 2) as IData,
        <item:woot_revived:shard_mold> as IData
    ],
    "result": [<item:woot_revived:mob_shard> as IData],
    "energy": 3600 * 2
});
<recipetype:thermal:press>.addJsonRecipe("thermal_press/woot_shard/copper_shard", {
    "type": "thermal:press",
    "ingredients": [
        (<tag:items:forge:ingots/copper> * 4) as IData,
        <item:woot_revived:shard_mold> as IData
    ],
    "result": [<item:woot_revived:copper_shard> as IData],
    "energy": 2400
});

// Item Infusing as Bottling ===
<recipetype:thermal:bottler>.addJsonRecipe("thermal_bottler/woot_compat/crying_obsidian", {
  "type": "thermal:bottler",
  "ingredients": [
    <item:minecraft:obsidian> as IData,
    (<fluid:woot_revived:mob_tears_fluid> * 1000) as IData
  ],
  "result": [<item:minecraft:crying_obsidian> as IData],
  "energy": 5000 * 2
});
<recipetype:thermal:bottler>.addJsonRecipe("thermal_bottler/woot_compat/prism", {
  "type": "thermal:bottler",
  "ingredients": [
    <tag:items:forge:glass> as IData,
    (<fluid:woot_revived:pure_dye_fluid> * 1000) as IData
  ],
  "result": [<item:woot_revived:prism> as IData],
  "energy": 5000 * 2
});

// Dye Plate Crafting ===
registerDyePlateRecipes("black", <item:woot_revived:black_dye_casing> as IItemStack, <tag:items:forge:dyes/black> as IIngredient, <item:woot_revived:black_dye_plate> as IItemStack);
registerDyePlateRecipes("white", <item:woot_revived:white_dye_casing> as IItemStack, <tag:items:forge:dyes/white> as IIngredient, <item:woot_revived:white_dye_plate> as IItemStack);
registerDyePlateRecipes("orange", <item:woot_revived:orange_dye_casing> as IItemStack, <tag:items:forge:dyes/orange> as IIngredient, <item:woot_revived:orange_dye_plate> as IItemStack);
registerDyePlateRecipes("magenta", <item:woot_revived:magenta_dye_casing> as IItemStack, <tag:items:forge:dyes/magenta> as IIngredient, <item:woot_revived:magenta_dye_plate> as IItemStack);
registerDyePlateRecipes("light_blue", <item:woot_revived:light_blue_dye_casing> as IItemStack, <tag:items:forge:dyes/light_blue> as IIngredient, <item:woot_revived:light_blue_dye_plate> as IItemStack);
registerDyePlateRecipes("yellow", <item:woot_revived:yellow_dye_casing> as IItemStack, <tag:items:forge:dyes/yellow> as IIngredient, <item:woot_revived:yellow_dye_plate> as IItemStack);
registerDyePlateRecipes("lime", <item:woot_revived:lime_dye_casing> as IItemStack, <tag:items:forge:dyes/lime> as IIngredient, <item:woot_revived:lime_dye_plate> as IItemStack);
registerDyePlateRecipes("pink", <item:woot_revived:pink_dye_casing> as IItemStack, <tag:items:forge:dyes/pink> as IIngredient, <item:woot_revived:pink_dye_plate> as IItemStack);
registerDyePlateRecipes("gray", <item:woot_revived:gray_dye_casing> as IItemStack, <tag:items:forge:dyes/gray> as IIngredient, <item:woot_revived:gray_dye_plate> as IItemStack);
registerDyePlateRecipes("light_gray", <item:woot_revived:light_gray_dye_casing> as IItemStack, <tag:items:forge:dyes/light_gray> as IIngredient, <item:woot_revived:light_gray_dye_plate> as IItemStack);
registerDyePlateRecipes("cyan", <item:woot_revived:cyan_dye_casing> as IItemStack, <tag:items:forge:dyes/cyan> as IIngredient, <item:woot_revived:cyan_dye_plate> as IItemStack);
registerDyePlateRecipes("purple", <item:woot_revived:purple_dye_casing> as IItemStack, <tag:items:forge:dyes/purple> as IIngredient, <item:woot_revived:purple_dye_plate> as IItemStack);
registerDyePlateRecipes("blue", <item:woot_revived:blue_dye_casing> as IItemStack, <tag:items:forge:dyes/blue> as IIngredient, <item:woot_revived:blue_dye_plate> as IItemStack);
registerDyePlateRecipes("brown", <item:woot_revived:brown_dye_casing> as IItemStack, <tag:items:forge:dyes/brown> as IIngredient, <item:woot_revived:brown_dye_plate> as IItemStack);
registerDyePlateRecipes("green", <item:woot_revived:green_dye_casing> as IItemStack, <tag:items:forge:dyes/green> as IIngredient, <item:woot_revived:green_dye_plate> as IItemStack);
registerDyePlateRecipes("red", <item:woot_revived:red_dye_casing> as IItemStack, <tag:items:forge:dyes/red> as IIngredient, <item:woot_revived:red_dye_plate> as IItemStack);

function registerDyePlateRecipes(dyeName as string, casingItem as IItemStack, dyerIngredient as IIngredient, dyePlateItem as IItemStack) as void {
  <recipetype:thermal:press>.addJsonRecipe("thermal_press/dye_casing/"+dyeName, {
      "type": "thermal:press",
      "ingredients": [
          dyerIngredient as IData,
          <item:woot_revived:dye_casing_mold> as IData
      ],
      "result": [casingItem as IData],
      "energy": 1200
  });

  <recipetype:thermal:bottler>.addJsonRecipe("thermal_bottler/dye_plate/"+dyeName, {
    "type": "thermal:bottler",
    "ingredients": [
      casingItem as IData,
      (<fluid:woot_revived:pure_dye_fluid> * 500) as IData
    ],
    "result": [dyePlateItem as IData],
    "energy": 2500 * 2
  });
}