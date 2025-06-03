#priority 200

#onlyif modloaded bloodmagic
var MIN_MASTER_BLOOD_ORB = <tag:items:lots_of_compat:at_least_master_blood_orb>;
MIN_MASTER_BLOOD_ORB.add(<item:bloodmagic:archmagebloodorb>);
MIN_MASTER_BLOOD_ORB.add(<item:bloodmagic:masterbloodorb>);

var MIN_MAGICIAN_BLOOD_ORB = <tag:items:lots_of_compat:at_least_magician_blood_orb>;
MIN_MAGICIAN_BLOOD_ORB.add(MIN_MASTER_BLOOD_ORB.elements as ItemDefinition[]);
MIN_MAGICIAN_BLOOD_ORB.add(<item:bloodmagic:magicianbloodorb>);

var MIN_APPRENTICE_BLOOD_ORB = <tag:items:lots_of_compat:at_least_apprentice_blood_orb>;
MIN_APPRENTICE_BLOOD_ORB.add(MIN_MAGICIAN_BLOOD_ORB);
MIN_APPRENTICE_BLOOD_ORB.add(<item:bloodmagic:apprenticebloodorb>);

var ANY_BLOOD_ORB = <tag:items:lots_of_compat:any_blood_orb>;
ANY_BLOOD_ORB.add(MIN_APPRENTICE_BLOOD_ORB);
ANY_BLOOD_ORB.add(<item:bloodmagic:weakbloodorb>);
#endif

var DIAMOND_CIRCUITS = <tag:items:lots_of_compat:diamond_circuits>;
#onlyif modloaded ae2
DIAMOND_CIRCUITS.add(<item:ae2:engineering_processor>);
#endif
#onlyif modloader forge
if (<tag:items:forge:circuits/elite>.exists() && <tag:items:forge:circuits/elite>.elements.length>0) {
    DIAMOND_CIRCUITS.add(<tag:items:forge:circuits/elite>);
}
#endif
var GOLD_CIRCUITS = <tag:items:lots_of_compat:gold_circuits>;
#onlyif modloaded ae2
GOLD_CIRCUITS.add(<item:ae2:logic_processor>);
#endif
#onlyif modloader forge
if (<tag:items:forge:circuits/advanced>.exists() && <tag:items:forge:circuits/advanced>.elements.length>0) {
    GOLD_CIRCUITS.add(<tag:items:forge:circuits/advanced>);
}
#endif
var FLUID_PIPES = <tag:items:lots_of_compat:fluid_pipes>;
#onlyif modloaded thermal
FLUID_PIPES.add(<item:thermal:fluid_duct>);
FLUID_PIPES.add(<item:thermal:fluid_duct_windowed>);
#endif
#onlyif modloaded cyclic
FLUID_PIPES.add(<item:cyclic:fluid_pipe>);
#endif
#onlyif modloaded create
FLUID_PIPES.add(<item:create:fluid_pipe>);
#endif
#onlyif modloaded mekanism
FLUID_PIPES.add(<item:mekanism:basic_mechanical_pipe>);
#endif

var MAGNETIC_INGOTS = <tag:items:lots_of_compat:magnetic_ingots>;
#onlyif modloaded alexscaves
MAGNETIC_INGOTS.add(<item:alexscaves:scarlet_neodymium_ingot>);
MAGNETIC_INGOTS.add(<item:alexscaves:azure_neodymium_ingot>);
#endif
#onlyif modloaded tfmg
MAGNETIC_INGOTS.add(<item:tfmg:magnetic_ingot>);
#endif

var BLOOD_LIKE = <tag:fluids:lots_of_compat:blood_like>;
#onlyif modloaded tconstruct
BLOOD_LIKE.add(<fluid:tconstruct:meat_soup>);
#endif
#onlyif modloaded biomesoplenty
BLOOD_LIKE.add(<fluid:biomesoplenty:blood>);
#endif

var ACIDS = <tag:fluids:lots_of_compat:acid>;
#onlyif modloaded alexscaves
ACIDS.add(<fluid:alexscaves:acid>);
#endif
#onlyif modloaded tfmg
ACIDS.add(<fluid:tfmg:sulfuric_acid>);
#endif

var LIQUID_SLIME = <tag:fluids:lots_of_compat:liquid_slime>;
#onlyif modloaded tconstruct
LIQUID_SLIME.add(<fluid:tconstruct:earth_slime>);
LIQUID_SLIME.add(<fluid:tconstruct:sky_slime>);
LIQUID_SLIME.add(<fluid:tconstruct:ender_slime>);
#endif

var COOKIES = <tag:items:lots_of_compat:cookies>;
COOKIES.add(<item:minecraft:cookie>);
#onlyif modloaded farmersdelight
COOKIES.add(<item:farmersdelight:honey_cookie>);
COOKIES.add(<item:farmersdelight:sweet_berry_cookie>);
#endif

var RAW_HUMANOID_FLESH = <tag:items:lots_of_compat:raw_humanoid_flesh>;
RAW_HUMANOID_FLESH.add(<item:minecraft:rotten_flesh>);
#onlyif modloaded foodtxf
RAW_HUMANOID_FLESH.add(<item:foodtxf:player_flesh>);
#endif

// Non-lots_of_compat-specific (FORGE)
#onlyif modloader forge

#onlyif modloaded burnt
<tag:fluids:forge:magma>.add(<fluid:burnt:liquid_magma>);
#endif
#onlyif modloaded scguns
<tag:items:forge:tools/knifes>.add(<item:scguns:anthralite_knife>);


<tag:items:forge:dusts/niter>.add(<item:scguns:niter_dust>);

<tag:items:forge:ores/anthralite>.add(<item:scguns:anthralite_ore>);
<tag:blocks:forge:ores_in_ground/stone>.add(<block:scguns:anthralite_ore>);
<tag:items:forge:ores/anthralite>.add(<item:scguns:deepslate_anthralite_ore>);
<tag:blocks:forge:ores_in_ground/deepslate>.add(<block:scguns:deepslate_anthralite_ore>);

