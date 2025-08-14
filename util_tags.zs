#priority 200

#onlyif modloaded bloodmagic
var MIN_MASTER_BLOOD_ORB = <tag:item:lots_of_compat:at_least_master_blood_orb>;
MIN_MASTER_BLOOD_ORB.add(<item:bloodmagic:archmagebloodorb>);
MIN_MASTER_BLOOD_ORB.add(<item:bloodmagic:masterbloodorb>);

var MIN_MAGICIAN_BLOOD_ORB = <tag:item:lots_of_compat:at_least_magician_blood_orb>;
MIN_MAGICIAN_BLOOD_ORB.add(MIN_MASTER_BLOOD_ORB.elements as ItemDefinition[]);
MIN_MAGICIAN_BLOOD_ORB.add(<item:bloodmagic:magicianbloodorb>);

var MIN_APPRENTICE_BLOOD_ORB = <tag:item:lots_of_compat:at_least_apprentice_blood_orb>;
MIN_APPRENTICE_BLOOD_ORB.add(MIN_MAGICIAN_BLOOD_ORB);
MIN_APPRENTICE_BLOOD_ORB.add(<item:bloodmagic:apprenticebloodorb>);

var ANY_BLOOD_ORB = <tag:item:lots_of_compat:any_blood_orb>;
ANY_BLOOD_ORB.add(MIN_APPRENTICE_BLOOD_ORB);
ANY_BLOOD_ORB.add(<item:bloodmagic:weakbloodorb>);
#endif

var DIAMOND_CIRCUITS = <tag:item:lots_of_compat:diamond_circuits>;
#onlyif modloaded ae2
DIAMOND_CIRCUITS.add(<item:ae2:engineering_processor>);
#endif
#onlyif modloader forge
if (<tag:item:forge:circuits/elite>.exists() && <tag:item:forge:circuits/elite>.elements.length>0) {
    DIAMOND_CIRCUITS.add(<tag:item:forge:circuits/elite>);
}
#endif
var GOLD_CIRCUITS = <tag:item:lots_of_compat:gold_circuits>;
#onlyif modloaded ae2
GOLD_CIRCUITS.add(<item:ae2:logic_processor>);
#endif
#onlyif modloader forge
if (<tag:item:forge:circuits/advanced>.exists() && <tag:item:forge:circuits/advanced>.elements.length>0) {
    GOLD_CIRCUITS.add(<tag:item:forge:circuits/advanced>);
}
#endif
var FLUID_PIPES = <tag:item:lots_of_compat:fluid_pipes>;
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

var MAGNETIC_INGOTS = <tag:item:lots_of_compat:magnetic_ingots>;
#onlyif modloaded alexscaves
MAGNETIC_INGOTS.add(<item:alexscaves:scarlet_neodymium_ingot>);
MAGNETIC_INGOTS.add(<item:alexscaves:azure_neodymium_ingot>);
#endif
#onlyif modloaded tfmg
MAGNETIC_INGOTS.add(<item:tfmg:magnetic_ingot>);
#endif

var BLOOD_LIKE = <tag:fluid:lots_of_compat:blood_like>;
#onlyif modloaded tconstruct
BLOOD_LIKE.add(<fluid:tconstruct:meat_soup>);
#endif
#onlyif modloaded biomesoplenty
BLOOD_LIKE.add(<fluid:biomesoplenty:blood>);
#endif

var ACIDS = <tag:fluid:lots_of_compat:acid>;
#onlyif modloaded alexscaves
ACIDS.add(<fluid:alexscaves:acid>);
#endif
#onlyif modloaded tfmg
ACIDS.add(<fluid:tfmg:sulfuric_acid>);
#endif

var LIQUID_SLIME = <tag:fluid:lots_of_compat:liquid_slime>;
#onlyif modloaded tconstruct
LIQUID_SLIME.add(<fluid:tconstruct:earth_slime>);
LIQUID_SLIME.add(<fluid:tconstruct:sky_slime>);
LIQUID_SLIME.add(<fluid:tconstruct:ender_slime>);
#endif

var COOKIES = <tag:item:lots_of_compat:cookies>;
COOKIES.add(<item:minecraft:cookie>);
#onlyif modloaded farmersdelight
COOKIES.add(<item:farmersdelight:honey_cookie>);
COOKIES.add(<item:farmersdelight:sweet_berry_cookie>);
#endif

var RAW_HUMANOID_FLESH = <tag:item:lots_of_compat:raw_humanoid_flesh>;
RAW_HUMANOID_FLESH.add(<item:minecraft:rotten_flesh>);
#onlyif modloaded foodtxf
RAW_HUMANOID_FLESH.add(<item:foodtxf:player_flesh>);
#endif

var BOOK_COVERS = <tag:item:lots_of_compat:book_covers>;
BOOK_COVERS.add(<item:minecraft:leather>);
#onlyif modloaded farmersdelight
RAW_HUMANOID_FLESH.add(<item:farmersdelight:canvas>);
#endif
#onlyif modloaded create
RAW_HUMANOID_FLESH.add(<item:create:cardboard>);
#endif

// Non-lots_of_compat-specific (FORGE)
#onlyif modloader forge

#onlyif modloaded burnt
<tag:fluid:forge:magma>.add(<fluid:burnt:liquid_magma>);
#endif
#onlyif modloaded scguns
<tag:item:forge:tools/knifes>.add(<item:scguns:anthralite_knife>);


<tag:item:forge:dusts/niter>.add(<item:scguns:niter_dust>);

<tag:item:forge:ores/anthralite>.add(<item:scguns:anthralite_ore>);
<tag:block:forge:ores_in_ground/stone>.add(<block:scguns:anthralite_ore>);
<tag:item:forge:ores/anthralite>.add(<item:scguns:deepslate_anthralite_ore>);
<tag:block:forge:ores_in_ground/deepslate>.add(<block:scguns:deepslate_anthralite_ore>);

<tag:block:forge:ores_in_ground/stone>.add(<block:scguns:sulfur_ore>);
<tag:block:forge:ores_in_ground/deepslate>.add(<block:scguns:deepslate_sulfur_ore>);
<tag:block:forge:ores_in_ground/netherrack>.add(<block:scguns:nether_sulfur_ore>);

