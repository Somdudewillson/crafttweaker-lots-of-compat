#modloaded solarflux

import crafttweaker.api.mod.Mods;
import crafttweaker.api.recipe.CraftingTableRecipeManager;

craftingTable.addShaped("solarflux_silver_mirror", <item:solarflux:mirror> * 15, [
    [<tag:items:forge:glass>, <tag:items:forge:glass>, <tag:items:forge:glass>],
    [<item:minecraft:air>, <tag:items:forge:ingots/silver>, <item:minecraft:air>],
]);

#onlyif modloaded ae2
craftingTable.remove(<item:solarflux:ae2/energy_upgrade>);
craftingTable.addShapeless("solarflux_ae2_converter_lots", <item:solarflux:ae2/energy_upgrade> * 4, [
    <item:solarflux:blank_upgrade>, <item:ae2:energy_acceptor>
]);
#endif

#onlyif modloaded thermal thermal_expansion
craftingTable.addShapeless("solarflux_transfer_rate_upgrade_signalum", <item:solarflux:transfer_rate_upgrade>, [
    <item:solarflux:blank_upgrade>, <tag:items:forge:ingots/signalum>
]);
craftingTable.addShaped("solarflux_traversal_upgrade_signalum", <item:solarflux:traversal_upgrade>, [
    [<tag:items:forge:ingots/signalum>, <item:solarflux:blank_upgrade>, <tag:items:forge:ingots/signalum>]
]);

craftingTable.addShaped("solarflux_dispersive_upgrade_enderium", <item:solarflux:dispersive_upgrade>, [
    [<item:minecraft:air>, ContextualConstants.GLOWSTONE_DUST, <item:minecraft:air>],
    [<tag:items:forge:ingots/enderium>, <item:solarflux:blank_upgrade>, <tag:items:forge:ingots/enderium>],
    [<item:minecraft:air>, ContextualConstants.GLOWSTONE_DUST, <item:minecraft:air>],
]);
craftingTable.addShaped("solarflux_block_charging_upgrade_enderium", <item:solarflux:block_charging_upgrade>, [
    [<item:minecraft:air>, <tag:items:forge:dusts/redstone>, <item:minecraft:air>],
    [<tag:items:forge:ingots/enderium>, <item:solarflux:blank_upgrade>, <tag:items:forge:ingots/enderium>],
    [<item:minecraft:air>, <tag:items:forge:dusts/redstone>, <item:minecraft:air>],
]);
#endif

craftingTable.remove(<item:solarflux:furnace_upgrade>);
craftingTable.addShaped("solarflux_furnace_upgrade_copper", <item:solarflux:furnace_upgrade>, [
    [<item:minecraft:air>, <tag:items:forge:ingots/copper>, <item:minecraft:air>],
    [<tag:items:forge:ingots/copper>, <item:solarflux:blank_upgrade>, <tag:items:forge:ingots/copper>],
    [<item:minecraft:air>, <item:minecraft:furnace>, <item:minecraft:air>],
]);