<tag:blocks:forge:ores_in_ground/stone>.add(<block:scguns:sulfur_ore>);
<tag:blocks:forge:ores_in_ground/deepslate>.add(<block:scguns:deepslate_sulfur_ore>);
<tag:blocks:forge:ores_in_ground/netherrack>.add(<block:scguns:nether_sulfur_ore>);

<tag:blocks:forge:ores_in_ground/netherrack>.add(<block:scguns:vehement_coal_ore>);
<tag:blocks:forge:ores>.add(<block:scguns:rich_phosphorite>);
<tag:blocks:forge:ores_in_ground/deepslate>.add(<block:scguns:rich_phosphorite>);

<tag:items:forge:raw_materials/anthralite>.add(<item:scguns:raw_anthralite>);
<tag:items:forge:dusts/anthralite>.add(<item:scguns:crushed_raw_anthralite>);
<tag:items:forge:nuggets>.add(<item:scguns:anthralite_nugget>);
<tag:items:forge:ingots/anthralite>.add(<item:scguns:anthralite_ingot>);
<tag:items:forge:ingots>.add(<item:scguns:anthralite_ingot>);
<tag:items:forge:storage_blocks/anthralite>.add(<item:scguns:anthralite_block>);

<tag:items:forge:ingots/treated_iron>.add(<item:scguns:treated_iron_ingot>);
<tag:items:forge:ingots>.add(<item:scguns:treated_iron_ingot>);
<tag:blocks:forge:storage_blocks/iron>.remove(<block:scguns:treated_iron_block>);
<tag:items:forge:storage_blocks/treated_iron>.add(<item:scguns:treated_iron_block>);
<tag:blocks:forge:storage_blocks/treated_iron>.add(<block:scguns:treated_iron_block>);
<tag:items:forge:storage_blocks>.add(<item:scguns:treated_iron_block>);

<tag:items:forge:ingots/treated_brass>.add(<item:scguns:treated_brass_ingot>);
<tag:items:forge:ingots>.add(<item:scguns:treated_brass_ingot>);
<tag:items:forge:storage_blocks/treated_brass>.add(<item:scguns:treated_brass_block>);
<tag:blocks:forge:storage_blocks/treated_brass>.add(<block:scguns:treated_brass_block>);
<tag:blocks:forge:storage_blocks>.add(<block:scguns:treated_brass_block>);
<tag:items:forge:storage_blocks>.add(<item:scguns:treated_brass_block>);

<tag:items:forge:raw_materials/diamond_steel>.add(<item:scguns:diamond_steel_blend>);
<tag:items:forge:ingots/diamond_steel>.add(<item:scguns:diamond_steel_ingot>);
<tag:items:forge:ingots>.add(<item:scguns:diamond_steel_ingot>);
<tag:items:forge:storage_blocks/diamond_steel>.add(<item:scguns:diamond_steel_block>);
<tag:blocks:forge:storage_blocks/diamond_steel>.add(<block:scguns:diamond_steel_block>);
<tag:items:forge:storage_blocks>.add(<item:scguns:diamond_steel_block>);
<tag:blocks:forge:storage_blocks>.add(<block:scguns:diamond_steel_block>);

<tag:items:forge:ingots>.add(<item:scguns:scorched_ingot>);
<tag:items:forge:ingots/scorched_netherite>.add(<item:scguns:scorched_ingot>);
#endif
#onlyif modloaded spore
<tag:items:forge:dusts/amethyst>.add(<item:spore:amethyst_dust>);
<tag:items:forge:circuits/basic>.add(<item:spore:circuit_board>);
#endif
#onlyif modloaded jaopca jaopcaextras ae2
<tag:items:forge:circuits/basic>.add(<tag:items:forge:processors/tin>);
<tag:items:forge:circuits/basic>.add(<tag:items:forge:processors/copper>);
<tag:items:forge:circuits/basic>.add(<tag:items:forge:processors/iron>);
#endif
#onlyif modloaded bigreactors
<tag:blocks:forge:ores_in_ground/stone>.add(<block:bigreactors:yellorite_ore>);
<tag:blocks:forge:ores_in_ground/end_stone>.add(<block:bigreactors:anglesite_ore>);
<tag:blocks:forge:ores_in_ground/netherrack>.add(<block:bigreactors:benitoite_ore>);
#endif
#onlyif modloaded thermal
<tag:blocks:forge:ores_in_ground/stone>.add(<block:thermal:apatite_ore>);
<tag:blocks:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_apatite_ore>);

<tag:blocks:forge:ores_in_ground/stone>.add(<block:thermal:cinnabar_ore>);
<tag:blocks:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_cinnabar_ore>);

<tag:blocks:forge:ores_in_ground/stone>.add(<block:thermal:niter_ore>);
<tag:blocks:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_niter_ore>);

<tag:blocks:forge:ores_in_ground/stone>.add(<block:thermal:apatite_ore>);
<tag:blocks:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_apatite_ore>);

<tag:blocks:forge:ores_in_ground/stone>.add(<block:thermal:sulfur_ore>);
<tag:blocks:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_sulfur_ore>);

<tag:blocks:forge:ores_in_ground/stone>.add(<block:thermal:tin_ore>);
<tag:blocks:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_tin_ore>);

<tag:blocks:forge:ores_in_ground/stone>.add(<block:thermal:lead_ore>);
<tag:blocks:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_lead_ore>);

<tag:blocks:forge:ores_in_ground/stone>.add(<block:thermal:silver_ore>);
<tag:blocks:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_silver_ore>);

<tag:blocks:forge:ores_in_ground/stone>.add(<block:thermal:nickel_ore>);
<tag:blocks:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_nickel_ore>);

<tag:blocks:forge:ores_in_ground/stone>.add(<block:thermal:ruby_ore>);
<tag:blocks:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_ruby_ore>);