<tag:block:forge:ores_in_ground/netherrack>.add(<block:scguns:vehement_coal_ore>);
<tag:block:forge:ores>.add(<block:scguns:rich_phosphorite>);
<tag:block:forge:ores_in_ground/deepslate>.add(<block:scguns:rich_phosphorite>);

<tag:item:forge:raw_materials/anthralite>.add(<item:scguns:raw_anthralite>);
<tag:item:forge:dusts/anthralite>.add(<item:scguns:crushed_raw_anthralite>);
<tag:item:forge:nuggets>.add(<item:scguns:anthralite_nugget>);
<tag:item:forge:ingots/anthralite>.add(<item:scguns:anthralite_ingot>);
<tag:item:forge:ingots>.add(<item:scguns:anthralite_ingot>);
<tag:item:forge:storage_blocks/anthralite>.add(<item:scguns:anthralite_block>);

<tag:item:forge:ingots/treated_iron>.add(<item:scguns:treated_iron_ingot>);
<tag:item:forge:ingots>.add(<item:scguns:treated_iron_ingot>);
<tag:block:forge:storage_blocks/iron>.remove(<block:scguns:treated_iron_block>);
<tag:item:forge:storage_blocks/treated_iron>.add(<item:scguns:treated_iron_block>);
<tag:block:forge:storage_blocks/treated_iron>.add(<block:scguns:treated_iron_block>);
<tag:item:forge:storage_blocks>.add(<item:scguns:treated_iron_block>);

<tag:item:forge:ingots/treated_brass>.add(<item:scguns:treated_brass_ingot>);
<tag:item:forge:ingots>.add(<item:scguns:treated_brass_ingot>);
<tag:item:forge:storage_blocks/treated_brass>.add(<item:scguns:treated_brass_block>);
<tag:block:forge:storage_blocks/treated_brass>.add(<block:scguns:treated_brass_block>);
<tag:block:forge:storage_blocks>.add(<block:scguns:treated_brass_block>);
<tag:item:forge:storage_blocks>.add(<item:scguns:treated_brass_block>);

<tag:item:forge:raw_materials/diamond_steel>.add(<item:scguns:diamond_steel_blend>);
<tag:item:forge:ingots/diamond_steel>.add(<item:scguns:diamond_steel_ingot>);
<tag:item:forge:ingots>.add(<item:scguns:diamond_steel_ingot>);
<tag:item:forge:storage_blocks/diamond_steel>.add(<item:scguns:diamond_steel_block>);
<tag:block:forge:storage_blocks/diamond_steel>.add(<block:scguns:diamond_steel_block>);
<tag:item:forge:storage_blocks>.add(<item:scguns:diamond_steel_block>);
<tag:block:forge:storage_blocks>.add(<block:scguns:diamond_steel_block>);

<tag:item:forge:ingots>.add(<item:scguns:scorched_ingot>);
<tag:item:forge:ingots/scorched_netherite>.add(<item:scguns:scorched_ingot>);
#endif
#onlyif modloaded spore
<tag:item:forge:dusts/amethyst>.add(<item:spore:amethyst_dust>);
<tag:item:forge:circuits/basic>.add(<item:spore:circuit_board>);
#endif
#onlyif modloaded jaopca jaopcaextras ae2
<tag:item:forge:circuits/basic>.add(<tag:item:forge:processors/tin>);
<tag:item:forge:circuits/basic>.add(<tag:item:forge:processors/copper>);
<tag:item:forge:circuits/basic>.add(<tag:item:forge:processors/iron>);
#endif
#onlyif modloaded bigreactors
<tag:block:forge:ores_in_ground/stone>.add(<block:bigreactors:yellorite_ore>);
<tag:block:forge:ores_in_ground/end_stone>.add(<block:bigreactors:anglesite_ore>);
<tag:block:forge:ores_in_ground/netherrack>.add(<block:bigreactors:benitoite_ore>);
#endif
#onlyif modloaded thermal
<tag:block:forge:ores_in_ground/stone>.add(<block:thermal:apatite_ore>);
<tag:block:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_apatite_ore>);

<tag:block:forge:ores_in_ground/stone>.add(<block:thermal:cinnabar_ore>);
<tag:block:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_cinnabar_ore>);

<tag:block:forge:ores_in_ground/stone>.add(<block:thermal:niter_ore>);
<tag:block:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_niter_ore>);

<tag:block:forge:ores_in_ground/stone>.add(<block:thermal:apatite_ore>);
<tag:block:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_apatite_ore>);

<tag:block:forge:ores_in_ground/stone>.add(<block:thermal:sulfur_ore>);
<tag:block:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_sulfur_ore>);

<tag:block:forge:ores_in_ground/stone>.add(<block:thermal:tin_ore>);
<tag:block:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_tin_ore>);

<tag:block:forge:ores_in_ground/stone>.add(<block:thermal:lead_ore>);
<tag:block:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_lead_ore>);

<tag:block:forge:ores_in_ground/stone>.add(<block:thermal:silver_ore>);
<tag:block:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_silver_ore>);

<tag:block:forge:ores_in_ground/stone>.add(<block:thermal:nickel_ore>);
<tag:block:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_nickel_ore>);

<tag:block:forge:ores_in_ground/stone>.add(<block:thermal:ruby_ore>);
<tag:block:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_ruby_ore>);

<tag:block:forge:ores_in_ground/stone>.add(<block:thermal:sapphire_ore>);
<tag:block:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_sapphire_ore>);

<tag:block:forge:ores_in_ground/stone>.add(<block:thermal:apatite_ore>);
<tag:block:forge:ores_in_ground/deepslate>.add(<block:thermal:deepslate_apatite_ore>);
#endif
#onlyif modloaded tfmg
<tag:item:forge:coal_coke>.add(<item:tfmg:coal_coke>);
<tag:item:forge:storage_blocks/coal_coke>.add(<item:tfmg:coal_coke_block>);
<tag:block:forge:storage_blocks/coal_coke>.add(<block:tfmg:coal_coke_block>);

<tag:item:forge:ingots>.add(<item:tfmg:magnetic_ingot>);

