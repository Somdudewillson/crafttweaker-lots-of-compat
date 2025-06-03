#modloaded unpleasant_gradient

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;

(<item:unpleasant_gradient:unpleasant_chunk> as IIngredient).burnTime = 192;
(<item:unpleasant_gradient:unpleasantwool> as IIngredient).burnTime = 100+(192*4);

var unpleasantstew = <item:minecraft:suspicious_stew>.withTag({
    display: {Name: "[\"\",{\"text\":\"Unpleasantstew\",\"italic\":false}]"}, 
    Effects: [{EffectDuration: 6000, EffectId: 27}, {EffectDuration: 6000, EffectId: 31}, {EffectDuration: 600, EffectId: 9}]
});
craftingTable.addShapeless("craft_unpleasantstew", unpleasantstew, [
    <item:minecraft:bowl>,
    <item:minecraft:red_mushroom>,
    <item:minecraft:brown_mushroom>,
    <item:unpleasant_gradient:unpleasant_chunk>,
]);
var unpleasantbook = <item:minecraft:enchanted_book>.withTag({
    HideFlags: 32, 
    display: {Name: "[\"\",{\"text\":\"Unpleasantbook\",\"italic\":false}]", Lore: ["[\"\",{\"text\":\":\",\"italic\":false,\"color\":\"green\"},{\"text\":\"-\",\"italic\":false},{\"text\":\")\",\"italic\":false,\"color\":\"gold\"}]"]}, 
    StoredEnchantments: [{id: "binding_curse", lvl: 1}, {id: "vanishing_curse", lvl: 1}]
});
craftingTable.addShaped("craft_unpleasantbook", unpleasantbook, [
    [<item:minecraft:air>, <item:unpleasant_gradient:unpleasant_chunk>, <item:minecraft:air>],
    [<item:unpleasant_gradient:unpleasant_chunk>, <item:minecraft:book>, <item:unpleasant_gradient:unpleasant_chunk>],
    [<item:minecraft:air>, <item:unpleasant_gradient:unpleasant_chunk>, <item:minecraft:air>],
]);