<tag:blocks:forge:ores_in_ground/stone>.add(<block:thermal:sapphire_ore>);
<tag:blocks:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_sapphire_ore>);

<tag:blocks:forge:ores_in_ground/stone>.add(<block:thermal:apatite_ore>);
<tag:blocks:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_apatite_ore>);
#endif
#onlyif modloaded tfmg
<tag:items:forge:coal_coke>.add(<item:tfmg:coal_coke>);
<tag:items:forge:storage_blocks/coal_coke>.add(<item:tfmg:coal_coke_block>);
<tag:blocks:forge:storage_blocks/coal_coke>.add(<block:tfmg:coal_coke_block>);

<tag:items:forge:ingots>.add(<item:tfmg:magnetic_ingot>);

<tag:fluids:forge:gasoline>.add(<fluid:tfmg:gasoline>);
<tag:fluids:forge:molten_steel>.add(<fluid:tfmg:molten_steel>);
<tag:fluids:forge:creosote>.add(<fluid:tfmg:creosote>);
#endif
#onlyif modloaded bigreactors
<tag:items:forge:ingots>.add(<item:bigreactors:insanite_ingot>);
<tag:items:forge:ingots>.add(<item:bigreactors:inanite_ingot>);
<tag:items:forge:ingots>.add(<item:bigreactors:ridiculite_ingot>);
<tag:items:forge:ingots>.add(<item:bigreactors:ludicrite_ingot>);
#endif
#onlyif modloaded iceandfire
<tag:items:forge:ingots/ghost>.add(<item:iceandfire:ghost_ingot>);

<tag:items:forge:ingots/dragonsteel>.add(<item:iceandfire:dragonsteel_fire_ingot>);
<tag:items:forge:ingots/dragonsteel_fire>.add(<item:iceandfire:dragonsteel_fire_ingot>);
<tag:items:forge:ingots/dragonsteel>.add(<item:iceandfire:dragonsteel_ice_ingot>);
<tag:items:forge:ingots/dragonsteel_ice>.add(<item:iceandfire:dragonsteel_ice_ingot>);
<tag:items:forge:ingots/dragonsteel>.add(<item:iceandfire:dragonsteel_lightning_ingot>);
<tag:items:forge:ingots/dragonsteel_lightning>.add(<item:iceandfire:dragonsteel_lightning_ingot>);

<tag:blocks:forge:storage_blocks>.add(<block:iceandfire:dragonsteel_fire_block>);
<tag:blocks:forge:storage_blocks/dragonsteel>.add(<block:iceandfire:dragonsteel_fire_block>);
<tag:blocks:forge:storage_blocks/dragonsteel_fire>.add(<block:iceandfire:dragonsteel_fire_block>);
<tag:items:forge:storage_blocks/dragonsteel>.add(<item:iceandfire:dragonsteel_fire_block>);
<tag:items:forge:storage_blocks/dragonsteel_fire>.add(<item:iceandfire:dragonsteel_fire_block>);

<tag:blocks:forge:storage_blocks>.add(<block:iceandfire:dragonsteel_ice_block>);
<tag:blocks:forge:storage_blocks/dragonsteel>.add(<block:iceandfire:dragonsteel_ice_block>);
<tag:blocks:forge:storage_blocks/dragonsteel_ice>.add(<block:iceandfire:dragonsteel_ice_block>);
<tag:items:forge:storage_blocks/dragonsteel>.add(<item:iceandfire:dragonsteel_ice_block>);
<tag:items:forge:storage_blocks/dragonsteel_ice>.add(<item:iceandfire:dragonsteel_ice_block>);

<tag:blocks:forge:storage_blocks>.add(<block:iceandfire:dragonsteel_lightning_block>);
<tag:blocks:forge:storage_blocks/dragonsteel>.add(<block:iceandfire:dragonsteel_lightning_block>);
<tag:blocks:forge:storage_blocks/dragonsteel_lightning>.add(<block:iceandfire:dragonsteel_lightning_block>);
<tag:items:forge:storage_blocks/dragonsteel>.add(<item:iceandfire:dragonsteel_lightning_block>);
<tag:items:forge:storage_blocks/dragonsteel_lightning>.add(<item:iceandfire:dragonsteel_lightning_block>);
#endif
#onlyif modloaded megacells
<tag:items:forge:ingots>.add(<item:megacells:sky_steel_ingot>);
#endif
#onlyif modloaded botania
<tag:items:forge:ingots>.add(<item:botania:gaia_ingot>);
<tag:items:forge:ingots/gaia>.add(<item:botania:gaia_ingot>);

<tag:items:forge:gems>.add(<item:botania:quartz_mana>);
<tag:items:forge:gems/mana_quartz>.add(<item:botania:quartz_mana>);
#endif
#onlyif modloaded alexscaves
<tag:items:forge:ingots>.add(<item:alexscaves:scarlet_neodymium_ingot>);
<tag:items:forge:ingots/neodymium>.add(<item:alexscaves:scarlet_neodymium_ingot>);
<tag:items:forge:ingots/scarlet_neodymium>.add(<item:alexscaves:scarlet_neodymium_ingot>);
<tag:items:forge:ingots>.add(<item:alexscaves:azure_neodymium_ingot>);
<tag:items:forge:ingots/neodymium>.add(<item:alexscaves:azure_neodymium_ingot>);
<tag:items:forge:ingots/azure_neodymium>.add(<item:alexscaves:azure_neodymium_ingot>);

<tag:blocks:forge:storage_blocks>.add(<block:alexscaves:block_of_scarlet_neodymium>);
<tag:blocks:forge:storage_blocks/scarlet_neodymium>.add(<block:alexscaves:block_of_scarlet_neodymium>);
<tag:items:forge:storage_blocks/scarlet_neodymium>.add(<item:alexscaves:block_of_scarlet_neodymium>);

