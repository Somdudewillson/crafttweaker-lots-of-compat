#modloaded botania

// This script uses ore block tags to register ore blocks to the Botania Orechid and Orechid Ignem

import crafttweaker.api.game.Game;
import crafttweaker.api.block.Block;
import crafttweaker.api.tag.manager.ITagManager;

val addedRecipes as bool[string] = {};

var allBlocks = game.getBlocks();
for block in allBlocks {
  if (block.registryName.namespace != 'minecraft' && block in <tag:blocks:forge:ores>) {
    var isNether = block in <tag:blocks:forge:ores_in_ground/netherrack>;
    var orechidVariant = "orechid";
    if (isNether) {
      orechidVariant += "_ignem";
    }

    var newRecipeName = orechidVariant+"_compat_"+block.registryName.path;
    if (newRecipeName in addedRecipes) {
      continue;
    }
    addedRecipes[newRecipeName] = true;

    var containingBlock as Block = null;
    if (block in <tag:blocks:forge:ores_in_ground/stone>) {
      containingBlock = <block:minecraft:stone>;
    } else if (block in <tag:blocks:forge:ores_in_ground/deepslate>) {
      containingBlock = <block:minecraft:deepslate>;
    } else if (block in <tag:blocks:forge:ores_in_ground/netherrack>) {
      containingBlock = <block:minecraft:netherrack>;
    } else if (block in <tag:blocks:forge:ores_in_ground/end_stone>) {
      containingBlock = <block:minecraft:end_stone>;
    } else {
      continue;
    }

    var oreWeight = 100;
    if (block in <tag:blocks:minecraft:needs_stone_tool>) {
      oreWeight = 29371;
    } else if (block in <tag:blocks:minecraft:needs_iron_tool>) {
      oreWeight = 7654;
    } else if (block in <tag:blocks:minecraft:needs_diamond_tool>) {
      oreWeight = 148;
    }

    if (isNether) {
      <recipetype:botania:orechid_ignem>.addJsonRecipe(newRecipeName, {
        "type": "botania:orechid_ignem",
        "input": {
          "type": "block",
          "block": containingBlock.registryName
        },
        "output": {
          "type": "block",
          "block": block.registryName
        },
        "weight": oreWeight
      });
    } else {
      <recipetype:botania:orechid>.addJsonRecipe(newRecipeName, {
        "type": "botania:orechid",
        "input": {
          "type": "block",
          "block": containingBlock.registryName
        },
        "output": {
          "type": "block",
          "block": block.registryName
        },
        "weight": oreWeight
      });
    }
  }
}