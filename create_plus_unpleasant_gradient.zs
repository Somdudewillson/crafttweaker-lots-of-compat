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

<recipetype:create:milling>.addJsonRecipe("milled_unpleasant_chunk", {
    "type": "create:milling",
    "ingredients": [
        <item:unpleasant_gradient:unpleasant_chunk> as IData
    ],
    "results": [
        (brown_dye % 12) as IData,
        (lime_dye % 12) as IData,
        (magenta_dye % 12) as IData,
        (rotten_flesh % 1) as IData
    ],
    "processingTime": 99
});
<recipetype:create:crushing>.addJsonRecipe("crushed_unpleasant_chunk", {
    "type": "create:crushing",
    "ingredients": [
        <item:unpleasant_gradient:unpleasant_chunk> as IData
    ],
    "results": [
        (brown_dye % 24) as IData,
        (lime_dye % 24) as IData,
        (magenta_dye % 24) as IData,
        (rotten_flesh % 1) as IData
    ],
    "processingTime": 99
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_more_unpleasant_chunks", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    <item:unpleasant_gradient:unpleasant_chunk> as IData,
    (<item:minecraft:brown_dye>|<item:minecraft:lime_dye>|<item:minecraft:magenta_dye>) as IData,
    (<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(99)) as IData
  ],
  "results": [
    (<item:unpleasant_gradient:unpleasant_chunk> % 100) as IData,
    (<item:unpleasant_gradient:unpleasant_chunk> % 83) as IData,
    (string_item % 1) as IData
  ]
});

<recipetype:create:milling>.addJsonRecipe("milled_unpleasantwool", {
    "type": "create:milling",
    "ingredients": [
        <item:unpleasant_gradient:unpleasantwool> as IData
    ],
    "results": [
        (brown_dye % 48) as IData,
        (lime_dye % 48) as IData,
        (magenta_dye % 48) as IData,
        (string_item % 99) as IData,
        (rotten_flesh % 1) as IData
    ],
    "processingTime": 99
});
<recipetype:create:crushing>.addJsonRecipe("crushed_unpleasantwool", {
    "type": "create:crushing",
    "ingredients": [
        <item:unpleasant_gradient:unpleasantwool> as IData
    ],
    "results": [
        (brown_dye % 96) as IData,
        (lime_dye % 96) as IData,
        (magenta_dye % 96) as IData,
        (string_item % 99) as IData,
        (string_item % 99) as IData,
        (string_item % 49) as IData,
        (rotten_flesh % 1) as IData
    ],
    "processingTime": 99
});
<recipetype:create:compacting>.addJsonRecipe("create_compact_unpleasantwool", {
  "type": "create:compacting",
  "ingredients": [
    <item:minecraft:wool> as IData,
    (<item:unpleasant_gradient:unpleasant_chunk> * 2) as IData
  ],
  "results": [
    (<item:unpleasant_gradient:unpleasantwool> * 1) as IData,
    (<item:minecraft:dirt> % 1) as IData
  ]
});

var lapis_reward = <item:minecraft:lapis_lazuli>.withTag({
    AttributeModifiers: [
        {Amount: -0.01, Name: "unpleasant_speed", Operation: 2, UUID: [-125323, 33529, 204022, -67058], AttributeName: "generic.movement_speed"}
    ], 
    Enchantments:[{lvl:1,id:"vanishing_curse"}],
    display: {Name: "[\"\",{\"text\":\"Lapised Lazuli\",\"italic\":false}]"},
    HideFlags:2
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_melt_unpleasant_chunks", {
  "type": "create:mixing",
  "heatRequirement": "none",
  "ingredients": [
    <item:unpleasant_gradient:unpleasant_chunk> as IData,
    (<fluid:minecraft:lava> * ContextualConstants.fluidAmtFromMb(99)) as IData
  ],
  "results": [
    (lapis_reward % 5) as IData,
    (brown_dye % 3) as IData,
    (lime_dye % 3) as IData,
    (red_dye % 3) as IData
  ]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_melt_unpleasantwool", {
  "type": "create:mixing",
  "heatRequirement": "none",
  "ingredients": [
    <item:unpleasant_gradient:unpleasantwool> as IData,
    (<fluid:minecraft:lava> * ContextualConstants.fluidAmtFromMb(99)) as IData
  ],
  "results": [
    (lapis_reward % 20) as IData,
    (brown_dye % 12) as IData,
    (lime_dye % 12) as IData,
    (red_dye % 12) as IData,
    (string_item % 3) as IData
  ]
});

var fake_enchanted_apple = <item:minecraft:golden_apple>.withTag({
    display: {Name: "[\"\",{\"text\":\"Enchanted Golden Aρρle \",\"italic\":false,\"color\":\"light_purple\"}]"}, 
    Enchantments: [{}]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_unpleasant_chunks_into_enchanted_golden_apple", {
  "type": "create:mixing",
  "heatRequirement": "superheated",
  "ingredients": [
    <item:minecraft:golden_apple> as IData,
    <item:unpleasant_gradient:unpleasant_chunk> as IData,
    <item:unpleasant_gradient:unpleasant_chunk> as IData,
    <item:unpleasant_gradient:unpleasant_chunk> as IData,
    <item:unpleasant_gradient:unpleasant_chunk> as IData
  ],
  "results": [
    (fake_enchanted_apple % 99) as IData,
    (brown_dye % 3) as IData,
    (lime_dye % 3) as IData,
    (magenta_dye % 3) as IData
  ]
});