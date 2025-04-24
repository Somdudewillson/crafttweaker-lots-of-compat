#modloaded create

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;

var COPYABLE_TEMPLATES as stdlib.List<IItemStack> = [
    (<item:minecraft:netherite_upgrade_smithing_template> as IItemStack),
    (<item:minecraft:sentry_armor_trim_smithing_template> as IItemStack),
    (<item:minecraft:vex_armor_trim_smithing_template> as IItemStack),
    (<item:minecraft:wild_armor_trim_smithing_template> as IItemStack),
    (<item:minecraft:coast_armor_trim_smithing_template> as IItemStack),
    (<item:minecraft:dune_armor_trim_smithing_template> as IItemStack),
    (<item:minecraft:wayfinder_armor_trim_smithing_template> as IItemStack),
    (<item:minecraft:raiser_armor_trim_smithing_template> as IItemStack),
    (<item:minecraft:shaper_armor_trim_smithing_template> as IItemStack),
    (<item:minecraft:host_armor_trim_smithing_template> as IItemStack),
    (<item:minecraft:ward_armor_trim_smithing_template> as IItemStack),
    (<item:minecraft:silence_armor_trim_smithing_template> as IItemStack),
    (<item:minecraft:tide_armor_trim_smithing_template> as IItemStack),
    (<item:minecraft:snout_armor_trim_smithing_template> as IItemStack),
    (<item:minecraft:rib_armor_trim_smithing_template> as IItemStack),
    (<item:minecraft:eye_armor_trim_smithing_template> as IItemStack),
    (<item:minecraft:spire_armor_trim_smithing_template> as IItemStack)
] as IItemStack[] as stdlib.List<IItemStack>;
var COPYABLE_TEMPLATES_MATERIALS as IIngredient[IItemStack] = {
    (<item:minecraft:netherite_upgrade_smithing_template> as IItemStack): (<item:minecraft:netherrack> as IIngredient),
    (<item:minecraft:sentry_armor_trim_smithing_template> as IItemStack): (<item:minecraft:cobblestone> as IIngredient),
    (<item:minecraft:vex_armor_trim_smithing_template> as IItemStack): (<item:minecraft:cobblestone> as IIngredient),
    (<item:minecraft:wild_armor_trim_smithing_template> as IItemStack): (<item:minecraft:mossy_cobblestone> as IIngredient),
    (<item:minecraft:coast_armor_trim_smithing_template> as IItemStack): (<item:minecraft:cobblestone> as IIngredient),
    (<item:minecraft:dune_armor_trim_smithing_template> as IItemStack): (<item:minecraft:sandstone> as IIngredient),
    (<item:minecraft:wayfinder_armor_trim_smithing_template> as IItemStack): (<item:minecraft:terracotta> as IIngredient),
    (<item:minecraft:raiser_armor_trim_smithing_template> as IItemStack): (<item:minecraft:terracotta> as IIngredient),
    (<item:minecraft:shaper_armor_trim_smithing_template> as IItemStack): (<item:minecraft:terracotta> as IIngredient),
    (<item:minecraft:host_armor_trim_smithing_template> as IItemStack): (<item:minecraft:terracotta> as IIngredient),
    (<item:minecraft:ward_armor_trim_smithing_template> as IItemStack): (<item:minecraft:cobbled_deepslate> as IIngredient),
    (<item:minecraft:silence_armor_trim_smithing_template> as IItemStack): (<item:minecraft:cobbled_deepslate> as IIngredient),
    (<item:minecraft:tide_armor_trim_smithing_template> as IItemStack): (<item:minecraft:prismarine> as IIngredient),
    (<item:minecraft:snout_armor_trim_smithing_template> as IItemStack): (<item:minecraft:blackstone> as IIngredient),
    (<item:minecraft:rib_armor_trim_smithing_template> as IItemStack): (<item:minecraft:netherrack> as IIngredient),
    (<item:minecraft:eye_armor_trim_smithing_template> as IItemStack): (<item:minecraft:end_stone> as IIngredient),
    (<item:minecraft:spire_armor_trim_smithing_template> as IItemStack): (<item:minecraft:purpur_block> as IIngredient)
};
#onlyif modloaded deeperdarker
COPYABLE_TEMPLATES.add(<item:deeperdarker:warden_upgrade_smithing_template> as IItemStack);
COPYABLE_TEMPLATES_MATERIALS[<item:deeperdarker:warden_upgrade_smithing_template> as IItemStack] = (<item:minecraft:sculk> as IIngredient);
#endif

for copyableTemplate in COPYABLE_TEMPLATES {
    var componentMaterial = COPYABLE_TEMPLATES_MATERIALS[copyableTemplate];
    
    <recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("sequenced_copy_template_"+copyableTemplate.registryName.path)
        .require(copyableTemplate)
        .transitionTo(copyableTemplate)
        .loops(1)
        .addOutput(copyableTemplate * 2, 1)
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(componentMaterial))
        .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:minecraft:lava> * ContextualConstants.fluidAmtFromMb(250)))
        .addStep<mods.createtweaker.PressingRecipe>((rb) => rb)
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:diamond>))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:diamond>))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:diamond>))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:diamond>))
        .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:diamond>)) );
}