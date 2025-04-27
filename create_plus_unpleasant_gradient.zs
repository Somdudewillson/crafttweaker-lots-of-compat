#modloaded create unpleasant_gradient

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;

var brown_dye = <item:minecraft:brown_dye>.withTag({
    display: {Name: "[\"\",{\"text\":\"Dye of Brown\",\"italic\":false}]"},
    Damage:1,
});
var lime_dye = <item:minecraft:lime_dye>.withTag({
    display: {Name: "[\"\",{\"text\":\"Dye of Lime\",\"italic\":false}]"},
    Damage:3,
});
var magenta_dye = <item:minecraft:magenta_dye>.withTag({
    display: {Name: "[\"\",{\"text\":\"Dye of Magenta\",\"italic\":false}]"},
    Damage:4,
});
var red_dye = <item:minecraft:red_dye>.withTag({
    display: {Name: "[\"\",{\"text\":\"Red of Dye\",\"italic\":false}]"},
    Damage:6,
});

var string_item = <item:minecraft:string>.withTag({
    display: {Name: "[\"\",{\"text\":\"Stroing\",\"italic\":false}]"},
    Damage:6,
});
var rotten_flesh = <item:minecraft:rotten_flesh>.withTag({
    display: {Name: "[\"\",{\"text\":\"Rotten\",\"italic\":false}]"},
    Damage:3,
});

<recipetype:create:milling>.addRecipe(
    "milled_unpleasant_chunk", 
    [brown_dye % 12, lime_dye % 12, magenta_dye % 12, rotten_flesh % 1], 
    <item:unpleasant_gradient:unpleasant_chunk>, 
    99);
<recipetype:create:crushing>.addRecipe(
    "crushed_unpleasant_chunk", 
    [brown_dye % 24, lime_dye % 24, magenta_dye % 24, rotten_flesh % 1], 
    <item:unpleasant_gradient:unpleasant_chunk>, 
    99);
<recipetype:create:mixing>.addRecipe("create_mix_more_unpleasant_chunks", 
    <constant:create:heat_condition:heated>, 
    [<item:unpleasant_gradient:unpleasant_chunk> % 100, <item:unpleasant_gradient:unpleasant_chunk> % 83, string_item % 1], 
    [<item:unpleasant_gradient:unpleasant_chunk>, <item:minecraft:brown_dye>|<item:minecraft:lime_dye>|<item:minecraft:magenta_dye>], 
    [<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(99)], 
    99);

<recipetype:create:milling>.addRecipe(
    "milled_unpleasantwool", 
    [brown_dye % 48, lime_dye % 48, magenta_dye % 48, string_item % 99, rotten_flesh % 1], 
    <item:unpleasant_gradient:unpleasantwool>, 
    99);
<recipetype:create:crushing>.addRecipe(
    "crushed_unpleasantwool", 
    [brown_dye % 96, lime_dye % 96, magenta_dye % 96, string_item % 99, string_item % 99, string_item % 49, rotten_flesh % 1], 
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
    [lapis_reward % 5, brown_dye % 3, lime_dye % 3, red_dye % 3], 
    [<item:unpleasant_gradient:unpleasant_chunk>], 
    [<fluid:minecraft:lava> * ContextualConstants.fluidAmtFromMb(99)], 
    99);
<recipetype:create:mixing>.addRecipe("create_mix_melt_unpleasantwool", 
    <constant:create:heat_condition:none>, 
    [lapis_reward % 20, brown_dye % 12, lime_dye % 12, red_dye % 12, string_item % 3], 
    [<item:unpleasant_gradient:unpleasantwool>], 
    [<fluid:minecraft:lava> * ContextualConstants.fluidAmtFromMb(99)], 
    99);

var fake_enchanted_apple = <item:minecraft:golden_apple>.withTag({
    display: {Name: "[\"\",{\"text\":\"Enchanted Golden Aρρle \",\"italic\":false,\"color\":\"light_purple\"}]"}, 
    Enchantments: [{}]
});
<recipetype:create:mixing>.addRecipe("create_mix_unpleasant_chunks_into_enchanted_golden_apple", 
    <constant:create:heat_condition:superheated>, 
    [fake_enchanted_apple % 99, brown_dye % 3, lime_dye % 3, magenta_dye % 3], 
    [<item:minecraft:golden_apple>, <item:unpleasant_gradient:unpleasant_chunk>, <item:unpleasant_gradient:unpleasant_chunk>, <item:unpleasant_gradient:unpleasant_chunk>, <item:unpleasant_gradient:unpleasant_chunk>], 
    [], 
    99);