#modloaded waystones

import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.mod.Mods;


#onlyif modloaded ars_nouveau
craftingTable.addShaped("ars_nouveau_warp_stone", <item:waystones:warp_stone>, [
    [<item:minecraft:air>, <tag:items:forge:gems/source>, <item:minecraft:air>],
    [<tag:items:forge:ender_pearls>, <tag:items:forge:gems/emerald>, <tag:items:forge:ender_pearls>],
    [<item:minecraft:air>, <tag:items:forge:gems/source>, <item:minecraft:air>],
]);
#endif
#onlyif modloaded botania
craftingTable.addShaped("botania_warp_stone", <item:waystones:warp_stone>, [
    [<item:minecraft:air>, <tag:items:forge:gems/amethyst>, <item:minecraft:air>],
    [BracketHandlers.getItem("botania:mana_pearl"), <tag:items:forge:gems/emerald>, BracketHandlers.getItem("botania:mana_pearl")],
    [<item:minecraft:air>, <tag:items:forge:gems/amethyst>, <item:minecraft:air>],
]);
#endif
#onlyif modloaded mekanism
craftingTable.addShaped("mekanism_warp_stone", <item:waystones:warp_stone>, [
    [<item:minecraft:air>, <tag:items:forge:gems/amethyst>, <item:minecraft:air>],
    [<tag:items:forge:gems/amethyst>, BracketHandlers.getItem("mekanism:teleportation_core"), <tag:items:forge:gems/amethyst>],
    [<item:minecraft:air>, <tag:items:forge:gems/amethyst>, <item:minecraft:air>],
]);
#endif
#onlyif modloaded thermal thermal_expansion
craftingTable.addShaped("thermal_warp_stone", <item:waystones:warp_stone>, [
    [<item:minecraft:air>, <tag:items:forge:gems/amethyst>, <item:minecraft:air>],
    [<tag:items:forge:ingots/enderium>, <tag:items:forge:gems/emerald>, <tag:items:forge:ingots/enderium>],
    [<item:minecraft:air>, <tag:items:forge:gems/amethyst>, <item:minecraft:air>],
]);
#endif