#modloaded create unpleasant_gradient

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;

<recipetype:create:milling>.addRecipe(
    "milled_unpleasant_chunk", 
    [<item:minecraft:brown_dye> % 12, <item:minecraft:lime_dye> % 12, <item:minecraft:magenta_dye> % 12, <item:minecraft:rotten_flesh> % 1], 
    <item:unpleasant_gradient:unpleasant_chunk>, 
    99);
<recipetype:create:crushing>.addRecipe(
    "crushed_unpleasant_chunk", 
    [<item:minecraft:brown_dye> % 24, <item:minecraft:lime_dye> % 24, <item:minecraft:magenta_dye> % 24, <item:minecraft:rotten_flesh> % 1], 
    <item:unpleasant_gradient:unpleasant_chunk>, 
    99);
<recipetype:create:mixing>.addRecipe("create_mix_more_unpleasant_chunks", 
    <constant:create:heat_condition:heated>, 
    [<item:unpleasant_gradient:unpleasant_chunk> % 100, <item:unpleasant_gradient:unpleasant_chunk> % 83, <item:minecraft:string> % 1], 
    [<item:unpleasant_gradient:unpleasant_chunk>, <item:minecraft:brown_dye>|<item:minecraft:lime_dye>|<item:minecraft:magenta_dye>], 
    [<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(99)], 
    99);

<recipetype:create:milling>.addRecipe(
    "milled_unpleasantwool", 
    [<item:minecraft:brown_dye> % 48, <item:minecraft:lime_dye> % 48, <item:minecraft:magenta_dye> % 48, <item:minecraft:string> % 99, <item:minecraft:rotten_flesh> % 1], 
    <item:unpleasant_gradient:unpleasantwool>, 
    99);
<recipetype:create:crushing>.addRecipe(
    "crushed_unpleasantwool", 
    [<item:minecraft:brown_dye> % 96, <item:minecraft:lime_dye> % 96, <item:minecraft:magenta_dye> % 96, <item:minecraft:string> % 99, <item:minecraft:string> % 99, <item:minecraft:string> % 49, <item:minecraft:rotten_flesh> % 1], 
    <item:unpleasant_gradient:unpleasantwool>, 
    99);
<recipetype:create:compacting>.addRecipe("create_compact_unpleasantwool", 
    <constant:create:heat_condition:none>, 
    [<item:unpleasant_gradient:unpleasantwool>, <item:minecraft:dirt> % 1], 
    [<tag:items:minecraft:wool>, <item:unpleasant_gradient:unpleasant_chunk> * 2], 
    [], 
    99);

var lapis_reward = <item:minecraft:lapis_lazuli>.withTag({
    AttributeModifiers: [
        {Amount: -0.01, Name: "unpleasant_speed", Operation: 2, UUID: [-125323, 33529, 204022, -67058], AttributeName: "generic.movement_speed"}
    ], 
    Enchantments:[{lvl:1,id:"vanishing_curse"}],
    display: {Name: "[\"\",{\"text\":\"Lapised Lazuli\",\"italic\":false}]"},
    HideFlags:2
});
<recipetype:create:mixing>.addRecipe("create_mix_melt_unpleasant_chunks", 
    <constant:create:heat_condition:none>, 
    [lapis_reward % 5, <item:minecraft:brown_dye> % 3, <item:minecraft:lime_dye> % 3, <item:minecraft:red_dye> % 3], 
    [<item:unpleasant_gradient:unpleasant_chunk>], 
    [<fluid:minecraft:lava> * ContextualConstants.fluidAmtFromMb(99)], 
    99);
<recipetype:create:mixing>.addRecipe("create_mix_melt_unpleasantwool", 
    <constant:create:heat_condition:none>, 
    [lapis_reward % 20, <item:minecraft:brown_dye> % 12, <item:minecraft:lime_dye> % 12, <item:minecraft:red_dye> % 12, <item:minecraft:string> % 3], 
    [<item:unpleasant_gradient:unpleasantwool>], 
    [<fluid:minecraft:lava> * ContextualConstants.fluidAmtFromMb(99)], 
    99);

var fake_enchanted_apple = <item:minecraft:golden_apple>.withTag({
    display: {Name: "[\"\",{\"text\":\"Enchanted Golden Aρρle \",\"italic\":false,\"color\":\"light_purple\"}]"}, 
    Enchantments: [{}]
});
<recipetype:create:mixing>.addRecipe("create_mix_unpleasant_chunks_into_enchanted_golden_apple", 
    <constant:create:heat_condition:superheated>, 
    [fake_enchanted_apple % 99, <item:minecraft:brown_dye> % 3, <item:minecraft:lime_dye> % 3, <item:minecraft:magenta_dye> % 3], 
    [<item:minecraft:golden_apple>, <item:unpleasant_gradient:unpleasant_chunk>, <item:unpleasant_gradient:unpleasant_chunk>, <item:unpleasant_gradient:unpleasant_chunk>, <item:unpleasant_gradient:unpleasant_chunk>], 
    [], 
    99);