<tag:blocks:forge:storage_blocks>.add(<block:alexscaves:block_of_azure_neodymium>);
<tag:blocks:forge:storage_blocks/azure_neodymium>.add(<block:alexscaves:block_of_azure_neodymium>);
<tag:items:forge:storage_blocks/azure_neodymium>.add(<item:alexscaves:block_of_azure_neodymium>);
#endif
#onlyif modloaded grimoireofgaia
<tag:items:forge:raw_materials/pearl>.add(<item:grimoireofgaia:shiny_pearl>);

<tag:blocks:forge:storage_blocks>.add(<block:grimoireofgaia:pearl_block>);
<tag:blocks:forge:storage_blocks/pearl>.add(<block:grimoireofgaia:pearl_block>);
<tag:items:forge:storage_blocks/pearl>.add(<item:grimoireofgaia:pearl_block>);
#endif
#onlyif modloaded hammerlib
<tag:items:forge:gears>.add(<item:hammerlib:gears/wooden>);
<tag:items:forge:gears>.add(<item:hammerlib:gears/stone>);
#endif
#onlyif modloaded ae2
<tag:items:forge:tools/knifes>.add(<tag:items:ae2:knife>);
#endif
#onlyif modloaded ae2 ae2_tools
<tag:items:forge:tools/knifes>.add(<item:ae2_tools:certus_quartz_knife>);
<tag:items:forge:tools/knifes>.add(<item:ae2_tools:fluix_knife>);
#endif
#onlyif modloaded tools_complement
<tag:items:forge:tools/knifes>.add(<item:tools_complement:iron_knife>);
<tag:items:forge:tools/knifes>.add(<item:tools_complement:gold_knife>);
<tag:items:forge:tools/knifes>.add(<item:tools_complement:diamond_knife>);
<tag:items:forge:tools/knifes>.add(<item:tools_complement:netherite_knife>);
<tag:items:forge:tools/knifes>.add(<item:tools_complement:copper_knife>);
<tag:items:forge:tools/knifes>.add(<item:tools_complement:tin_knife>);
<tag:items:forge:tools/knifes>.add(<item:tools_complement:lead_knife>);
<tag:items:forge:tools/knifes>.add(<item:tools_complement:silver_knife>);
<tag:items:forge:tools/knifes>.add(<item:tools_complement:nickel_knife>);
<tag:items:forge:tools/knifes>.add(<item:tools_complement:bronze_knife>);
<tag:items:forge:tools/knifes>.add(<item:tools_complement:electrum_knife>);
<tag:items:forge:tools/knifes>.add(<item:tools_complement:invar_knife>);
<tag:items:forge:tools/knifes>.add(<item:tools_complement:constantan_knife>);
#endif
#onlyif modloaded alexsmobs
<tag:items:forge:raw_fishes>.add(<item:alexsmobs:raw_catfish>);
<tag:items:forge:foods/raw_fishes>.add(<item:alexsmobs:raw_catfish>);
<tag:items:forge:foods/fish/raw>.add(<item:alexsmobs:raw_catfish>);
<tag:items:forge:foods/meat>.add(<item:alexsmobs:kangaroo_meat>);
<tag:items:forge:foods/meat/raw>.add(<item:alexsmobs:kangaroo_meat>);
<tag:items:forge:foods/meat>.add(<item:alexsmobs:moose_ribs>);
<tag:items:forge:foods/meat/raw>.add(<item:alexsmobs:moose_ribs>);
#endif

#endif

// Non-lots_of_compat-specific (FABRIC)
#onlyif modloader fabric

<tag:items:c:buckets/water>.add(<tag:items:c:water_buckets>);
<tag:items:c:buckets/lava>.add(<tag:items:c:lava_buckets>);
<tag:items:c:buckets/milk>.add(<tag:items:c:milk_buckets>);

#onlyif modloaded burnt
<tag:fluids:c:magma>.add(<fluid:burnt:liquid_magma>);
#endif
#onlyif modloaded scguns
<tag:items:c:tools/knifes>.add(<item:scguns:anthralite_knife>);


<tag:items:c:dusts/niter>.add(<item:scguns:niter_dust>);

<tag:items:c:anthralite_ores>.add(<item:scguns:anthralite_ore>);
<tag:blocks:c:ores_in_ground/stone>.add(<block:scguns:anthralite_ore>);
<tag:items:c:anthralite_ores>.add(<item:scguns:deepslate_anthralite_ore>);
<tag:blocks:c:ores_in_ground/deepslate>.add(<block:scguns:deepslate_anthralite_ore>);

<tag:blocks:c:ores_in_ground/stone>.add(<block:scguns:sulfur_ore>);
<tag:blocks:c:ores_in_ground/deepslate>.add(<block:scguns:deepslate_sulfur_ore>);
<tag:blocks:c:ores_in_ground/netherrack>.add(<block:scguns:nether_sulfur_ore>);

<tag:blocks:c:ores_in_ground/netherrack>.add(<block:scguns:vehement_coal_ore>);
<tag:blocks:c:ores>.add(<block:scguns:rich_phosphorite>);
<tag:blocks:c:ores_in_ground/deepslate>.add(<block:scguns:rich_phosphorite>);

<tag:items:c:anthralite_raw_materials>.add(<item:scguns:raw_anthralite>);
<tag:items:c:dusts/anthralite>.add(<item:scguns:crushed_raw_anthralite>);
<tag:items:c:nuggets>.add(<item:scguns:anthralite_nugget>);
<tag:items:c:anthralite_ingots>.add(<item:scguns:anthralite_ingot>);
<tag:items:c:ingots>.add(<item:scguns:anthralite_ingot>);
<tag:items:c:anthralite_blocks>.add(<item:scguns:anthralite_block>);

