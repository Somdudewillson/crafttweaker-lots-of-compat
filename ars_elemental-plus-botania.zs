#modloaded ars_nouveau ars_elemental botania

import crafttweaker.api.mod.Mods;

// Ars Enchanting Recipes for Botania Rods (using glyphs)
<recipetype:ars_nouveau:enchanting_apparatus>.addJsonRecipe("rod_of_the_lands_ars_nouveau_glyph", {
  "type": "ars_nouveau:enchanting_apparatus",
  "keepNbtOfReagent": false,
  "output": {
    "count": 1,
    "item": "botania:dirt_rod"
  },
  "pedestalItems": [
    {
      "item": "ars_elemental:glyph_conjure_terrain"
    },
    {
      "item": "minecraft:dirt"
    },
  ],
  "reagent": [
    {
      "item": "botania:livingwood_twig"
    }
  ],
  "sourceCost": 0
});
<recipetype:ars_nouveau:enchanting_apparatus>.addJsonRecipe("rod_of_the_highlands_ars_nouveau_glyph", {
  "type": "ars_nouveau:enchanting_apparatus",
  "keepNbtOfReagent": false,
  "output": {
    "count": 1,
    "item": "botania:skydirt_rod"
  },
  "pedestalItems": [
    {
      "item": "ars_elemental:glyph_conjure_terrain"
    },
    {
      "item": "ars_nouveau:air_essence"
    }
  ],
  "reagent": [
    {
      "item": "botania:livingwood_twig"
    }
  ],
  "sourceCost": 0
});
<recipetype:ars_nouveau:enchanting_apparatus>.addJsonRecipe("rod_of_the_depths_ars_nouveau_glyph", {
  "type": "ars_nouveau:enchanting_apparatus",
  "keepNbtOfReagent": false,
  "output": {
    "count": 1,
    "item": "botania:cobble_rod"
  },
  "pedestalItems": [
    {
      "item": "ars_elemental:glyph_conjure_terrain"
    },
    {
      "item": "minecraft:cobblestone"
    }
  ],
  "reagent": [
    {
      "item": "botania:livingwood_twig"
    }
  ],
  "sourceCost": 0
});
#onlyif modloaded ars_trinkets
<recipetype:ars_nouveau:enchanting_apparatus>.addJsonRecipe("rod_of_the_unstable_reservoir_ars_nouveau_glyph", {
  "type": "ars_nouveau:enchanting_apparatus",
  "keepNbtOfReagent": false,
  "output": {
    "count": 1,
    "item": "botania:missile_rod"
  },
  "pedestalItems": [
    {
      "item": "ars_elemental:glyph_homing_projectile"
    },
    {
      "item": "ars_trinkets:glyph_missile"
    },
    {
      "item": "botania:elementium_ingot"
    }
  ],
  "reagent": [
    {
      "item": "botania:dreamwood_twig"
    }
  ],
  "sourceCost": 1000
});
#endif
<recipetype:ars_nouveau:enchanting_apparatus>.addJsonRecipe("rod_of_the_unstable_reservoir_ars_nouveau_glyph", {
  "type": "ars_nouveau:enchanting_apparatus",
  "keepNbtOfReagent": false,
  "output": {
    "count": 1,
    "item": "botania:missile_rod"
  },
  "pedestalItems": [
    {
      "item": "ars_elemental:glyph_homing_projectile"
    },
    {
      "item": "botania:elementium_ingot"
    }
  ],
  "reagent": [
    {
      "item": "botania:dreamwood_twig"
    }
  ],
  "sourceCost": 1500
});