<tag:fluid:forge:gasoline>.add(<fluid:tfmg:gasoline>);
<tag:fluid:forge:molten_steel>.add(<fluid:tfmg:molten_steel>);
<tag:fluid:forge:creosote>.add(<fluid:tfmg:creosote>);
#endif
#onlyif modloaded bigreactors
<tag:item:forge:ingots>.add(<item:bigreactors:insanite_ingot>);
<tag:item:forge:ingots>.add(<item:bigreactors:inanite_ingot>);
<tag:item:forge:ingots>.add(<item:bigreactors:ridiculite_ingot>);
<tag:item:forge:ingots>.add(<item:bigreactors:ludicrite_ingot>);
#endif
#onlyif modloaded iceandfire
<tag:item:forge:ingots/ghost>.add(<item:iceandfire:ghost_ingot>);

<tag:item:forge:ingots/dragonsteel>.add(<item:iceandfire:dragonsteel_fire_ingot>);
<tag:item:forge:ingots/dragonsteel_fire>.add(<item:iceandfire:dragonsteel_fire_ingot>);
<tag:item:forge:ingots/dragonsteel>.add(<item:iceandfire:dragonsteel_ice_ingot>);
<tag:item:forge:ingots/dragonsteel_ice>.add(<item:iceandfire:dragonsteel_ice_ingot>);
<tag:item:forge:ingots/dragonsteel>.add(<item:iceandfire:dragonsteel_lightning_ingot>);
<tag:item:forge:ingots/dragonsteel_lightning>.add(<item:iceandfire:dragonsteel_lightning_ingot>);

<tag:block:forge:storage_blocks>.add(<block:iceandfire:dragonsteel_fire_block>);
<tag:block:forge:storage_blocks/dragonsteel>.add(<block:iceandfire:dragonsteel_fire_block>);
<tag:block:forge:storage_blocks/dragonsteel_fire>.add(<block:iceandfire:dragonsteel_fire_block>);
<tag:item:forge:storage_blocks/dragonsteel>.add(<item:iceandfire:dragonsteel_fire_block>);
<tag:item:forge:storage_blocks/dragonsteel_fire>.add(<item:iceandfire:dragonsteel_fire_block>);

<tag:block:forge:storage_blocks>.add(<block:iceandfire:dragonsteel_ice_block>);
<tag:block:forge:storage_blocks/dragonsteel>.add(<block:iceandfire:dragonsteel_ice_block>);
<tag:block:forge:storage_blocks/dragonsteel_ice>.add(<block:iceandfire:dragonsteel_ice_block>);
<tag:item:forge:storage_blocks/dragonsteel>.add(<item:iceandfire:dragonsteel_ice_block>);
<tag:item:forge:storage_blocks/dragonsteel_ice>.add(<item:iceandfire:dragonsteel_ice_block>);

<tag:block:forge:storage_blocks>.add(<block:iceandfire:dragonsteel_lightning_block>);
<tag:block:forge:storage_blocks/dragonsteel>.add(<block:iceandfire:dragonsteel_lightning_block>);
<tag:block:forge:storage_blocks/dragonsteel_lightning>.add(<block:iceandfire:dragonsteel_lightning_block>);
<tag:item:forge:storage_blocks/dragonsteel>.add(<item:iceandfire:dragonsteel_lightning_block>);
<tag:item:forge:storage_blocks/dragonsteel_lightning>.add(<item:iceandfire:dragonsteel_lightning_block>);
#endif
#onlyif modloaded megacells
<tag:item:forge:ingots>.add(<item:megacells:sky_steel_ingot>);
#endif
#onlyif modloaded botania
<tag:item:forge:ingots>.add(<item:botania:gaia_ingot>);
<tag:item:forge:ingots/gaia>.add(<item:botania:gaia_ingot>);

<tag:item:forge:gems>.add(<item:botania:quartz_mana>);
<tag:item:forge:gems/mana_quartz>.add(<item:botania:quartz_mana>);
#endif
#onlyif modloaded alexscaves
<tag:item:forge:ingots>.add(<item:alexscaves:scarlet_neodymium_ingot>);
<tag:item:forge:ingots/neodymium>.add(<item:alexscaves:scarlet_neodymium_ingot>);
<tag:item:forge:ingots/scarlet_neodymium>.add(<item:alexscaves:scarlet_neodymium_ingot>);
<tag:item:forge:ingots>.add(<item:alexscaves:azure_neodymium_ingot>);
<tag:item:forge:ingots/neodymium>.add(<item:alexscaves:azure_neodymium_ingot>);
<tag:item:forge:ingots/azure_neodymium>.add(<item:alexscaves:azure_neodymium_ingot>);

<tag:block:forge:storage_blocks>.add(<block:alexscaves:block_of_scarlet_neodymium>);
<tag:block:forge:storage_blocks/scarlet_neodymium>.add(<block:alexscaves:block_of_scarlet_neodymium>);
<tag:item:forge:storage_blocks/scarlet_neodymium>.add(<item:alexscaves:block_of_scarlet_neodymium>);

<tag:block:forge:storage_blocks>.add(<block:alexscaves:block_of_azure_neodymium>);
<tag:block:forge:storage_blocks/azure_neodymium>.add(<block:alexscaves:block_of_azure_neodymium>);
<tag:item:forge:storage_blocks/azure_neodymium>.add(<item:alexscaves:block_of_azure_neodymium>);
#endif
#onlyif modloaded grimoireofgaia
<tag:item:forge:raw_materials/pearl>.add(<item:grimoireofgaia:shiny_pearl>);

