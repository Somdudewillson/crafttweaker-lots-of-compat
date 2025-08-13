#modloaded waystones

import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.mod.Mods;


#onlyif modloaded ars_nouveau
craftingTable.addShaped("ars_nouveau_warp_stone", <item:waystones:warp_stone>, [
    [<item:minecraft:air>, <tag:item:forge:gems/source>, <item:minecraft:air>],
    [<tag:item:forge:ender_pearls>, <tag:item:forge:gems/emerald>, <tag:item:forge:ender_pearls>],
    [<item:minecraft:air>, <tag:item:forge:gems/source>, <item:minecraft:air>],
]);
#endif
#onlyif modloaded botania
craftingTable.addShaped("botania_warp_stone", <item:waystones:warp_stone>, [
    [<item:minecraft:air>, <tag:item:forge:gems/amethyst>, <item:minecraft:air>],
    [BracketHandlers.getItem("botania:mana_pearl"), <tag:item:forge:gems/emerald>, BracketHandlers.getItem("botania:mana_pearl")],
    [<item:minecraft:air>, <tag:item:forge:gems/amethyst>, <item:minecraft:air>],
]);
#endif
#onlyif modloaded mekanism
craftingTable.addShaped("mekanism_warp_stone", <item:waystones:warp_stone>, [
    [<item:minecraft:air>, <tag:item:forge:gems/amethyst>, <item:minecraft:air>],
    [<tag:item:forge:gems/amethyst>, BracketHandlers.getItem("mekanism:teleportation_core"), <tag:item:forge:gems/amethyst>],
    [<item:minecraft:air>, <tag:item:forge:gems/amethyst>, <item:minecraft:air>],
]);
#endif
#onlyif modloaded thermal thermal_expansion
craftingTable.addShaped("thermal_warp_stone", <item:waystones:warp_stone>, [
    [<item:minecraft:air>, <tag:item:forge:gems/amethyst>, <item:minecraft:air>],
    [<tag:item:forge:ingots/enderium>, <tag:item:forge:gems/emerald>, <tag:item:forge:ingots/enderium>],
    [<item:minecraft:air>, <tag:item:forge:gems/amethyst>, <item:minecraft:air>],
]);
#endif