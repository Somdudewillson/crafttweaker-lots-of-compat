#modloaded automobility

import crafttweaker.api.ingredient.IIngredient;

craftingTable.remove(<item:automobility:dash_panel>);
craftingTable.addShaped("craft_dash_panel_also_with_glowstone", <item:automobility:dash_panel> * 2, [
    [ContextualConstants.IRON_INGOT, ContextualConstants.GLOWSTONE_DUST as IIngredient | <item:minecraft:glow_ink_sac>, ContextualConstants.IRON_INGOT],
    [ContextualConstants.IRON_INGOT, ContextualConstants.REDSTONE_DUST, ContextualConstants.IRON_INGOT],
    [ContextualConstants.IRON_INGOT, <item:minecraft:blaze_powder>, ContextualConstants.IRON_INGOT],
]);