<tag:items:c:treated_iron_ingots>.add(<item:scguns:treated_iron_ingot>);
<tag:items:c:ingots>.add(<item:scguns:treated_iron_ingot>);
<tag:blocks:c:iron_blocks>.remove(<block:scguns:treated_iron_block>);
<tag:items:c:treated_iron_blocks>.add(<item:scguns:treated_iron_block>);
<tag:blocks:c:treated_iron_blocks>.add(<block:scguns:treated_iron_block>);
<tag:items:forge:storage_blocks>.add(<item:scguns:treated_iron_block>);

<tag:items:c:treated_brass_ingots>.add(<item:scguns:treated_brass_ingot>);
<tag:items:c:ingots>.add(<item:scguns:treated_brass_ingot>);
<tag:items:c:treated_brass_blocks>.add(<item:scguns:treated_brass_block>);
<tag:blocks:c:treated_brass_blocks>.add(<block:scguns:treated_brass_block>);
<tag:blocks:forge:storage_blocks>.add(<block:scguns:treated_brass_block>);
<tag:items:forge:storage_blocks>.add(<item:scguns:treated_brass_block>);

<tag:items:c:diamond_steel_raw_materials>.add(<item:scguns:diamond_steel_blend>);
<tag:items:c:diamond_steel_ingots>.add(<item:scguns:diamond_steel_ingot>);
<tag:items:c:ingots>.add(<item:scguns:diamond_steel_ingot>);
<tag:items:c:diamond_steel_blocks>.add(<item:scguns:diamond_steel_block>);
<tag:blocks:c:diamond_steel_blocks>.add(<block:scguns:diamond_steel_block>);
<tag:items:forge:storage_blocks>.add(<item:scguns:diamond_steel_block>);
<tag:blocks:forge:storage_blocks>.add(<block:scguns:diamond_steel_block>);

<tag:items:c:ingots>.add(<item:scguns:scorched_ingot>);
<tag:items:c:scorched_netherite_ingots>.add(<item:scguns:scorched_ingot>);
#endif
#onlyif modloaded spore
<tag:items:c:dusts/amethyst>.add(<item:spore:amethyst_dust>);
<tag:items:forge:circuits/basic>.add(<item:spore:circuit_board>);
#endif
#onlyif modloaded jaopca jaopcaextras ae2
<tag:items:forge:circuits/basic>.add(<tag:items:forge:processors/tin>);
<tag:items:forge:circuits/basic>.add(<tag:items:forge:processors/copper>);
<tag:items:forge:circuits/basic>.add(<tag:items:forge:processors/iron>);
#endif
#onlyif modloaded bigreactors
<tag:blocks:c:ores_in_ground/stone>.add(<block:bigreactors:yellorite_ore>);
<tag:blocks:c:ores_in_ground/end_stone>.add(<block:bigreactors:anglesite_ore>);
<tag:blocks:c:ores_in_ground/netherrack>.add(<block:bigreactors:benitoite_ore>);
#endif
#onlyif modloaded thermal
<tag:blocks:c:ores_in_ground/stone>.add(<block:thermal:apatite_ore>);
<tag:blocks:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_apatite_ore>);

<tag:blocks:c:ores_in_ground/stone>.add(<block:thermal:cinnabar_ore>);
<tag:blocks:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_cinnabar_ore>);

<tag:blocks:c:ores_in_ground/stone>.add(<block:thermal:niter_ore>);
<tag:blocks:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_niter_ore>);

<tag:blocks:c:ores_in_ground/stone>.add(<block:thermal:apatite_ore>);
<tag:blocks:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_apatite_ore>);

<tag:blocks:c:ores_in_ground/stone>.add(<block:thermal:sulfur_ore>);
<tag:blocks:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_sulfur_ore>);

<tag:blocks:c:ores_in_ground/stone>.add(<block:thermal:tin_ore>);
<tag:blocks:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_tin_ore>);

<tag:blocks:c:ores_in_ground/stone>.add(<block:thermal:lead_ore>);
<tag:blocks:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_lead_ore>);

<tag:blocks:c:ores_in_ground/stone>.add(<block:thermal:silver_ore>);
<tag:blocks:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_silver_ore>);

<tag:blocks:c:ores_in_ground/stone>.add(<block:thermal:nickel_ore>);
<tag:blocks:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_nickel_ore>);

<tag:blocks:c:ores_in_ground/stone>.add(<block:thermal:ruby_ore>);
<tag:blocks:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_ruby_ore>);

<tag:blocks:c:ores_in_ground/stone>.add(<block:thermal:sapphire_ore>);
<tag:blocks:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_sapphire_ore>);

<tag:blocks:c:ores_in_ground/stone>.add(<block:thermal:apatite_ore>);
<tag:blocks:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_apatite_ore>);
#endif
#onlyif modloaded tfmg
<tag:items:c:coal_coke>.add(<item:tfmg:coal_coke>);
<tag:items:c:coal_coke_blocks>.add(<item:tfmg:coal_coke_block>);
<tag:blocks:c:coal_coke_blocks>.add(<block:tfmg:coal_coke_block>);

<tag:items:c:ingots>.add(<item:tfmg:magnetic_ingot>);

<tag:fluids:c:gasoline>.add(<fluid:tfmg:gasoline>);
<tag:fluids:c:molten_steel>.add(<fluid:tfmg:molten_steel>);
<tag:fluids:c:creosote>.add(<fluid:tfmg:creosote>);
#endif
#onlyif modloaded bigreactors
<tag:items:c:ingots>.add(<item:bigreactors:insanite_ingot>);
<tag:items:c:ingots>.add(<item:bigreactors:inanite_ingot>);
<tag:items:c:ingots>.add(<item:bigreactors:ridiculite_ingot>);
<tag:items:c:ingots>.add(<item:bigreactors:ludicrite_ingot>);
#endif
#onlyif modloaded iceandfire
<tag:items:c:ghost_ingots>.add(<item:iceandfire:ghost_ingot>);