<tag:block:forge:storage_blocks>.add(<block:grimoireofgaia:pearl_block>);
<tag:block:forge:storage_blocks/pearl>.add(<block:grimoireofgaia:pearl_block>);
<tag:item:forge:storage_blocks/pearl>.add(<item:grimoireofgaia:pearl_block>);
#endif
#onlyif modloaded hammerlib
<tag:item:forge:gears>.add(<item:hammerlib:gears/wooden>);
<tag:item:forge:gears>.add(<item:hammerlib:gears/stone>);
#endif
#onlyif modloaded ae2
<tag:item:forge:tools/knifes>.add(<tag:item:ae2:knife>);
#endif
#onlyif modloaded ae2 ae2_tools
<tag:item:forge:tools/knifes>.add(<item:ae2_tools:certus_quartz_knife>);
<tag:item:forge:tools/knifes>.add(<item:ae2_tools:fluix_knife>);
#endif
#onlyif modloaded tools_complement
<tag:item:forge:tools/knifes>.add(<item:tools_complement:iron_knife>);
<tag:item:forge:tools/knifes>.add(<item:tools_complement:gold_knife>);
<tag:item:forge:tools/knifes>.add(<item:tools_complement:diamond_knife>);
<tag:item:forge:tools/knifes>.add(<item:tools_complement:netherite_knife>);
<tag:item:forge:tools/knifes>.add(<item:tools_complement:copper_knife>);
<tag:item:forge:tools/knifes>.add(<item:tools_complement:tin_knife>);
<tag:item:forge:tools/knifes>.add(<item:tools_complement:lead_knife>);
<tag:item:forge:tools/knifes>.add(<item:tools_complement:silver_knife>);
<tag:item:forge:tools/knifes>.add(<item:tools_complement:nickel_knife>);
<tag:item:forge:tools/knifes>.add(<item:tools_complement:bronze_knife>);
<tag:item:forge:tools/knifes>.add(<item:tools_complement:electrum_knife>);
<tag:item:forge:tools/knifes>.add(<item:tools_complement:invar_knife>);
<tag:item:forge:tools/knifes>.add(<item:tools_complement:constantan_knife>);
#endif
#onlyif modloaded alexsmobs
<tag:item:forge:raw_fishes>.add(<item:alexsmobs:raw_catfish>);
<tag:item:forge:foods/raw_fishes>.add(<item:alexsmobs:raw_catfish>);
<tag:item:forge:foods/fish/raw>.add(<item:alexsmobs:raw_catfish>);
<tag:item:forge:foods/meat>.add(<item:alexsmobs:kangaroo_meat>);
<tag:item:forge:foods/meat/raw>.add(<item:alexsmobs:kangaroo_meat>);
<tag:item:forge:foods/meat>.add(<item:alexsmobs:moose_ribs>);
<tag:item:forge:foods/meat/raw>.add(<item:alexsmobs:moose_ribs>);
#endif

#endif

// Non-lots_of_compat-specific (FABRIC)
#onlyif modloader fabric

<tag:item:c:buckets/water>.add(<tag:item:c:water_buckets>);
<tag:item:c:buckets/lava>.add(<tag:item:c:lava_buckets>);
<tag:item:c:buckets/milk>.add(<tag:item:c:milk_buckets>);

#onlyif modloaded burnt
<tag:fluid:c:magma>.add(<fluid:burnt:liquid_magma>);
#endif
#onlyif modloaded scguns
<tag:item:c:tools/knifes>.add(<item:scguns:anthralite_knife>);


<tag:item:c:dusts/niter>.add(<item:scguns:niter_dust>);

<tag:item:c:anthralite_ores>.add(<item:scguns:anthralite_ore>);
<tag:block:c:ores_in_ground/stone>.add(<block:scguns:anthralite_ore>);
<tag:item:c:anthralite_ores>.add(<item:scguns:deepslate_anthralite_ore>);
<tag:block:c:ores_in_ground/deepslate>.add(<block:scguns:deepslate_anthralite_ore>);

<tag:block:c:ores_in_ground/stone>.add(<block:scguns:sulfur_ore>);
<tag:block:c:ores_in_ground/deepslate>.add(<block:scguns:deepslate_sulfur_ore>);
<tag:block:c:ores_in_ground/netherrack>.add(<block:scguns:nether_sulfur_ore>);

<tag:block:c:ores_in_ground/netherrack>.add(<block:scguns:vehement_coal_ore>);
<tag:block:c:ores>.add(<block:scguns:rich_phosphorite>);
<tag:block:c:ores_in_ground/deepslate>.add(<block:scguns:rich_phosphorite>);

<tag:item:c:anthralite_raw_materials>.add(<item:scguns:raw_anthralite>);
<tag:item:c:dusts/anthralite>.add(<item:scguns:crushed_raw_anthralite>);
<tag:item:c:nuggets>.add(<item:scguns:anthralite_nugget>);
<tag:item:c:anthralite_ingots>.add(<item:scguns:anthralite_ingot>);
<tag:item:c:ingots>.add(<item:scguns:anthralite_ingot>);
<tag:item:c:anthralite_blocks>.add(<item:scguns:anthralite_block>);

<tag:item:c:treated_iron_ingots>.add(<item:scguns:treated_iron_ingot>);
<tag:item:c:ingots>.add(<item:scguns:treated_iron_ingot>);
<tag:block:c:iron_blocks>.remove(<block:scguns:treated_iron_block>);
<tag:item:c:treated_iron_blocks>.add(<item:scguns:treated_iron_block>);
<tag:block:c:treated_iron_blocks>.add(<block:scguns:treated_iron_block>);
<tag:item:forge:storage_blocks>.add(<item:scguns:treated_iron_block>);

<tag:item:c:treated_brass_ingots>.add(<item:scguns:treated_brass_ingot>);
<tag:item:c:ingots>.add(<item:scguns:treated_brass_ingot>);
<tag:item:c:treated_brass_blocks>.add(<item:scguns:treated_brass_block>);
<tag:block:c:treated_brass_blocks>.add(<block:scguns:treated_brass_block>);
<tag:block:forge:storage_blocks>.add(<block:scguns:treated_brass_block>);
<tag:item:forge:storage_blocks>.add(<item:scguns:treated_brass_block>);

<tag:item:c:diamond_steel_raw_materials>.add(<item:scguns:diamond_steel_blend>);
<tag:item:c:diamond_steel_ingots>.add(<item:scguns:diamond_steel_ingot>);
<tag:item:c:ingots>.add(<item:scguns:diamond_steel_ingot>);
<tag:item:c:diamond_steel_blocks>.add(<item:scguns:diamond_steel_block>);
<tag:block:c:diamond_steel_blocks>.add(<block:scguns:diamond_steel_block>);
<tag:item:forge:storage_blocks>.add(<item:scguns:diamond_steel_block>);
<tag:block:forge:storage_blocks>.add(<block:scguns:diamond_steel_block>);

