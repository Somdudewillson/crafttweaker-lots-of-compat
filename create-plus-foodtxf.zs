#modloaded create foodtxf

import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.IIngredient;

// Thermos =====
<recipetype:create:filling>.addJsonRecipe("create_fill_water_thermos", {
  "type": "create:filling",
  "ingredients": [
    <item:foodtxf:thermos> as IData,
    (<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ],
  "results": [
    <item:foodtxf:water_thermos> as IData
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_fill_lava_thermos", {
  "type": "create:filling",
  "ingredients": [
    <item:foodtxf:thermos> as IData,
    (<fluid:minecraft:lava> * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ],
  "results": [
    <item:foodtxf:lava_thermos> as IData
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_fill_milk_thermos", {
  "type": "create:filling",
  "ingredients": [
    <item:foodtxf:thermos> as IData,
    (ContextualConstants.MILK_FLUID * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ],
  "results": [
    <item:foodtxf:milk_thermos> as IData
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_fill_chocomilk_thermos", {
  "type": "create:filling",
  "ingredients": [
    <item:foodtxf:milk_thermos> as IData,
    (<fluid:create:chocolate> * ContextualConstants.fluidAmtFromMb(333)) as IData
  ],
  "results": [
    <item:foodtxf:chocomilk_thermos> as IData
  ]
});

<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("assemble_thermos_of_chocomilk_from_milk")
 .transitionTo(<item:foodtxf:milk_thermos>)
 .require(<item:foodtxf:milk_thermos>)
 .loops(2)
 .addOutput(<item:foodtxf:chocomilk_thermos> * 1, 1)
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:cocoa_beans>)) );

// Glass of Fluid =====
<recipetype:create:filling>.addJsonRecipe("create_fill_foodtxf_glass_of_water", {
  "type": "create:filling",
  "ingredients": [
    <item:foodtxf:glass> as IData,
    (<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(333)) as IData
  ],
  "results": [
    <item:foodtxf:glass_of_water> as IData
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_fill_foodtxf_glass_of_lava", {
  "type": "create:filling",
  "ingredients": [
    <item:foodtxf:glass> as IData,
    (<fluid:minecraft:lava> * ContextualConstants.fluidAmtFromMb(333)) as IData
  ],
  "results": [
    <item:foodtxf:glass_of_lava> as IData
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_fill_foodtxf_glass_of_milk", {
  "type": "create:filling",
  "ingredients": [
    <item:foodtxf:glass> as IData,
    (ContextualConstants.MILK_FLUID * ContextualConstants.fluidAmtFromMb(333)) as IData
  ],
  "results": [
    <item:foodtxf:glass_of_milk> as IData
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_fill_foodtxf_glass_of_chocomilk", {
  "type": "create:filling",
  "ingredients": [
    <item:foodtxf:glass_of_milk> as IData,
    (<fluid:create:chocolate> * ContextualConstants.fluidAmtFromMb(111)) as IData
  ],
  "results": [
    <item:foodtxf:glass_of_chocomilk> as IData
  ]
});


<recipetype:create:deploying>.addRecipe(
    "create_deploy_bread_with_glass_of_water", 
    <item:foodtxf:glass_of_water>, 
    <item:minecraft:bread>, 
    [<item:foodtxf:glass_of_water_and_bread> % 100], 
    false
);
<recipetype:create:deploying>.addRecipe(
    "create_deploy_toasted_bread_with_glass_of_milk", 
    <item:foodtxf:glass_of_milk>, 
    <item:foodtxf:toasted_bread>, 
    [<item:foodtxf:glass_of_milk_and_toasted_bread> % 100], 
    false
);
<recipetype:create:deploying>.addRecipe(
    "create_deploy_toasted_bread_with_glass_of_chocomilk", 
    <item:foodtxf:glass_of_chocomilk>, 
    <item:foodtxf:toasted_bread>, 
    [<item:foodtxf:glass_of_chocomilk_and_toasted_bread> % 100], 
    false
);
<recipetype:create:deploying>.addRecipe(
    "create_deploy_cocoa_beans_into_glass_of_milk_and_toasted_bread", 
    <item:foodtxf:glass_of_milk_and_toasted_bread>, 
    <item:minecraft:cocoa_beans>, 
    [<item:foodtxf:glass_of_chocomilk_and_toasted_bread> % 100], 
    false
);
<recipetype:create:deploying>.addRecipe(
    "create_deploy_cocoa_beans_into_glass_of_milk_and_cookies", 
    <item:foodtxf:glass_of_milk_and_cookies>, 
    <item:minecraft:cocoa_beans>, 
    [<item:foodtxf:glass_of_chocomilk_and_cookies> % 100], 
    false
);

<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("assemble_glass_of_milk_and_cookies")
 .transitionTo(<item:foodtxf:glass_of_milk>)
 .require(<item:foodtxf:glass_of_milk>)
 .loops(2)
 .addOutput(<item:foodtxf:glass_of_milk_and_cookies> * 1, 1)
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:cookie>)) );
<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("assemble_glass_of_chocomilk_and_cookies_from_chocomilk")
 .transitionTo(<item:foodtxf:glass_of_chocomilk>)
 .require(<item:foodtxf:glass_of_chocomilk>)
 .loops(2)
 .addOutput(<item:foodtxf:glass_of_chocomilk_and_cookies> * 1, 1)
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:cookie>)) );
<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("assemble_glass_of_chocomilk_and_cookies_from_milk")
 .transitionTo(<item:foodtxf:glass_of_milk>)
 .require(<item:foodtxf:glass_of_milk>)
 .loops(1)
 .addOutput(<item:foodtxf:glass_of_chocomilk_and_cookies> * 1, 1)
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:cocoa_beans>))
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:cookie>))
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:cookie>)) );

