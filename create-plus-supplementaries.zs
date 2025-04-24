#modloaded create supplementaries

import crafttweaker.api.data.IData;
import mods.create.MixingManager;
import crafttweaker.api.recipe.type.Recipe;
import mods.createtweaker.ProcessingRecipe;
import mods.createtweaker.BasinRecipe;
import mods.createtweaker.MixingRecipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.fluid.Fluid;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.entity.effect.MobEffectInstance;

<recipetype:create:sequenced_assembly>.addRecipe( <recipetype:create:sequenced_assembly>.builder("assemble_supplementaries_candy")
 .transitionTo(<item:minecraft:paper>)
 .require(<item:minecraft:paper>)
 .loops(1)
 .addOutput(<item:supplementaries:candy> * 8, 1)
 .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:sugar>))
 .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:create:honey> * ContextualConstants.fluidAmtFromMb(250))) );

<recipetype:create:emptying>.addRecipe("empty_lumisene_bottle", <item:minecraft:glass_bottle>, <fluid:supplementaries:lumisene> * ContextualConstants.fluidAmtFromMb(250), <item:supplementaries:lumisene_bottle>, 100);
<recipetype:create:filling>.addRecipe("fill_lumisene_bottle", <item:supplementaries:lumisene_bottle>, <item:minecraft:glass_bottle>, <fluid:supplementaries:lumisene> * ContextualConstants.fluidAmtFromMb(250), 100);

<recipetype:create:compacting>.addJsonRecipe("create_compact_glow_berries_into_lumisene", {
  "type": "create:compacting",
  "ingredients": [
    <item:minecraft:glow_berries> as IData,
    <item:minecraft:glow_berries> as IData,
    <item:minecraft:glow_berries> as IData,
    <item:minecraft:glow_berries> as IData,
    <item:minecraft:glow_berries> as IData,
    <item:minecraft:glow_berries> as IData,
    <item:minecraft:glow_berries> as IData,
    <item:minecraft:glow_berries> as IData
  ],
  "results": [
    (<fluid:supplementaries:lumisene> * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ]
});

// Potion mixing =====

var base_lumisene_potion = <fluid:create:potion>.withTag({
    CustomPotionEffects: [
            new MobEffectInstance(<mobeffect:supplementaries:flammable>, 30*20).save(),
            new MobEffectInstance(<mobeffect:minecraft:glowing>, 20*20).save()
        ]
    });
var extended_lumisene_potion = <fluid:create:potion>.withTag({
    CustomPotionEffects: [
            new MobEffectInstance(<mobeffect:supplementaries:flammable>, 2*60*20).save(),
            new MobEffectInstance(<mobeffect:minecraft:glowing>, 60*20).save()
        ]
    });
var strengthened_lumisene_potion = <fluid:create:potion>.withTag({
    CustomPotionEffects: [
            new MobEffectInstance(<mobeffect:supplementaries:flammable>, 15*20, 1).save(),
            new MobEffectInstance(<mobeffect:minecraft:glowing>, 10*20, 1).save()
        ]
    });
<recipetype:create:mixing>.addJsonRecipe("create_mix_glowing_flammable_potion", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    (<fluid:supplementaries:lumisene> * ContextualConstants.fluidAmtFromMb(250)) as IData,
    (<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(1000)) as IData,
  ],
  "results": [
    (base_lumisene_potion * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ]
});
addCreateSplashPotionMixing(base_lumisene_potion, "glowing_flammable");
<recipetype:create:mixing>.addJsonRecipe("create_mix_extend_glowing_flammable_potion", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    (ContextualConstants.REDSTONE_DUST * 1) as IData,
    (base_lumisene_potion * ContextualConstants.fluidAmtFromMb(1000)) as IData,
  ],
  "results": [
    (extended_lumisene_potion * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ]
});
addCreateSplashPotionMixing(extended_lumisene_potion, "extended_glowing_flammable");
<recipetype:create:mixing>.addJsonRecipe("create_mix_strengthen_glowing_flammable_potion", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    (ContextualConstants.GLOWSTONE_DUST * 1) as IData,
    (base_lumisene_potion * ContextualConstants.fluidAmtFromMb(1000)) as IData,
  ],
  "results": [
    (strengthened_lumisene_potion * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ]
});
addCreateSplashPotionMixing(strengthened_lumisene_potion, "strengthened_glowing_flammable");

var base_flammable_potion = <fluid:create:potion>.withTag({
    CustomPotionEffects: [
            new MobEffectInstance(<mobeffect:supplementaries:flammable>, 60*20).save()
        ]
    });
var extended_flammable_potion = <fluid:create:potion>.withTag({
    CustomPotionEffects: [
            new MobEffectInstance(<mobeffect:supplementaries:flammable>, 3*60*20).save()
        ]
    });
var strengthened_flammable_potion = <fluid:create:potion>.withTag({
    CustomPotionEffects: [
            new MobEffectInstance(<mobeffect:supplementaries:flammable>, 30*20, 1).save()
        ]
    });
<recipetype:create:mixing>.addJsonRecipe("create_mix_flammable_potion", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    (<fluid:supplementaries:lumisene> * ContextualConstants.fluidAmtFromMb(250)) as IData,
    (<fluid:create:potion>.withTag({Potion: "minecraft:awkward"}) * ContextualConstants.fluidAmtFromMb(1000)) as IData,
  ],
  "results": [
    (base_flammable_potion * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ]
});
addCreateSplashPotionMixing(base_flammable_potion, "flammable");
<recipetype:create:mixing>.addJsonRecipe("create_mix_extend_flammable_potion", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    (ContextualConstants.REDSTONE_DUST * 1) as IData,
    (base_flammable_potion * ContextualConstants.fluidAmtFromMb(1000)) as IData,
  ],
  "results": [
    (extended_flammable_potion * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ]
});
addCreateSplashPotionMixing(extended_flammable_potion, "extended_flammable");
<recipetype:create:mixing>.addJsonRecipe("create_mix_strengthen_flammable_potion", {
  "type": "create:mixing",
  "heatRequirement": "heated",
  "ingredients": [
    (ContextualConstants.GLOWSTONE_DUST * 1) as IData,
    (base_flammable_potion * ContextualConstants.fluidAmtFromMb(1000)) as IData,
  ],
  "results": [
    (strengthened_flammable_potion * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ]
});
addCreateSplashPotionMixing(strengthened_flammable_potion, "strengthened_flammable");

// Util Functions =====
function addCreateSplashPotionMixing(basePotionStack as IFluidStack, recipeNameFragment: string) as void {
    var basePotionStack = basePotionStack.setAmount(1000);

    var splashPotionStack = basePotionStack.copy();
    var splashPotionTag = splashPotionStack.tag;
    splashPotionTag["Bottle"] = "SPLASH";
    splashPotionStack = splashPotionStack.withTag(splashPotionTag);

    <recipetype:create:mixing>.addJsonRecipe("create_mix_splash_"+recipeNameFragment+"_potion", {
        "type": "create:mixing",
        "heatRequirement": "heated",
        "ingredients": [
            (<item:minecraft:gunpowder> * 1) as IData,
            (basePotionStack) as IData,
        ],
        "results": [
            (splashPotionStack) as IData
        ]
    });
}