<tag:item:c:ingots>.add(<item:scguns:scorched_ingot>);
<tag:item:c:scorched_netherite_ingots>.add(<item:scguns:scorched_ingot>);
#endif
#onlyif modloaded spore
<tag:item:c:dusts/amethyst>.add(<item:spore:amethyst_dust>);
<tag:item:forge:circuits/basic>.add(<item:spore:circuit_board>);
#endif
#onlyif modloaded jaopca jaopcaextras ae2
<tag:item:forge:circuits/basic>.add(<tag:item:forge:processors/tin>);
<tag:item:forge:circuits/basic>.add(<tag:item:forge:processors/copper>);
<tag:item:forge:circuits/basic>.add(<tag:item:forge:processors/iron>);
#endif
#onlyif modloaded bigreactors
<tag:block:c:ores_in_ground/stone>.add(<block:bigreactors:yellorite_ore>);
<tag:block:c:ores_in_ground/end_stone>.add(<block:bigreactors:anglesite_ore>);
<tag:block:c:ores_in_ground/netherrack>.add(<block:bigreactors:benitoite_ore>);
#endif
#onlyif modloaded thermal
<tag:block:c:ores_in_ground/stone>.add(<block:thermal:apatite_ore>);
<tag:block:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_apatite_ore>);

<tag:block:c:ores_in_ground/stone>.add(<block:thermal:cinnabar_ore>);
<tag:block:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_cinnabar_ore>);

<tag:block:c:ores_in_ground/stone>.add(<block:thermal:niter_ore>);
<tag:block:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_niter_ore>);

<tag:block:c:ores_in_ground/stone>.add(<block:thermal:apatite_ore>);
<tag:block:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_apatite_ore>);

<tag:block:c:ores_in_ground/stone>.add(<block:thermal:sulfur_ore>);
<tag:block:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_sulfur_ore>);

<tag:block:c:ores_in_ground/stone>.add(<block:thermal:tin_ore>);
<tag:block:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_tin_ore>);

<tag:block:c:ores_in_ground/stone>.add(<block:thermal:lead_ore>);
<tag:block:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_lead_ore>);

<tag:block:c:ores_in_ground/stone>.add(<block:thermal:silver_ore>);
<tag:block:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_silver_ore>);

<tag:block:c:ores_in_ground/stone>.add(<block:thermal:nickel_ore>);
<tag:block:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_nickel_ore>);

<tag:block:c:ores_in_ground/stone>.add(<block:thermal:ruby_ore>);
<tag:block:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_ruby_ore>);

<tag:block:c:ores_in_ground/stone>.add(<block:thermal:sapphire_ore>);
<tag:block:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_sapphire_ore>);

<tag:block:c:ores_in_ground/stone>.add(<block:thermal:apatite_ore>);
<tag:block:c:ores_in_ground/deepslate>.add(<block:thermal:deepslate_apatite_ore>);
#endif
#onlyif modloaded tfmg
<tag:item:c:coal_coke>.add(<item:tfmg:coal_coke>);
<tag:item:c:coal_coke_blocks>.add(<item:tfmg:coal_coke_block>);
<tag:block:c:coal_coke_blocks>.add(<block:tfmg:coal_coke_block>);

<tag:item:c:ingots>.add(<item:tfmg:magnetic_ingot>);

<tag:fluid:c:gasoline>.add(<fluid:tfmg:gasoline>);
<tag:fluid:c:molten_steel>.add(<fluid:tfmg:molten_steel>);
<tag:fluid:c:creosote>.add(<fluid:tfmg:creosote>);
#endif
#onlyif modloaded bigreactors
<tag:item:c:ingots>.add(<item:bigreactors:insanite_ingot>);
<tag:item:c:ingots>.add(<item:bigreactors:inanite_ingot>);
<tag:item:c:ingots>.add(<item:bigreactors:ridiculite_ingot>);
<tag:item:c:ingots>.add(<item:bigreactors:ludicrite_ingot>);
#endif
#onlyif modloaded iceandfire
<tag:item:c:ghost_ingots>.add(<item:iceandfire:ghost_ingot>);

<tag:item:c:dragonsteel_ingots>.add(<item:iceandfire:dragonsteel_fire_ingot>);
<tag:item:c:dragonsteel_fire_ingots>.add(<item:iceandfire:dragonsteel_fire_ingot>);
<tag:item:c:dragonsteel_ingots>.add(<item:iceandfire:dragonsteel_ice_ingot>);
<tag:item:c:dragonsteel_ice_ingots>.add(<item:iceandfire:dragonsteel_ice_ingot>);
<tag:item:c:dragonsteel_ingots>.add(<item:iceandfire:dragonsteel_lightning_ingot>);
<tag:item:c:dragonsteel_lightning_ingots>.add(<item:iceandfire:dragonsteel_lightning_ingot>);

<tag:block:c:storage_blocks>.add(<block:iceandfire:dragonsteel_fire_block>);
<tag:block:c:dragonsteel_blocks>.add(<block:iceandfire:dragonsteel_fire_block>);
<tag:block:c:dragonsteel_fire_blocks>.add(<block:iceandfire:dragonsteel_fire_block>);
<tag:item:c:dragonsteel_blocks>.add(<item:iceandfire:dragonsteel_fire_block>);
<tag:item:c:dragonsteel_fire_blocks>.add(<item:iceandfire:dragonsteel_fire_block>);

<tag:block:c:storage_blocks>.add(<block:iceandfire:dragonsteel_ice_block>);
<tag:block:c:dragonsteel_blocks>.add(<block:iceandfire:dragonsteel_ice_block>);
<tag:block:c:dragonsteel_ice_blocks>.add(<block:iceandfire:dragonsteel_ice_block>);
<tag:item:c:dragonsteel_blocks>.add(<item:iceandfire:dragonsteel_ice_block>);
<tag:item:c:dragonsteel_ice_blocks>.add(<item:iceandfire:dragonsteel_ice_block>);

<tag:block:c:storage_blocks>.add(<block:iceandfire:dragonsteel_lightning_block>);
<tag:block:c:dragonsteel_blocks>.add(<block:iceandfire:dragonsteel_lightning_block>);
<tag:block:c:dragonsteel_lightning_blocks>.add(<block:iceandfire:dragonsteel_lightning_block>);
<tag:item:c:dragonsteel_blocks>.add(<item:iceandfire:dragonsteel_lightning_block>);
<tag:item:c:dragonsteel_lightning_blocks>.add(<item:iceandfire:dragonsteel_lightning_block>);
#endif
#onlyif modloaded megacells
<tag:item:c:ingots>.add(<item:megacells:sky_steel_ingot>);
#endif
#onlyif modloaded botania
<tag:item:c:ingots>.add(<item:botania:gaia_ingot>);
<tag:item:c:gaia_ingots>.add(<item:botania:gaia_ingot>);

