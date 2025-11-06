#modloaded scguns

import crafttweaker.api.ingredient.IIngredient;

// Alloys/Blends
if (Utils.tagHasElements(<tag:items:forge:dusts/iron>) && Utils.tagHasElements(<tag:items:forge:dusts/niter>)) {
    craftingTable.addShapeless("treated_iron_blend_from_dusts", 
        <item:scguns:treated_iron_blend> * 3, 
        [
            <tag:items:forge:dusts/iron>,
            <tag:items:forge:dusts/niter>,
            <tag:items:minecraft:coals>,
            ContextualConstants.REDSTONE_DUST
        ]);
}
if (Utils.tagHasElements(<tag:items:forge:dusts/steel>) && Utils.tagHasElements(<tag:items:forge:dusts/niter>)) {
    craftingTable.addShapeless("treated_iron_blend_from_dusts_incl_steel_dust", 
        <item:scguns:treated_iron_blend> * 3, 
        [
            <tag:items:forge:dusts/steel>,
            <tag:items:forge:dusts/niter>,
            ContextualConstants.REDSTONE_DUST
        ]);
}
if (Utils.tagHasElements(<tag:items:forge:dusts/anthralite>) && Utils.tagHasElements(<tag:items:forge:dusts/diamond>) && Utils.tagHasElements(<tag:items:forge:dusts/lapis>)) {
    craftingTable.addShapeless("diamond_steel_blend_from_dusts", 
        <item:scguns:diamond_steel_blend> * 4, 
        [
            <tag:items:forge:dusts/anthralite>,
            <tag:items:forge:dusts/diamond>,
            <tag:items:forge:dusts/lapis>,
            <item:scguns:treated_iron_blend>
        ]);
}

// Machines
if (Utils.tagHasElements(<tag:items:lots_of_compat:power_control_component>)) {
    var powerControlIngredient = <item:scguns:lightning_battery> as IIngredient | <tag:items:lots_of_compat:power_control_component>;

    craftingTable.removeByName("scguns:powered_macerator");
    craftingTable.addShaped("scguns_powered_macerator_with_power_control_component", 
        <item:scguns:powered_macerator>, 
        [
            [<tag:items:forge:slabs/smooth_stone>,<item:minecraft:air>,<tag:items:forge:slabs/smooth_stone>],
            [<tag:items:forge:slabs/smooth_stone>,<item:minecraft:blast_furnace>,<tag:items:forge:slabs/smooth_stone>],
            [<tag:items:forge:smooth_stone>,powerControlIngredient,<tag:items:forge:smooth_stone>]
        ]);
    
    var pressIngotIngredient = ContextualConstants.IRON_INGOT as IIngredient | <item:scguns:treated_iron_ingot>;
    craftingTable.removeByName("scguns:powered_mechanical_press");
    craftingTable.addShaped("scguns_powered_mechanical_press_with_power_control_component", 
        <item:scguns:powered_mechanical_press>, 
        [
            [pressIngotIngredient,<tag:items:forge:storage_blocks/iron>,pressIngotIngredient],
            [pressIngotIngredient,<item:minecraft:blast_furnace>,pressIngotIngredient],
            [<tag:items:forge:smooth_stone>,powerControlIngredient,<tag:items:forge:smooth_stone>]
        ]);
}