<tag:items:c:dragonsteel_ingots>.add(<item:iceandfire:dragonsteel_fire_ingot>);
<tag:items:c:dragonsteel_fire_ingots>.add(<item:iceandfire:dragonsteel_fire_ingot>);
<tag:items:c:dragonsteel_ingots>.add(<item:iceandfire:dragonsteel_ice_ingot>);
<tag:items:c:dragonsteel_ice_ingots>.add(<item:iceandfire:dragonsteel_ice_ingot>);
<tag:items:c:dragonsteel_ingots>.add(<item:iceandfire:dragonsteel_lightning_ingot>);
<tag:items:c:dragonsteel_lightning_ingots>.add(<item:iceandfire:dragonsteel_lightning_ingot>);

<tag:blocks:c:storage_blocks>.add(<block:iceandfire:dragonsteel_fire_block>);
<tag:blocks:c:dragonsteel_blocks>.add(<block:iceandfire:dragonsteel_fire_block>);
<tag:blocks:c:dragonsteel_fire_blocks>.add(<block:iceandfire:dragonsteel_fire_block>);
<tag:items:c:dragonsteel_blocks>.add(<item:iceandfire:dragonsteel_fire_block>);
<tag:items:c:dragonsteel_fire_blocks>.add(<item:iceandfire:dragonsteel_fire_block>);

<tag:blocks:c:storage_blocks>.add(<block:iceandfire:dragonsteel_ice_block>);
<tag:blocks:c:dragonsteel_blocks>.add(<block:iceandfire:dragonsteel_ice_block>);
<tag:blocks:c:dragonsteel_ice_blocks>.add(<block:iceandfire:dragonsteel_ice_block>);
<tag:items:c:dragonsteel_blocks>.add(<item:iceandfire:dragonsteel_ice_block>);
<tag:items:c:dragonsteel_ice_blocks>.add(<item:iceandfire:dragonsteel_ice_block>);

<tag:blocks:c:storage_blocks>.add(<block:iceandfire:dragonsteel_lightning_block>);
<tag:blocks:c:dragonsteel_blocks>.add(<block:iceandfire:dragonsteel_lightning_block>);
<tag:blocks:c:dragonsteel_lightning_blocks>.add(<block:iceandfire:dragonsteel_lightning_block>);
<tag:items:c:dragonsteel_blocks>.add(<item:iceandfire:dragonsteel_lightning_block>);
<tag:items:c:dragonsteel_lightning_blocks>.add(<item:iceandfire:dragonsteel_lightning_block>);
#endif
#onlyif modloaded megacells
<tag:items:c:ingots>.add(<item:megacells:sky_steel_ingot>);
#endif
#onlyif modloaded botania
<tag:items:c:ingots>.add(<item:botania:gaia_ingot>);
<tag:items:c:gaia_ingots>.add(<item:botania:gaia_ingot>);

<tag:items:c:gems>.add(<item:botania:quartz_mana>);
<tag:items:c:mana_quartz_gems>.add(<item:botania:quartz_mana>);
#endif
#onlyif modloaded alexscaves
<tag:items:c:ingots>.add(<item:alexscaves:scarlet_neodymium_ingot>);
<tag:items:c:neodymium_ingots>.add(<item:alexscaves:scarlet_neodymium_ingot>);
<tag:items:c:scarlet_neodymium_ingots>.add(<item:alexscaves:scarlet_neodymium_ingot>);
<tag:items:c:ingots>.add(<item:alexscaves:azure_neodymium_ingot>);
<tag:items:c:neodymium_ingots>.add(<item:alexscaves:azure_neodymium_ingot>);
<tag:items:c:azure_neodymium_ingots>.add(<item:alexscaves:azure_neodymium_ingot>);

<tag:blocks:c:storage_blocks>.add(<block:alexscaves:block_of_scarlet_neodymium>);
<tag:blocks:c:scarlet_neodymium_blocks>.add(<block:alexscaves:block_of_scarlet_neodymium>);
<tag:items:c:scarlet_neodymium_blocks>.add(<item:alexscaves:block_of_scarlet_neodymium>);

<tag:blocks:c:storage_blocks>.add(<block:alexscaves:block_of_azure_neodymium>);
<tag:blocks:c:azure_neodymium_blocks>.add(<block:alexscaves:block_of_azure_neodymium>);
<tag:items:c:azure_neodymium_blocks>.add(<item:alexscaves:block_of_azure_neodymium>);
#endif
#onlyif modloaded grimoireofgaia
<tag:items:c:pearl_raw_materials>.add(<item:grimoireofgaia:shiny_pearl>);