<tag:item:c:gems>.add(<item:botania:quartz_mana>);
<tag:item:c:mana_quartz_gems>.add(<item:botania:quartz_mana>);
#endif
#onlyif modloaded alexscaves
<tag:item:c:ingots>.add(<item:alexscaves:scarlet_neodymium_ingot>);
<tag:item:c:neodymium_ingots>.add(<item:alexscaves:scarlet_neodymium_ingot>);
<tag:item:c:scarlet_neodymium_ingots>.add(<item:alexscaves:scarlet_neodymium_ingot>);
<tag:item:c:ingots>.add(<item:alexscaves:azure_neodymium_ingot>);
<tag:item:c:neodymium_ingots>.add(<item:alexscaves:azure_neodymium_ingot>);
<tag:item:c:azure_neodymium_ingots>.add(<item:alexscaves:azure_neodymium_ingot>);

<tag:block:c:storage_blocks>.add(<block:alexscaves:block_of_scarlet_neodymium>);
<tag:block:c:scarlet_neodymium_blocks>.add(<block:alexscaves:block_of_scarlet_neodymium>);
<tag:item:c:scarlet_neodymium_blocks>.add(<item:alexscaves:block_of_scarlet_neodymium>);

<tag:block:c:storage_blocks>.add(<block:alexscaves:block_of_azure_neodymium>);
<tag:block:c:azure_neodymium_blocks>.add(<block:alexscaves:block_of_azure_neodymium>);
<tag:item:c:azure_neodymium_blocks>.add(<item:alexscaves:block_of_azure_neodymium>);
#endif
#onlyif modloaded grimoireofgaia
<tag:item:c:pearl_raw_materials>.add(<item:grimoireofgaia:shiny_pearl>);

<tag:block:c:storage_blocks>.add(<block:grimoireofgaia:pearl_block>);
<tag:block:c:pearl_blocks>.add(<block:grimoireofgaia:pearl_block>);
<tag:item:c:pearl_blocks>.add(<item:grimoireofgaia:pearl_block>);
#endif
#onlyif modloaded hammerlib
<tag:item:c:gears>.add(<item:hammerlib:gears/wooden>);
<tag:item:c:gears>.add(<item:hammerlib:gears/stone>);
#endif
#onlyif modloaded ae2
<tag:item:c:tools/knifes>.add(<tag:item:ae2:knife>);
#endif
#onlyif modloaded ae2 ae2_tools
<tag:item:c:tools/knifes>.add(<item:ae2_tools:certus_quartz_knife>);
<tag:item:c:tools/knifes>.add(<item:ae2_tools:fluix_knife>);
#endif
#onlyif modloaded tools_complement
<tag:item:c:tools/knifes>.add(<item:tools_complement:iron_knife>);
<tag:item:c:tools/knifes>.add(<item:tools_complement:gold_knife>);
<tag:item:c:tools/knifes>.add(<item:tools_complement:diamond_knife>);
<tag:item:c:tools/knifes>.add(<item:tools_complement:netherite_knife>);
<tag:item:c:tools/knifes>.add(<item:tools_complement:copper_knife>);
<tag:item:c:tools/knifes>.add(<item:tools_complement:tin_knife>);
<tag:item:c:tools/knifes>.add(<item:tools_complement:lead_knife>);
<tag:item:c:tools/knifes>.add(<item:tools_complement:silver_knife>);
<tag:item:c:tools/knifes>.add(<item:tools_complement:nickel_knife>);
<tag:item:c:tools/knifes>.add(<item:tools_complement:bronze_knife>);
<tag:item:c:tools/knifes>.add(<item:tools_complement:electrum_knife>);
<tag:item:c:tools/knifes>.add(<item:tools_complement:invar_knife>);
<tag:item:c:tools/knifes>.add(<item:tools_complement:constantan_knife>);
#endif
#onlyif modloaded alexsmobs
<tag:item:c:raw_fishes>.add(<item:alexsmobs:raw_catfish>);
<tag:item:c:foods/raw_fishes>.add(<item:alexsmobs:raw_catfish>);
<tag:item:c:foods/fish/raw>.add(<item:alexsmobs:raw_catfish>);
<tag:item:c:foods/meat>.add(<item:alexsmobs:kangaroo_meat>);
<tag:item:c:foods/meat/raw>.add(<item:alexsmobs:kangaroo_meat>);
<tag:item:c:foods/meat>.add(<item:alexsmobs:moose_ribs>);
<tag:item:c:foods/meat/raw>.add(<item:alexsmobs:moose_ribs>);
#endif
<tag:block:c:glowstone_blocks>.add(<block:minecraft:glowstone>);
<tag:item:c:glowstone_blocks>.add(<item:minecraft:glowstone>);
#onlyif modloaded chipped
<tag:block:c:glowstone_blocks>.add(<tag:block:chipped:glowstone>);
<tag:item:c:glowstone_blocks>.add(<tag:item:chipped:glowstone>);
#endif
#onlyif modloaded foodtxf
<tag:item:c:milks>.add(<item:foodtxf:glass_of_milk>);
#endif

#endif

// Farmers Delight Item Tags
#onlyif modloaded farmersdelight
<tag:item:farmersdelight:offhand_equipment>.add(<item:minecraft:torch>);
#onlyif modloaded alexsmobs
<tag:item:farmersdelight:cabbage_roll_ingredients>.add(<item:alexsmobs:raw_catfish>);
#endif
#onlyif modloaded tconstruct
<tag:item:farmersdelight:offhand_equipment>.add(<item:tconstruct:travelers_shield>);
<tag:item:farmersdelight:offhand_equipment>.add(<item:tconstruct:plate_shield>);
#endif
#onlyif modloaded storagedrawers
<tag:item:farmersdelight:offhand_equipment>.add(<item:storagedrawers:drawer_key>);
#endif
#endif

// Farmers Delight Block Tags
#onlyif modloaded farmersdelight

