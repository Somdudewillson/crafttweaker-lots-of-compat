#modloaded biomesoplenty create

var ROSE_QUARTZ = <tag:items:forge:gems/rose_quartz>;
ROSE_QUARTZ.add(<item:create:rose_quartz>);
ROSE_QUARTZ.add(<item:biomesoplenty:rose_quartz_chunk>);

// stoneCutter.removeByName(["create:rose_quartz_block_from_rose_quartz_stonecutting"]);
recipes.remove(<item:create:rose_quartz_block>);
stoneCutter.addRecipe("rose_quartz_block_from_rose_quartz_stonecutting_compat", <item:create:rose_quartz_block>*2, ROSE_QUARTZ);
recipes.removeByName(["create:sandpaper_polishing/rose_quartz"]);
recipes.remove(<item:create:polished_rose_quartz>);
<recipetype:create:sandpaper_polishing>.addJsonRecipe("polish_rose_quartz_compat", {
  "type": "create:sandpaper_polishing",
  "ingredients": [
    {
      "tag": "forge:gems/rose_quartz"
    }
  ],
  "results": [
    {
      "item": "create:polished_rose_quartz"
    }
  ]
});

craftingTable.addShapeless("uncompact_bop_rose_quartz", <item:biomesoplenty:rose_quartz_chunk>*4, [<item:biomesoplenty:rose_quartz_block>]);