<tag:blocks:c:storage_blocks>.add(<block:grimoireofgaia:pearl_block>);
<tag:blocks:c:pearl_blocks>.add(<block:grimoireofgaia:pearl_block>);
<tag:items:c:pearl_blocks>.add(<item:grimoireofgaia:pearl_block>);
#endif
#onlyif modloaded hammerlib
<tag:items:c:gears>.add(<item:hammerlib:gears/wooden>);
<tag:items:c:gears>.add(<item:hammerlib:gears/stone>);
#endif
#onlyif modloaded ae2
<tag:items:c:tools/knifes>.add(<tag:items:ae2:knife>);
#endif
#onlyif modloaded ae2 ae2_tools
<tag:items:c:tools/knifes>.add(<item:ae2_tools:certus_quartz_knife>);
<tag:items:c:tools/knifes>.add(<item:ae2_tools:fluix_knife>);
#endif
#onlyif modloaded tools_complement
<tag:items:c:tools/knifes>.add(<item:tools_complement:iron_knife>);
<tag:items:c:tools/knifes>.add(<item:tools_complement:gold_knife>);
<tag:items:c:tools/knifes>.add(<item:tools_complement:diamond_knife>);
<tag:items:c:tools/knifes>.add(<item:tools_complement:netherite_knife>);
<tag:items:c:tools/knifes>.add(<item:tools_complement:copper_knife>);
<tag:items:c:tools/knifes>.add(<item:tools_complement:tin_knife>);
<tag:items:c:tools/knifes>.add(<item:tools_complement:lead_knife>);
<tag:items:c:tools/knifes>.add(<item:tools_complement:silver_knife>);
<tag:items:c:tools/knifes>.add(<item:tools_complement:nickel_knife>);
<tag:items:c:tools/knifes>.add(<item:tools_complement:bronze_knife>);
<tag:items:c:tools/knifes>.add(<item:tools_complement:electrum_knife>);
<tag:items:c:tools/knifes>.add(<item:tools_complement:invar_knife>);
<tag:items:c:tools/knifes>.add(<item:tools_complement:constantan_knife>);
#endif
#onlyif modloaded alexsmobs
<tag:items:c:raw_fishes>.add(<item:alexsmobs:raw_catfish>);
<tag:items:c:foods/raw_fishes>.add(<item:alexsmobs:raw_catfish>);
<tag:items:c:foods/fish/raw>.add(<item:alexsmobs:raw_catfish>);
<tag:items:c:foods/meat>.add(<item:alexsmobs:kangaroo_meat>);
<tag:items:c:foods/meat/raw>.add(<item:alexsmobs:kangaroo_meat>);
<tag:items:c:foods/meat>.add(<item:alexsmobs:moose_ribs>);
<tag:items:c:foods/meat/raw>.add(<item:alexsmobs:moose_ribs>);
#endif
<tag:blocks:c:glowstone_blocks>.add(<block:minecraft:glowstone>);
<tag:items:c:glowstone_blocks>.add(<item:minecraft:glowstone>);
#onlyif modloaded chipped
<tag:blocks:c:glowstone_blocks>.add(<tag:blocks:chipped:glowstone>);
<tag:items:c:glowstone_blocks>.add(<tag:items:chipped:glowstone>);
#endif

#endif

// Farmers Delight Item Tags
#onlyif modloaded farmersdelight
<tag:items:farmersdelight:offhand_equipment>.add(<item:minecraft:torch>);
#onlyif modloaded alexsmobs
<tag:items:farmersdelight:cabbage_roll_ingredients>.add(<item:alexsmobs:raw_catfish>);
#endif
#onlyif modloaded tconstruct
<tag:items:farmersdelight:offhand_equipment>.add(<item:tconstruct:travelers_shield>);
<tag:items:farmersdelight:offhand_equipment>.add(<item:tconstruct:plate_shield>);
#endif
#onlyif modloaded storagedrawers
<tag:items:farmersdelight:offhand_equipment>.add(<item:storagedrawers:drawer_key>);
#endif
#endif

// Farmers Delight Block Tags
#onlyif modloaded farmersdelight

#onlyif modloader forge
if (<tag:blocks:forge:storage_blocks/uranium>.exists() && <tag:blocks:forge:storage_blocks/uranium>.elements.length>0) {
    <tag:blocks:farmersdelight:heat_sources>.add(<tag:blocks:forge:storage_blocks/uranium>);
}
<tag:blocks:farmersdelight:compost_activators>.add(<tag:blocks:forge:mushrooms>);
<tag:blocks:farmersdelight:heat_conductors>.add(<tag:blocks:forge:storage_blocks/copper>);
<tag:blocks:farmersdelight:heat_conductors>.add(<tag:blocks:forge:storage_blocks/gold>);
#endif
#onlyif modloader fabric
if (<tag:blocks:c:uranium_blocks>.exists() && <tag:blocks:c:uranium_blocks>.elements.length>0) {
    <tag:blocks:farmersdelight:heat_sources>.add(<tag:blocks:c:uranium_blocks>);
}
<tag:blocks:farmersdelight:compost_activators>.add(<tag:items:c:mushrooms>);
<tag:blocks:farmersdelight:heat_conductors>.add(<tag:blocks:c:copper_blocks>);
<tag:blocks:farmersdelight:heat_conductors>.add(<tag:blocks:c:gold_blocks>);
#endif
#onlyif modloaded alexscaves
<tag:blocks:farmersdelight:heat_sources>.add(<block:alexscaves:primal_magma>);
<tag:blocks:farmersdelight:heat_sources>.add(<block:alexscaves:volcanic_core>);
#endif
#onlyif modloaded burnt
<tag:blocks:farmersdelight:heat_sources>.add(<block:burnt:liquid_magma>);
<tag:blocks:farmersdelight:tray_heat_sources>.add(<block:burnt:liquid_magma>);
#endif
#onlyif modloaded tconstruct
<tag:blocks:farmersdelight:heat_sources>.add(<block:tconstruct:magma_fluid>);
<tag:blocks:farmersdelight:tray_heat_sources>.add(<block:tconstruct:magma_fluid>);
<tag:blocks:farmersdelight:heat_sources>.add(<block:tconstruct:blazing_blood_fluid>);
<tag:blocks:farmersdelight:tray_heat_sources>.add(<block:tconstruct:blazing_blood_fluid>);
#endif
#onlyif modloaded scguns
<tag:blocks:farmersdelight:heat_sources>.add(<block:scguns:sulfur_vent>);
<tag:blocks:farmersdelight:heat_sources>.add(<block:scguns:geothermal_vent>);
#endif
#onlyif modloaded twilightforest
<tag:blocks:farmersdelight:heat_sources>.add(<block:twilightforest:smoker>);
<tag:blocks:farmersdelight:heat_sources>.add(<block:twilightforest:fire_jet>);
#endif
#onlyif modloaded botania
<tag:blocks:farmersdelight:heat_sources>.add(<block:botania:exoflame>);
<tag:blocks:farmersdelight:tray_heat_sources>.add(<block:botania:exoflame>);
<tag:blocks:farmersdelight:heat_sources>.add(<block:botania:floating_exoflame>);
<tag:blocks:farmersdelight:tray_heat_sources>.add(<block:botania:floating_exoflame>);
#endif
#onlyif modloaded tconstruct
<tag:items:farmersdelight:straw_harvesters>.add(<item:tconstruct:scythe>);
#endif