#onlyif modloader forge
if (<tag:block:forge:storage_blocks/uranium>.exists() && <tag:block:forge:storage_blocks/uranium>.elements.length>0) {
    <tag:block:farmersdelight:heat_sources>.add(<tag:block:forge:storage_blocks/uranium>);
}
<tag:block:farmersdelight:compost_activators>.add(<tag:block:forge:mushrooms>);
<tag:block:farmersdelight:heat_conductors>.add(<tag:block:forge:storage_blocks/copper>);
<tag:block:farmersdelight:heat_conductors>.add(<tag:block:forge:storage_blocks/gold>);
#endif
#onlyif modloader fabric
if (<tag:block:c:uranium_blocks>.exists() && <tag:block:c:uranium_blocks>.elements.length>0) {
    <tag:block:farmersdelight:heat_sources>.add(<tag:block:c:uranium_blocks>);
}
<tag:block:farmersdelight:compost_activators>.add(<tag:item:c:mushrooms>);
<tag:block:farmersdelight:heat_conductors>.add(<tag:block:c:copper_blocks>);
<tag:block:farmersdelight:heat_conductors>.add(<tag:block:c:gold_blocks>);
#endif
#onlyif modloaded alexscaves
<tag:block:farmersdelight:heat_sources>.add(<block:alexscaves:primal_magma>);
<tag:block:farmersdelight:heat_sources>.add(<block:alexscaves:volcanic_core>);
#endif
#onlyif modloaded burnt
<tag:block:farmersdelight:heat_sources>.add(<block:burnt:liquid_magma>);
<tag:block:farmersdelight:tray_heat_sources>.add(<block:burnt:liquid_magma>);
#endif
#onlyif modloaded tconstruct
<tag:block:farmersdelight:heat_sources>.add(<block:tconstruct:magma_fluid>);
<tag:block:farmersdelight:tray_heat_sources>.add(<block:tconstruct:magma_fluid>);
<tag:block:farmersdelight:heat_sources>.add(<block:tconstruct:blazing_blood_fluid>);
<tag:block:farmersdelight:tray_heat_sources>.add(<block:tconstruct:blazing_blood_fluid>);
#endif
#onlyif modloaded scguns
<tag:block:farmersdelight:heat_sources>.add(<block:scguns:sulfur_vent>);
<tag:block:farmersdelight:heat_sources>.add(<block:scguns:geothermal_vent>);
#endif
#onlyif modloaded twilightforest
<tag:block:farmersdelight:heat_sources>.add(<block:twilightforest:smoker>);
<tag:block:farmersdelight:heat_sources>.add(<block:twilightforest:fire_jet>);
#endif
#onlyif modloaded botania
<tag:block:farmersdelight:heat_sources>.add(<block:botania:exoflame>);
<tag:block:farmersdelight:tray_heat_sources>.add(<block:botania:exoflame>);
<tag:block:farmersdelight:heat_sources>.add(<block:botania:floating_exoflame>);
<tag:block:farmersdelight:tray_heat_sources>.add(<block:botania:floating_exoflame>);
#endif
#onlyif modloaded tconstruct
<tag:item:farmersdelight:straw_harvesters>.add(<item:tconstruct:scythe>);
#endif

#endif

// Create Tags
#onlyif modloaded create

// Upright Items
#onlyif modloaded alexscaves
<tag:item:create:upright_on_belt>.add(<item:alexscaves:hot_chocolate_bottle>);
<tag:item:create:upright_on_belt>.add(<item:alexscaves:purple_soda_bottle>);
<tag:item:create:upright_on_belt>.add(<item:alexscaves:radon_bottle>);
#endif
#onlyif modloaded alexsmobs
<tag:item:create:upright_on_belt>.add(<item:alexsmobs:lava_bottle>);
<tag:item:create:upright_on_belt>.add(<item:alexsmobs:komodo_spit_bottle>);
<tag:item:create:upright_on_belt>.add(<item:alexsmobs:stink_bottle>);
#endif
#onlyif modloaded botania
<tag:item:create:upright_on_belt>.add(<item:botania:ender_air_bottle>);
<tag:item:create:upright_on_belt>.add(<item:botania:slime_bottle>);
<tag:item:create:upright_on_belt>.add(<item:botania:mana_bottle>);
#endif
#onlyif modloaded quark
<tag:item:create:upright_on_belt>.add(<item:quark:bottled_cloud>);
#endif
#onlyif modloaded relic
<tag:item:create:upright_on_belt>.add(<item:relic:relic_experience_bottle>);
#endif
#onlyif modloaded thermal thermal_expansion
<tag:item:create:upright_on_belt>.add(<item:thermal:syrup_bottle>);
#endif
#onlyif modloaded tconstruct
<tag:item:create:upright_on_belt>.add(<item:tconstruct:splash_bottle>);
<tag:item:create:upright_on_belt>.add(<item:tconstruct:lingering_bottle>);
<tag:item:create:upright_on_belt>.add(<item:tconstruct:earth_slime_bottle>);
<tag:item:create:upright_on_belt>.add(<item:tconstruct:sky_slime_bottle>);
<tag:item:create:upright_on_belt>.add(<item:tconstruct:ichor_slime_bottle>);
<tag:item:create:upright_on_belt>.add(<item:tconstruct:ender_slime_bottle>);
<tag:item:create:upright_on_belt>.add(<item:tconstruct:magma_bottle>);
<tag:item:create:upright_on_belt>.add(<item:tconstruct:venom_bottle>);
#endif
#onlyif modloaded tfmg
<tag:item:create:upright_on_belt>.add(<item:tfmg:bottle_of_concrete>);
#endif
#onlyif modloaded supplementaries
<tag:item:create:upright_on_belt>.add(<item:supplementaries:lumisene_bottle>);
#endif
#onlyif modloaded foodtxf
<tag:item:create:upright_on_belt>.add(<item:foodtxf:thermos>);
<tag:item:create:upright_on_belt>.add(<item:foodtxf:water_thermos>);
<tag:item:create:upright_on_belt>.add(<item:foodtxf:lava_thermos>);
<tag:item:create:upright_on_belt>.add(<item:foodtxf:milk_thermos>);
<tag:item:create:upright_on_belt>.add(<item:foodtxf:chocomilk_thermos>);

