#modloaded biggerreactors

import crafttweaker.api.recipe.CraftingTableRecipeManager;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.mod.Mods;

var DIAMOND_CIRCUITS = <tag:items:lots_of_compat:diamond_circuits>;
var FLUID_PIPES = <tag:items:lots_of_compat:fluid_pipes>;

// Terminal Recipes
if ( (loadedMods.isModLoaded("thermal") && loadedMods.isModLoaded("thermal_dynamics") && loadedMods.isModLoaded("thermal_expansion")) || (DIAMOND_CIRCUITS.elements.length > 0) ) {
    craftingTable.remove(<item:biggerreactors:reactor_terminal>);
    craftingTable.addShaped("reactor_terminal_circuit", <item:biggerreactors:reactor_terminal>, [
        [ContextualConstants.IRON_INGOT, <tag:items:forge:ingots/graphite>, ContextualConstants.IRON_INGOT],
        [<tag:items:forge:ingots/graphite>, DIAMOND_CIRCUITS, <tag:items:forge:ingots/graphite>],
        [ContextualConstants.IRON_INGOT, <tag:items:forge:ingots/graphite>, ContextualConstants.IRON_INGOT],
    ]);
    craftingTable.addShaped("reactor_terminal_signalum", <item:biggerreactors:reactor_terminal>, [
        [<tag:items:forge:ingots/graphite>, <tag:items:forge:ingots/signalum>, <tag:items:forge:ingots/graphite>],
        [<tag:items:forge:ingots/signalum>, <tag:items:forge:gems/diamond>, <tag:items:forge:ingots/signalum>],
        [<tag:items:forge:ingots/graphite>, <tag:items:forge:ingots/signalum>, <tag:items:forge:ingots/graphite>],
    ]);
}

if ( (loadedMods.isModLoaded("thermal") && loadedMods.isModLoaded("thermal_dynamics") && loadedMods.isModLoaded("thermal_expansion")) || (DIAMOND_CIRCUITS.elements.length > 0) ) {
    craftingTable.remove(<item:biggerreactors:turbine_terminal>);
    craftingTable.addShaped("turbine_terminal_circuit", <item:biggerreactors:turbine_terminal>, [
        [<tag:items:forge:gems/quartz>, <tag:items:forge:ingots/graphite>, <tag:items:forge:gems/quartz>],
        [<item:biggerreactors:blutonium_ingot>, DIAMOND_CIRCUITS, <item:biggerreactors:blutonium_ingot>],
        [ContextualConstants.IRON_INGOT, <tag:items:forge:ingots/graphite>, ContextualConstants.IRON_INGOT],
    ]);
    craftingTable.addShaped("turbine_terminal_signalum", <item:biggerreactors:turbine_terminal>, [
        [<tag:items:forge:gems/quartz>, <tag:items:forge:ingots/signalum>, <tag:items:forge:gems/quartz>],
        [<item:biggerreactors:blutonium_ingot>, <tag:items:forge:gems/diamond>, <item:biggerreactors:blutonium_ingot>],
        [<tag:items:forge:ingots/signalum>, <tag:items:forge:ingots/signalum>, <tag:items:forge:ingots/signalum>],
    ]);
}

if ( (loadedMods.isModLoaded("thermal") && loadedMods.isModLoaded("thermal_dynamics") && loadedMods.isModLoaded("thermal_expansion")) || (DIAMOND_CIRCUITS.elements.length > 0) ) {
    craftingTable.remove(<item:biggerreactors:heat_exchanger_terminal>);
    craftingTable.addShaped("heat_exchanger_terminal_circuit", <item:biggerreactors:heat_exchanger_terminal>, [
        [ContextualConstants.IRON_INGOT, DIAMOND_CIRCUITS, ContextualConstants.IRON_INGOT],
        [<item:biggerreactors:ludicrite_ingot>, <item:biggerreactors:ludicrite_ingot>, <item:biggerreactors:ludicrite_ingot>],
        [<tag:items:forge:ingots/copper>, DIAMOND_CIRCUITS, <tag:items:forge:ingots/copper>],
    ]);
    craftingTable.addShaped("heat_exchanger_terminal_signalum", <item:biggerreactors:heat_exchanger_terminal>, [
        [<tag:items:forge:ingots/signalum>, <tag:items:forge:gems/diamond>, <tag:items:forge:ingots/signalum>],
        [<item:biggerreactors:ludicrite_ingot>, <item:biggerreactors:ludicrite_ingot>, <item:biggerreactors:ludicrite_ingot>],
        [<tag:items:forge:ingots/signalum>, <tag:items:forge:gems/diamond>, <tag:items:forge:ingots/signalum>],
    ]);
}

// Fluid Port Recipes
if (FLUID_PIPES.elements.length > 0) {
    craftingTable.addShaped("reactor_coolant_port_fluid_pipe", <item:biggerreactors:reactor_coolant_port>, [
        [<item:biggerreactors:reactor_casing>, <item:minecraft:air>, <item:biggerreactors:reactor_casing>],
        [<item:minecraft:air>, FLUID_PIPES, <item:minecraft:air>],
        [<item:biggerreactors:reactor_casing>, <item:minecraft:air>, <item:biggerreactors:reactor_casing>],
    ]);
    craftingTable.addShaped("turbine_fluid_port_fluid_pipe", <item:biggerreactors:turbine_fluid_port>, [
        [<item:biggerreactors:turbine_casing>, <item:minecraft:air>, <item:biggerreactors:turbine_casing>],
        [<item:minecraft:air>, FLUID_PIPES, <item:minecraft:air>],
        [<item:biggerreactors:turbine_casing>, <item:minecraft:air>, <item:biggerreactors:turbine_casing>],
    ]);
    craftingTable.addShaped("heat_exchanger_fluid_port_fluid_pipe", <item:biggerreactors:heat_exchanger_fluid_port>, [
        [<item:biggerreactors:heat_exchanger_casing>, <item:minecraft:air>, <item:biggerreactors:heat_exchanger_casing>],
        [<item:minecraft:air>, FLUID_PIPES, <item:minecraft:air>],
        [<item:biggerreactors:heat_exchanger_casing>, <item:minecraft:air>, <item:biggerreactors:heat_exchanger_casing>],
    ]);
}