#endif

// Create Upright Items
#onlyif modloaded create
#onlyif modloaded alexscaves
<tag:items:create:upright_on_belt>.add(<item:alexscaves:hot_chocolate_bottle>);
<tag:items:create:upright_on_belt>.add(<item:alexscaves:purple_soda_bottle>);
<tag:items:create:upright_on_belt>.add(<item:alexscaves:radon_bottle>);
#endif
#onlyif modloaded alexsmobs
<tag:items:create:upright_on_belt>.add(<item:alexsmobs:lava_bottle>);
<tag:items:create:upright_on_belt>.add(<item:alexsmobs:komodo_spit_bottle>);
<tag:items:create:upright_on_belt>.add(<item:alexsmobs:stink_bottle>);
#endif
#onlyif modloaded botania
<tag:items:create:upright_on_belt>.add(<item:botania:ender_air_bottle>);
<tag:items:create:upright_on_belt>.add(<item:botania:slime_bottle>);
<tag:items:create:upright_on_belt>.add(<item:botania:mana_bottle>);
#endif
#onlyif modloaded quark
<tag:items:create:upright_on_belt>.add(<item:quark:bottled_cloud>);
#endif
#onlyif modloaded relic
<tag:items:create:upright_on_belt>.add(<item:relic:relic_experience_bottle>);
#endif
#onlyif modloaded thermal thermal_expansion
<tag:items:create:upright_on_belt>.add(<item:thermal:syrup_bottle>);
#endif
#onlyif modloaded tconstruct
<tag:items:create:upright_on_belt>.add(<item:tconstruct:splash_bottle>);
<tag:items:create:upright_on_belt>.add(<item:tconstruct:lingering_bottle>);
<tag:items:create:upright_on_belt>.add(<item:tconstruct:earth_slime_bottle>);
<tag:items:create:upright_on_belt>.add(<item:tconstruct:sky_slime_bottle>);
<tag:items:create:upright_on_belt>.add(<item:tconstruct:ichor_slime_bottle>);
<tag:items:create:upright_on_belt>.add(<item:tconstruct:ender_slime_bottle>);
<tag:items:create:upright_on_belt>.add(<item:tconstruct:magma_bottle>);
<tag:items:create:upright_on_belt>.add(<item:tconstruct:venom_bottle>);
#endif
#onlyif modloaded tfmg
<tag:items:create:upright_on_belt>.add(<item:tfmg:bottle_of_concrete>);
#endif
#onlyif modloaded supplementaries
<tag:items:create:upright_on_belt>.add(<item:supplementaries:lumisene_bottle>);
#endif
#onlyif modloaded foodtxf
<tag:items:create:upright_on_belt>.add(<item:foodtxf:thermos>);
<tag:items:create:upright_on_belt>.add(<item:foodtxf:water_thermos>);
<tag:items:create:upright_on_belt>.add(<item:foodtxf:lava_thermos>);
<tag:items:create:upright_on_belt>.add(<item:foodtxf:milk_thermos>);
<tag:items:create:upright_on_belt>.add(<item:foodtxf:chocomilk_thermos>);

<tag:items:create:upright_on_belt>.add(<item:foodtxf:glass>);
<tag:items:create:upright_on_belt>.add(<item:foodtxf:glass_of_fruit_juice>);
<tag:items:create:upright_on_belt>.add(<item:foodtxf:glass_of_vegetable_juice>);
<tag:items:create:upright_on_belt>.add(<item:foodtxf:glass_of_mixed_juice>);
<tag:items:create:upright_on_belt>.add(<item:foodtxf:glass_of_water>);
<tag:items:create:upright_on_belt>.add(<item:foodtxf:glass_of_water_and_bread>);
<tag:items:create:upright_on_belt>.add(<item:foodtxf:glass_of_lava>);
<tag:items:create:upright_on_belt>.add(<item:foodtxf:glass_of_milk>);
<tag:items:create:upright_on_belt>.add(<item:foodtxf:glass_of_milk_and_cookies>);
<tag:items:create:upright_on_belt>.add(<item:foodtxf:glass_of_milk_and_toasted_bread>);
<tag:items:create:upright_on_belt>.add(<item:foodtxf:glass_of_chocomilk>);
<tag:items:create:upright_on_belt>.add(<item:foodtxf:glass_of_chocomilk_and_cookies>);
<tag:items:create:upright_on_belt>.add(<item:foodtxf:glass_of_chocomilk_and_toasted_bread>);

<tag:items:create:upright_on_belt>.add(<item:foodtxf:box>);
<tag:items:create:upright_on_belt>.add(<item:foodtxf:box_of_cereal>);
<tag:items:create:upright_on_belt>.add(<item:foodtxf:box_of_cookies>);
#endif
#onlyif modloaded amendments
<tag:items:create:upright_on_belt>.add(<item:amendments:dye_bottle>);
#endif
#onlyif modloaded brewery
<tag:items:create:upright_on_belt>.add(<item:brewery:beer_mug>);
<tag:items:create:upright_on_belt>.add(<item:brewery:beer_wheat>);
<tag:items:create:upright_on_belt>.add(<item:brewery:beer_barley>);
<tag:items:create:upright_on_belt>.add(<item:brewery:beer_hops>);
<tag:items:create:upright_on_belt>.add(<item:brewery:beer_haley>);

<tag:items:create:upright_on_belt>.add(<item:brewery:whiskey_jojannik>);
<tag:items:create:upright_on_belt>.add(<item:brewery:whiskey_lilitusinglemalt>);
<tag:items:create:upright_on_belt>.add(<item:brewery:whiskey_cristelwalker>);
<tag:items:create:upright_on_belt>.add(<item:brewery:whiskey_maggoallan>);
<tag:items:create:upright_on_belt>.add(<item:brewery:whiskey_carrasconlabel>);
#endif
#endif