<tag:item:create:upright_on_belt>.add(<item:foodtxf:glass>);
<tag:item:create:upright_on_belt>.add(<item:foodtxf:glass_of_fruit_juice>);
<tag:item:create:upright_on_belt>.add(<item:foodtxf:glass_of_vegetable_juice>);
<tag:item:create:upright_on_belt>.add(<item:foodtxf:glass_of_mixed_juice>);
<tag:item:create:upright_on_belt>.add(<item:foodtxf:glass_of_water>);
<tag:item:create:upright_on_belt>.add(<item:foodtxf:glass_of_water_and_bread>);
<tag:item:create:upright_on_belt>.add(<item:foodtxf:glass_of_lava>);
<tag:item:create:upright_on_belt>.add(<item:foodtxf:glass_of_milk>);
<tag:item:create:upright_on_belt>.add(<item:foodtxf:glass_of_milk_and_cookies>);
<tag:item:create:upright_on_belt>.add(<item:foodtxf:glass_of_milk_and_toasted_bread>);
<tag:item:create:upright_on_belt>.add(<item:foodtxf:glass_of_chocomilk>);
<tag:item:create:upright_on_belt>.add(<item:foodtxf:glass_of_chocomilk_and_cookies>);
<tag:item:create:upright_on_belt>.add(<item:foodtxf:glass_of_chocomilk_and_toasted_bread>);

<tag:item:create:upright_on_belt>.add(<item:foodtxf:box>);
<tag:item:create:upright_on_belt>.add(<item:foodtxf:box_of_cereal>);
<tag:item:create:upright_on_belt>.add(<item:foodtxf:box_of_cookies>);
#endif
#onlyif modloaded amendments
<tag:item:create:upright_on_belt>.add(<item:amendments:dye_bottle>);
#endif
#onlyif modloaded brewery
<tag:item:create:upright_on_belt>.add(<item:brewery:beer_mug>);
<tag:item:create:upright_on_belt>.add(<item:brewery:beer_wheat>);
<tag:item:create:upright_on_belt>.add(<item:brewery:beer_barley>);
<tag:item:create:upright_on_belt>.add(<item:brewery:beer_hops>);
<tag:item:create:upright_on_belt>.add(<item:brewery:beer_haley>);

<tag:item:create:upright_on_belt>.add(<item:brewery:whiskey_jojannik>);
<tag:item:create:upright_on_belt>.add(<item:brewery:whiskey_lilitusinglemalt>);
<tag:item:create:upright_on_belt>.add(<item:brewery:whiskey_cristelwalker>);
<tag:item:create:upright_on_belt>.add(<item:brewery:whiskey_maggoallan>);
<tag:item:create:upright_on_belt>.add(<item:brewery:whiskey_carrasconlabel>);
#endif

// NBT-safe blocks
#onlyif modloaded supplementaries
<tag:block:create:safe_nbt>.add(<block:supplementaries:blackboard>);
<tag:block:create:safe_nbt>.add(<block:supplementaries:lock_block>);
<tag:block:create:safe_nbt>.add(<block:supplementaries:netherite_door>);
<tag:block:create:safe_nbt>.add(<block:supplementaries:netherite_trapdoor>);
#endif
#onlyif modloaded amendments
<tag:block:create:safe_nbt>.add(<block:amendments:wall_lantern>);
#endif

// Block Movability Tags
#onlyif modloaded handcrafted
<tag:block:create:movable_empty_collider>.add(<tag:block:handcrafted:crockery>);
<tag:block:create:brittle>.add(<tag:block:handcrafted:crockery>);
<tag:block:create:movable_empty_collider>.add(<tag:block:handcrafted:trophies>);
<tag:block:create:brittle>.add(<tag:block:handcrafted:trophies>);
#endif
#onlyif modloaded farmersdelight
<tag:block:create:brittle>.add(<block:farmersdelight:roast_chicken_block>);
<tag:block:create:brittle>.add(<block:farmersdelight:stuffed_pumpkin_block>);
<tag:block:create:brittle>.add(<block:farmersdelight:honey_glazed_ham_block>);
<tag:block:create:brittle>.add(<block:farmersdelight:shepherds_pie_block>);
<tag:block:create:brittle>.add(<block:farmersdelight:rice_roll_medley_block>);
#endif

// Fan Transparent Blocks
#onlyif modloaded chipped
<tag:block:create:fan_transparent>.add(<tag:block:chipped:iron_bars>);
#endif

// Passive Boiler Heaters
#onlyif modloaded chipped
<tag:block:create:passive_boiler_heaters>.add(<tag:block:chipped:magma_block>);
#endif

// Wrench-pick-up-able Blocks
#onlyif modloaded supplementaries
<tag:block:create:wrench_pickup>.add(<block:supplementaries:relayer>);
<tag:block:create:wrench_pickup>.add(<block:supplementaries:cog_block>);
<tag:block:create:wrench_pickup>.add(<block:supplementaries:speaker_block>);
<tag:block:create:wrench_pickup>.add(<block:supplementaries:wind_vane>);
<tag:block:create:wrench_pickup>.add(<block:supplementaries:crystal_display>);
<tag:block:create:wrench_pickup>.add(<block:supplementaries:turn_table>);
<tag:block:create:wrench_pickup>.add(<block:supplementaries:spring_launcher>);
<tag:block:create:wrench_pickup>.add(<block:supplementaries:clock_block>);
<tag:block:create:wrench_pickup>.add(<block:supplementaries:pulley_block>);
<tag:block:create:wrench_pickup>.add(<block:supplementaries:bellows>);
<tag:block:create:wrench_pickup>.add(<block:supplementaries:redstone_illuminator>);
<tag:block:create:wrench_pickup>.add(<block:supplementaries:crank>);
<tag:block:create:wrench_pickup>.add(<block:supplementaries:sconce_lever>);
<tag:block:create:wrench_pickup>.add(<block:supplementaries:hourglass>);
#endif

#endif

// Supplementaries Tags
#onlyif modloaded supplementaries

// Bellows-Tickable
#onlyif modloaded handcrafted
<tag:block:supplementaries:bellows_tickable>.add(<block:handcrafted:oven>);
#endif
#onlyif modloaded farmersdelight
<tag:block:supplementaries:bellows_tickable>.add(<block:farmersdelight:stove>);
#endif

#endif