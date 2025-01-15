#modloaded thermal thermal_expansion mekanism

<recipetype:thermal:pulverizer>.addJsonRecipe("thermal_pulverize_raw_osmium", {
  "type": "thermal:pulverizer",
  "ingredient": {
    "tag": "forge:raw_materials/osmium"
  },
  "result": [
    {
      "item": "mekanism:dust_osmium",
      "chance": 1.25
    },
    {
      "item": "thermal:copper_dust",
      "chance": 0.05
    }
  ],
  "experience": 0.1
});

#onlyif modloaded jaopca
<recipetype:thermal:smelter>.removeByName(["jaopca:thermal_expansion.dust_to_material.refined_obsidian"]);
#endif