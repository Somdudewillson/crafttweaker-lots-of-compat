#modloaded create creategbd

craftingTable.addShaped("craft_guardian_beam_capacitor_vanilla", <item:creategbd:guardian_beam_capacitor>, [
    [<item:minecraft:prismarine_crystals>, ContextualConstants.GLOWSTONE_DUST, <item:minecraft:prismarine_crystals>],
    [<item:minecraft:prismarine_crystals>, <tag:items:forge:storage_blocks/redstone>, <item:minecraft:prismarine_crystals>],
    [<item:minecraft:prismarine_shard>, <tag:items:forge:ingots/copper>, <item:minecraft:prismarine_shard>],
]);
craftingTable.addShaped("craft_elder_guardian_beam_capacitor_vanilla", <item:creategbd:elder_guardian_beam_capacitor>, [
    [<item:minecraft:sea_lantern>, ContextualConstants.GLOWSTONE_STORAGE_BLOCK, <item:minecraft:sea_lantern>],
    [<item:minecraft:sea_lantern>, <tag:items:forge:storage_blocks/redstone>, <item:minecraft:sea_lantern>],
    [<item:minecraft:prismarine_shard>, ContextualConstants.GOLD_INGOT, <item:minecraft:prismarine_shard>],
]);
#onlyif modloaded thermal
craftingTable.addShaped("craft_guardian_beam_capacitor_thermal", <item:creategbd:guardian_beam_capacitor>, [
    [<item:minecraft:prismarine_crystals>, ContextualConstants.GLOWSTONE_DUST, <item:minecraft:prismarine_crystals>],
    [<item:minecraft:prismarine_crystals>, ContextualConstants.GLOWSTONE_DUST, <item:minecraft:prismarine_crystals>],
    [<item:minecraft:prismarine_shard>, <item:thermal:rf_coil>, <item:minecraft:prismarine_shard>],
]);
craftingTable.addShaped("craft_elder_guardian_beam_capacitor_thermal", <item:creategbd:elder_guardian_beam_capacitor>, [
    [<item:minecraft:sea_lantern>, ContextualConstants.GLOWSTONE_STORAGE_BLOCK, <item:minecraft:sea_lantern>],
    [<item:minecraft:sea_lantern>, <item:thermal:rf_coil>, <item:minecraft:sea_lantern>],
    [<item:minecraft:prismarine_shard>, ContextualConstants.GOLD_INGOT, <item:minecraft:prismarine_shard>],
]);
#endif
#onlyif modloaded scguns
craftingTable.addShaped("craft_guardian_beam_capacitor_scguns", <item:creategbd:guardian_beam_capacitor> * 2, [
    [<item:minecraft:prismarine_crystals>, ContextualConstants.GLOWSTONE_DUST, <item:minecraft:prismarine_crystals>],
    [<item:minecraft:prismarine_crystals>, ContextualConstants.GLOWSTONE_DUST, <item:minecraft:prismarine_crystals>],
    [<item:minecraft:prismarine_shard>, <item:scguns:energy_core>, <item:minecraft:prismarine_shard>],
]);
craftingTable.addShaped("craft_elder_guardian_beam_capacitor_scguns", <item:creategbd:elder_guardian_beam_capacitor>, [
    [<item:minecraft:prismarine_crystals>, ContextualConstants.GLOWSTONE_STORAGE_BLOCK, <item:minecraft:prismarine_crystals>],
    [<item:minecraft:sea_lantern>, <item:scguns:plasma_core>, <item:minecraft:sea_lantern>],
    [<item:minecraft:prismarine_shard>, ContextualConstants.GOLD_INGOT, <item:minecraft:prismarine_shard>],
]);
#endif
#onlyif modloaded tfmg
craftingTable.addShaped("craft_guardian_beam_capacitor_tfmg", <item:creategbd:guardian_beam_capacitor> * 2, [
    [<item:minecraft:prismarine_crystals>, ContextualConstants.GLOWSTONE_DUST, <item:minecraft:prismarine_crystals>],
    [<item:minecraft:prismarine_crystals>, ContextualConstants.GLOWSTONE_DUST, <item:minecraft:prismarine_crystals>],
    [<item:minecraft:prismarine_shard>, <item:tfmg:capacitor_>, <item:minecraft:prismarine_shard>],
]);
craftingTable.addShaped("craft_elder_guardian_beam_capacitor_tfmg", <item:creategbd:elder_guardian_beam_capacitor>, [
    [<item:minecraft:sea_lantern>, ContextualConstants.GLOWSTONE_DUST, <item:minecraft:sea_lantern>],
    [<item:minecraft:sea_lantern>, ContextualConstants.GLOWSTONE_DUST, <item:minecraft:sea_lantern>],
    [<item:minecraft:prismarine_shard>, <item:tfmg:capacitor_>, <item:minecraft:prismarine_shard>],
]);
#endif