#modloaded create supplementaries

import crafttweaker.api.data.IData;
import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.fluid.Fluid;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.entity.effect.MobEffectInstance;
import crafttweaker.api.text.Component;
import crafttweaker.api.text.Style;

<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_supplementaries_candy", {
    "type": "create:sequenced_assembly",
    "ingredient": <item:minecraft:paper> as IData,
    "transitional_item": CreateUtils.convertItemResult(<item:minecraft:paper>),
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [
                <item:minecraft:paper> as IData,
                <item:minecraft:sugar> as IData
            ],
            "results": [
                CreateUtils.convertItemResult(<item:minecraft:paper>)
            ]
        },
        {
            "type": "create:filling",
            "ingredients": [
                <item:minecraft:paper> as IData,
                CreateUtils.convertFluidIngredient(<fluid:create:honey> * ContextualConstants.fluidAmtFromMb(250))
            ],
            "results": [
                CreateUtils.convertItemResult(<item:minecraft:paper>)
            ]
        }
    ],
    "results": [
        CreateUtils.convertItemResult(<item:supplementaries:candy> * 8)
    ],
    "loops": 1
});

<recipetype:create:emptying>.addJsonRecipe("empty_lumisene_bottle", {
    "type": "create:emptying",
    "ingredients": [
        <item:supplementaries:lumisene_bottle> as IData
    ],
    "results": [
        CreateUtils.convertItemResult(<item:minecraft:glass_bottle>),
        (<fluid:supplementaries:lumisene> * ContextualConstants.fluidAmtFromMb(250)) as IData
    ]
});
<recipetype:create:filling>.addJsonRecipe("fill_lumisene_bottle", {
    "type": "create:filling",
    "ingredients": [
        <item:minecraft:glass_bottle> as IData,
        CreateUtils.convertFluidIngredient(<fluid:supplementaries:lumisene> * ContextualConstants.fluidAmtFromMb(250))
    ],
    "results": [
        CreateUtils.convertItemResult(<item:supplementaries:lumisene_bottle>)
    ]
});

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