<recipetype:create:mixing>.addJsonRecipe("create_mix_foodtxf_glass_of_fruit_juice", {
  "type": "create:mixing",
  "ingredients": [
    (<item:foodtxf:glass> * 1) as IData,
    (<tag:items:foodtxf:fruits> * 1) as IData,
    (<tag:items:foodtxf:fruits> * 1) as IData
  ],
  "results": [
    (<item:foodtxf:glass_of_fruit_juice> * 1) as IData
  ]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_foodtxf_glass_of_vegetable_juice", {
  "type": "create:mixing",
  "ingredients": [
    (<item:foodtxf:glass> * 1) as IData,
    (<tag:items:foodtxf:vegetables> * 1) as IData,
    (<tag:items:foodtxf:vegetables> * 1) as IData
  ],
  "results": [
    (<item:foodtxf:glass_of_vegetable_juice> * 1) as IData
  ]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_foodtxf_glass_of_mixed_juice", {
  "type": "create:mixing",
  "ingredients": [
    (<item:foodtxf:glass> * 1) as IData,
    (<tag:items:foodtxf:fruits> * 1) as IData,
    (<tag:items:foodtxf:vegetables> * 1) as IData
  ],
  "results": [
    (<item:foodtxf:glass_of_mixed_juice> * 1) as IData
  ]
});

 // Cheese Sandwich =====
<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("assemble_cheese_sandwich")
 .transitionTo(<item:foodtxf:toasted_bread_slice>)
 .require(<item:foodtxf:toasted_bread_slice>)
 .loops(1)
 .addOutput(<item:foodtxf:cheese_sandwich> * 1, 1)
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:foodtxf:cheese_slice>))
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:foodtxf:toasted_bread_slice>)) );

// Empanada =====
<recipetype:create:compacting>.addJsonRecipe("create_compact_raw_cheese_empanada", {
  "type": "create:compacting",
  "ingredients": [
    ContextualConstants.DOUGH as IData,
    <item:foodtxf:cheese_slice> as IData
  ],
  "results": [
    (<item:foodtxf:raw_cheese_empanada> * 1) as IData
  ]
});
<recipetype:create:compacting>.addJsonRecipe("create_compact_raw_meat_empanada", {
  "type": "create:compacting",
  "ingredients": [
    ContextualConstants.DOUGH as IData,
    ContextualConstants.RAW_MEAT as IData
  ],
  "results": [
    (<item:foodtxf:raw_meat_empanada> * 1) as IData
  ]
});

// Cereal =====
<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("assemble_box_of_cereal")
 .transitionTo(<item:foodtxf:box>)
 .require(<item:foodtxf:box>)
 .loops(8)
 .addOutput(<item:foodtxf:box_of_cereal> * 1, 1)
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(ContextualConstants.SEEDS)) );

// Box of Cookies =====
<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("assemble_box_of_cookies")
 .transitionTo(<item:foodtxf:box>)
 .require(<item:foodtxf:box>)
 .loops(8)
 .addOutput(<item:foodtxf:box_of_cookies> * 1, 1)
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:cookie>)) );

 // Bowl of Rice =====
<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("assemble_foodtxf_rice_bowl")
 .transitionTo(<item:minecraft:bowl>)
 .require(<item:minecraft:bowl>)
 .loops(3)
 .addOutput(<item:foodtxf:rice_bowl> * 1, 1)
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(ContextualConstants.RICE)) );