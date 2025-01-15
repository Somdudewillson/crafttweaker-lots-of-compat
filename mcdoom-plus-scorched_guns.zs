#modloaded doom scguns

import crafttweaker.api.recipe.CraftingTableRecipeManager;

// Ammo crafting
craftingTable.removeByName("doom:shotgun_shell");
craftingTable.addShapeless("pack_doom_shotgun_shells_manual_only", 
    <item:doom:shotgun_shells>, 
    [
        <tag:items:forge:ingots/iron>,
        <item:scguns:shotgun_shell>,
        <item:scguns:shotgun_shell>,
        <item:scguns:shotgun_shell>,
        <item:scguns:shotgun_shell>
    ]);
craftingTable.removeByName("doom:bullets");
craftingTable.addShapeless("pack_doom_rifle_mag_manual_only", 
    <item:doom:bullets>, 
    [
        <item:scguns:anthralite_ingot>,
        <item:scguns:standard_copper_round>,
        <item:scguns:standard_copper_round>,
        <item:scguns:standard_copper_round>,
        <item:scguns:standard_copper_round>,
        <item:scguns:standard_copper_round>,
        <item:scguns:standard_copper_round>,
        <item:scguns:standard_copper_round>,
        <item:scguns:standard_copper_round>
    ]);
craftingTable.removeByName("doom:rocket");
craftingTable.addShapeless("convert_scguns_rocket_to_doom_rocket", 
    <item:doom:rocket>, 
    [
        <item:scguns:rocket>
    ]);
craftingTable.addShapeless("convert_doom_rocket_to_scguns_rocket", 
    <item:scguns:rocket>, 
    [
        <item:doom:rocket>
    ]);
craftingTable.removeByName("doom:chaingun_bullets");
craftingTable.addShapeless("pack_doom_chaingun_mag_manual_only", 
    <item:doom:chaingunbullets>, 
    [
        <tag:items:forge:ingots/iron>,
        <item:doom:bullets>,
        <item:doom:bullets>,
        <item:doom:bullets>,
        <item:doom:bullets>,
        <item:doom:bullets>
    ]);
craftingTable.removeByName("doom:energy_cells");
craftingTable.addShaped("convert_scguns_energy_cell_to_doom_energy_cell", 
    <item:doom:energy_cells>, 
    [
        [<item:minecraft:air>, <item:scguns:energy_cell>, <item:minecraft:air>],
        [<item:scguns:energy_cell>, <item:doom:argent_energy>, <item:scguns:energy_cell>],
        [<item:minecraft:air>, <item:scguns:energy_cell>, <item:minecraft:air>]
    ]);
craftingTable.removeByName("doom:bfg_cells");
craftingTable.addShaped("convert_doom_energy_cell_to_bfg_cell", 
    <item:doom:bfg_cell>, 
    [
        [<item:minecraft:air>, <item:doom:energy_cells>, <item:minecraft:air>],
        [<item:doom:energy_cells>, <item:doom:argent_energy>, <item:doom:energy_cells>],
        [<item:minecraft:air>, <item:doom:energy_cells>, <item:minecraft:air>]
    ]);

#onlyif modloaded create
<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("create_pack_doom_shotgun_shells")
    .require(<item:minecraft:iron_ingot>)
    .transitionTo(<item:minecraft:iron_ingot>)
    .loops(4)
    .addOutput(<item:doom:shotgun_shells>, 1)
    .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scguns:shotgun_shell>)) );
<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("create_pack_doom_rifle_mag")
    .require(<item:minecraft:iron_ingot>)
    .transitionTo(<item:minecraft:iron_ingot>)
    .loops(10)
    .addOutput(<item:doom:bullets>, 1)
    .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scguns:standard_copper_round>)) );
<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("create_pack_doom_chaingun_mag")
    .require(<item:minecraft:iron_ingot>)
    .transitionTo(<item:minecraft:iron_ingot>)
    .loops(50)
    .addOutput(<item:doom:chaingunbullets>, 1)
    .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:scguns:standard_copper_round>)) );
<recipetype:create:deploying>.addRecipe(
    "create_convert_scguns_energy_cell_to_doom_energy_cell", 
    <item:doom:argent_energy>, 
    <item:scguns:energy_cell>, 
    [<item:doom:energy_cells> % 50, <item:scguns:energy_cell> % 50], 
    false
);
<recipetype:create:deploying>.addRecipe(
    "create_convert_doom_energy_cell_to_bfg_cell", 
    <item:doom:energy_cells>, 
    <item:doom:argent_energy>, 
    [<item:doom:energy_cells> % 50, <item:doom:bfg_cell> % 50], 
    false
);
#endif

#onlyif modloaded thermal thermal_expansion
<recipetype:thermal:press>.addJsonRecipe("thermal_pack_doom_shotgun_shells", {
    "type": "thermal:press",
    "ingredients": [
    {
        "item": "scguns:shotgun_shell",
        "count": 4
    },
    {
        "tag": "forge:ingots/iron"
    }
    ],
    "result": [
    {
        "item": "doom:shotgun_shells"
    }
    ],
    "energy": 500+(4*500)
});
<recipetype:thermal:press>.addJsonRecipe("thermal_pack_doom_rifle_mag", {
    "type": "thermal:press",
    "ingredients": [
    {
        "item": "scguns:standard_copper_round",
        "count": 10
    },
    {
        "tag": "forge:ingots/iron"
    }
    ],
    "result": [
    {
        "item": "doom:bullets"
    }
    ],
    "energy": 500+(10*500)
});
<recipetype:thermal:press>.addJsonRecipe("thermal_pack_doom_chaingun_mag", {
    "type": "thermal:press",
    "ingredients": [
    {
        "item": "scguns:standard_copper_round",
        "count": 50
    },
    {
        "tag": "forge:ingots/iron"
    }
    ],
    "result": [
    {
        "item": "doom:chaingunbullets"
    }
    ],
    "energy": 500+(50*500)
});
#endif