// Lumisene Generic Mixing =====
<recipetype:create:mixing>.addJsonRecipe("create_mix_lumisene_and_sand_to_glowstone_dust", {
  "type": "create:mixing",
  "ingredients": [
    CreateUtils.convertFluidIngredient(<fluid:supplementaries:lumisene> * ContextualConstants.fluidAmtFromMb(200)),
    (<tag:item:minecraft:sand>) as IData,
  ],
  "results": [
    CreateUtils.convertItemResult(<item:minecraft:glowstone_dust> * 4)
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_fill_sand_with_lumisene_to_glowstone_dust", {
    "type": "create:filling",
    "ingredients": [
        <tag:item:minecraft:sand> as IData,
        CreateUtils.convertFluidIngredient(<fluid:supplementaries:lumisene> * ContextualConstants.fluidAmtFromMb(200))
    ],
    "results": [
        CreateUtils.convertItemResult(<item:minecraft:glowstone_dust> * 4)
    ]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_lumisene_and_gravel_to_gunpowder", {
  "type": "create:mixing",
  "ingredients": [
    CreateUtils.convertFluidIngredient(<fluid:supplementaries:lumisene> * ContextualConstants.fluidAmtFromMb(200)),
    (ContextualConstants.GRAVEL) as IData,
  ],
  "results": [
    CreateUtils.convertItemResult(<item:minecraft:gunpowder> * 2)
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_fill_gravel_with_lumisene_to_gunpowder", {
    "type": "create:filling",
    "ingredients": [
        ContextualConstants.GRAVEL as IData,
        CreateUtils.convertFluidIngredient(<fluid:supplementaries:lumisene> * ContextualConstants.fluidAmtFromMb(200))
    ],
    "results": [
        CreateUtils.convertItemResult(<item:minecraft:gunpowder> * 2)
    ]
});
<recipetype:create:mixing>.addJsonRecipe("create_mix_lumisene_and_ink_sac_to_glow_ink_sac", {
  "type": "create:mixing",
  "ingredients": [
    CreateUtils.convertFluidIngredient(<fluid:supplementaries:lumisene> * ContextualConstants.fluidAmtFromMb(400)),
    (<item:minecraft:ink_sac>) as IData,
  ],
  "results": [
    CreateUtils.convertItemResult(<item:minecraft:glow_ink_sac> * 1)
  ]
});
<recipetype:create:filling>.addJsonRecipe("create_fill_ink_sac_with_lumisene_to_glow_ink_sac", {
    "type": "create:filling",
    "ingredients": [
        <item:minecraft:ink_sac> as IData,
        CreateUtils.convertFluidIngredient(<fluid:supplementaries:lumisene> * ContextualConstants.fluidAmtFromMb(400))
    ],
    "results": [
        CreateUtils.convertItemResult(<item:minecraft:glow_ink_sac> * 1)
    ]
});

// Potion mixing =====
var base_lumisene_potion = <fluid:create:potion>
  .withJsonComponent(<componenttype:minecraft:potion_contents>, {
    custom_effects: [
      {id: "supplementaries:flammable", duration: 30*20, show_icon: true}, 
      {id: "minecraft:glowing", duration: 20*20, show_icon: true}
    ]
  })
  .withJsonComponent(<componenttype:create:potion_fluid_bottle_type>, "regular");
var extended_lumisene_potion = <fluid:create:potion>.withJsonComponent(<componenttype:minecraft:potion_contents>, {
    custom_effects: [
      {id: "supplementaries:flammable", duration: 2*60*20, show_icon: true}, 
      {id: "minecraft:glowing", duration: 60*20, show_icon: true}
    ]
  })
  .withJsonComponent(<componenttype:create:potion_fluid_bottle_type>, "regular");
var strengthened_lumisene_potion = <fluid:create:potion>.withJsonComponent(<componenttype:minecraft:potion_contents>, {
    custom_effects: [
      {id: "supplementaries:flammable", duration: 15*20, amplifier: 1, show_icon: true}, 
      {id: "minecraft:glowing", duration: 10*20, amplifier: 1, show_icon: true}
    ]
  })
  .withJsonComponent(<componenttype:create:potion_fluid_bottle_type>, "regular");
<recipetype:create:mixing>.addJsonRecipe("create_mix_glowing_flammable_potion", {
  "type": "create:mixing",
  "heat_requirement": "heated",
  "ingredients": [
    CreateUtils.convertFluidIngredient(<fluid:supplementaries:lumisene> * ContextualConstants.fluidAmtFromMb(250)),
    CreateUtils.convertFluidIngredient(<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(1000)),
  ],
  "results": [
    (base_lumisene_potion * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ]
});
addCreateSplashPotionMixing(base_lumisene_potion, "glowing_flammable");
<recipetype:create:mixing>.addJsonRecipe("create_mix_extend_glowing_flammable_potion", {
  "type": "create:mixing",
  "heat_requirement": "heated",
  "ingredients": [
    (ContextualConstants.REDSTONE_DUST * 1) as IData,
    CreateUtils.convertFluidIngredient(base_lumisene_potion * ContextualConstants.fluidAmtFromMb(1000)),
  ],
  "results": [
    (extended_lumisene_potion * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ]
});
addCreateSplashPotionMixing(extended_lumisene_potion, "extended_glowing_flammable");
<recipetype:create:mixing>.addJsonRecipe("create_mix_strengthen_glowing_flammable_potion", {
  "type": "create:mixing",
  "heat_requirement": "heated",
  "ingredients": [
    (ContextualConstants.GLOWSTONE_DUST * 1) as IData,
    CreateUtils.convertFluidIngredient(base_lumisene_potion * ContextualConstants.fluidAmtFromMb(1000)),
  ],
  "results": [
    (strengthened_lumisene_potion * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ]
});
addCreateSplashPotionMixing(strengthened_lumisene_potion, "strengthened_glowing_flammable");

var base_flammable_potion = <fluid:create:potion>
  .withJsonComponent(<componenttype:minecraft:potion_contents>, {
    custom_effects: [
      {id: "supplementaries:flammable", duration: 60*20, show_icon: true}
    ]
  })
  .withJsonComponent(<componenttype:create:potion_fluid_bottle_type>, "regular")
  .withCustomName(Component.literal("Potion of Flammability").withStyle(Style.empty().withItalic(false)));
var extended_flammable_potion = <fluid:create:potion>
  .withJsonComponent(<componenttype:minecraft:potion_contents>, {
    custom_effects: [
      {id: "supplementaries:flammable", duration: 3*60*20, show_icon: true}
    ]
  })
  .withJsonComponent(<componenttype:create:potion_fluid_bottle_type>, "regular")
  .withCustomName(Component.literal("Potion of Flammability").withStyle(Style.empty().withItalic(false)));
var strengthened_flammable_potion = <fluid:create:potion>
  .withJsonComponent(<componenttype:minecraft:potion_contents>, {
    custom_effects: [
      {id: "supplementaries:flammable", duration: 30*20, amplifier: 1, show_icon: true}
    ]
  })
  .withJsonComponent(<componenttype:create:potion_fluid_bottle_type>, "regular")
  .withCustomName(Component.literal("Potion of Flammability").withStyle(Style.empty().withItalic(false)));
<recipetype:create:mixing>.addJsonRecipe("create_mix_flammable_potion", {
  "type": "create:mixing",
  "heat_requirement": "heated",
  "ingredients": [
    CreateUtils.convertFluidIngredient(<fluid:supplementaries:lumisene> * ContextualConstants.fluidAmtFromMb(250)),
    CreateUtils.convertFluidIngredient(<fluid:create:potion>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:awkward"}) * ContextualConstants.fluidAmtFromMb(1000)),
  ],
  "results": [
    (base_flammable_potion * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ]
});
addCreateSplashPotionMixing(base_flammable_potion, "flammable");
<recipetype:create:mixing>.addJsonRecipe("create_mix_extend_flammable_potion", {
  "type": "create:mixing",
  "heat_requirement": "heated",
  "ingredients": [
    (ContextualConstants.REDSTONE_DUST * 1) as IData,
    CreateUtils.convertFluidIngredient(base_flammable_potion * ContextualConstants.fluidAmtFromMb(1000)),
  ],
  "results": [
    (extended_flammable_potion * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ]
});
addCreateSplashPotionMixing(extended_flammable_potion, "extended_flammable");
<recipetype:create:mixing>.addJsonRecipe("create_mix_strengthen_flammable_potion", {
  "type": "create:mixing",
  "heat_requirement": "heated",
  "ingredients": [
    (ContextualConstants.GLOWSTONE_DUST * 1) as IData,
    CreateUtils.convertFluidIngredient(base_flammable_potion * ContextualConstants.fluidAmtFromMb(1000)),
  ],
  "results": [
    (strengthened_flammable_potion * ContextualConstants.fluidAmtFromMb(1000)) as IData
  ]
});
addCreateSplashPotionMixing(strengthened_flammable_potion, "strengthened_flammable");

// Util Functions =====
function addCreateSplashPotionMixing(basePotionStack as IFluidStack, recipeNameFragment: string) as void {
    var basePotionStack = basePotionStack.setAmount(1000);

    var splashPotionStack = basePotionStack.copy()
        .withJsonComponent(<componenttype:create:potion_fluid_bottle_type>, "splash");

    <recipetype:create:mixing>.addJsonRecipe("create_mix_splash_"+recipeNameFragment+"_potion", {
        "type": "create:mixing",
        "heat_requirement": "heated",
        "ingredients": [
            (<item:minecraft:gunpowder> * 1) as IData,
            CreateUtils.convertFluidIngredient(basePotionStack),
        ],
        "results": [
            (splashPotionStack) as IData
        ]
    });
}