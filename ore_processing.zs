
// <recipetype:thermal:pulverizer>.addJsonRecipe("thermal_pulverize_raw_osmium", {
//   "type": "thermal:pulverizer",
//   "ingredient": {
//     "tag": "forge:raw_materials/osmium"
//   },
//   "result": [
//     {
//       "item": "mekanism:dust_osmium",
//       "chance": 1.25
//     },
//     {
//       "item": "thermal:copper_dust",
//       "chance": 0.05
//     }
//   ],
//   "experience": 0.1
// });

// <recipetype:thermal:smelter>.removeByName(["jaopca:thermal_expansion.dust_to_material.refined_obsidian"]);


// recipes.removeByName([
//   "jaopca:create.default_ore_to_material.netherite_scrap",
//   "jaopca:cyclic.ore_to_material.netherite_scrap",
//   "jaopca:mekanism.ore_to_material.netherite_scrap",
//   ]);
// <recipetype:thermal:pulverizer>.removeByName(["jaopca:thermal_expansion.ore_to_material_pulverizer.netherite_scrap"]);
// <recipetype:thermal:smelter>.removeByName(["jaopca:thermal_expansion.ore_to_material_smelter.netherite_scrap"]);
// <recipetype:create:crushing>.addJsonRecipe("create_crush_ancient_debris", {
//   "type": "create:crushing",
//   "ingredients": [
//     {
//       "tag": "forge:ores/netherite_scrap"
//     }
//   ],
//   "processingTime": 750,
//   "results": [
//     {
//       "count": 2,
//       "item": "bloodmagic:sand_netherite"
//     },
//     {
//       "chance": 0.25,
//       "item": "bloodmagic:sand_netherite"
//     },
//     {
//       "chance": 0.75,
//       "count": 2,
//       "item": "create:experience_nugget"
//     },
//     {
//       "chance": 0.06,
//       "item": "minecraft:netherrack"
//     }
//   ]
// });