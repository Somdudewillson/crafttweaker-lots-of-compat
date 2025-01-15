#modloaded ars_nouveau bloodmagic

var MIN_MASTER_BLOOD_ORB = <tag:items:lots_of_compat:at_least_master_blood_orb>;
var MIN_MAGICIAN_BLOOD_ORB = <tag:items:lots_of_compat:at_least_magician_blood_orb>;
var MIN_APPRENTICE_BLOOD_ORB = <tag:items:lots_of_compat:at_least_apprentice_blood_orb>;
var ANY_BLOOD_ORB = <tag:items:lots_of_compat:any_blood_orb>;

// Blood Magic Sigils from Ars Nouveau Elemental Essences
<recipetype:bloodmagic:array>.addJsonRecipe("water_sigil_from_water_essence", {
  "type": "bloodmagic:array",
  "addedinput": {
    "item": "bloodmagic:blankslate"
  },
  "baseinput": {
    "item": "ars_nouveau:water_essence"
  },
  "output": {
    "item": "bloodmagic:watersigil"
  },
  "texture": "bloodmagic:textures/models/alchemyarrays/watersigil.png"
});
<recipetype:bloodmagic:array>.addJsonRecipe("air_sigil_from_air_essence", {
  "type": "bloodmagic:array",
  "addedinput": {
    "item": "bloodmagic:blankslate"
  },
  "baseinput": {
    "item": "ars_nouveau:air_essence"
  },
  "output": {
    "item": "bloodmagic:airsigil"
  },
  "texture": "bloodmagic:textures/models/alchemyarrays/airsigil.png"
});
<recipetype:ars_nouveau:imbuement>.addJsonRecipe("lava_sigil_from_fire_earth_essence", {
  "type": "ars_nouveau:imbuement",
  "count": 1,
  "input": {
    "item": "bloodmagic:blankslate"
  },
  "output": "bloodmagic:lavasigil",
  "pedestalItems": [
    {
      "item": {
        "item": "ars_nouveau:fire_essence"
      }
    },
    {
      "item": {
        "item": "ars_nouveau:earth_essence"
      }
    }
  ],
  "source": 0
});

// Blood Magic Inscription Tools from Ars Nouveau Elemental Essences
<recipetype:bloodmagic:altar>.addJsonRecipe("air_inscriber_from_air_essence", {
  "type": "bloodmagic:altar",
  "altarSyphon": 1000,
  "consumptionRate": 5,
  "drainRate": 5,
  "input": {
    "item": "ars_nouveau:air_essence"
  },
  "output": {
    "item": "bloodmagic:airscribetool",
    "nbt": "{Damage:0}"
  },
  "upgradeLevel": 1
});
<recipetype:bloodmagic:altar>.addJsonRecipe("earth_inscriber_from_earth_essence", {
  "type": "bloodmagic:altar",
  "altarSyphon": 1000,
  "consumptionRate": 5,
  "drainRate": 5,
  "input": {
    "item": "ars_nouveau:earth_essence"
  },
  "output": {
    "item": "bloodmagic:earthscribetool",
    "nbt": "{Damage:0}"
  },
  "upgradeLevel": 1
});
<recipetype:bloodmagic:altar>.addJsonRecipe("fire_inscriber_from_fire_essence", {
  "type": "bloodmagic:altar",
  "altarSyphon": 1000,
  "consumptionRate": 5,
  "drainRate": 5,
  "input": {
    "item": "ars_nouveau:fire_essence"
  },
  "output": {
    "item": "bloodmagic:firescribetool",
    "nbt": "{Damage:0}"
  },
  "upgradeLevel": 1
});
<recipetype:bloodmagic:altar>.addJsonRecipe("water_inscriber_from_water_essence", {
  "type": "bloodmagic:altar",
  "altarSyphon": 1000,
  "consumptionRate": 5,
  "drainRate": 5,
  "input": {
    "item": "ars_nouveau:water_essence"
  },
  "output": {
    "item": "bloodmagic:waterscribetool",
    "nbt": "{Damage:0}"
  },
  "upgradeLevel": 1
});

// Alternate Blood Magic Blood Orb Recipes
<recipetype:bloodmagic:altar>.addJsonRecipe("apprentice_blood_orb_from_source_gem", {
  "type": "bloodmagic:altar",
  "altarSyphon": 5000,
  "consumptionRate": 5,
  "drainRate": 5,
  "input": {
    "tag": "forge:storage_blocks/source"
  },
  "output": {
    "item": "bloodmagic:apprenticebloodorb"
  },
  "upgradeLevel": 0
});
#onlyif modloaded ars_trinkets
<recipetype:bloodmagic:altar>.addJsonRecipe("master_blood_orb_from_mana_core", {
  "type": "bloodmagic:altar",
  "altarSyphon": 40000,
  "consumptionRate": 5,
  "drainRate": 5,
  "input": {
    "item": "ars_trinkets:mana_core_1"
  },
  "output": {
    "item": "bloodmagic:masterbloodorb"
  },
  "upgradeLevel": 2
});
#endif

// Glyph Imbuement Sigil Recipes
<recipetype:ars_nouveau:imbuement>.addJsonRecipe("magnetism_sigil_from_item_pickup_glyph", {
  "type": "ars_nouveau:imbuement",
  "count": 1,
  "input": {
    "item": "bloodmagic:reinforcedslate"
  },
  "output": "bloodmagic:sigilofmagnetism",
  "pedestalItems": [
    {
      "item": {
        "item": "ars_nouveau:glyph_pickup"
      }
    }
  ],
  "source": 100
});
<recipetype:ars_nouveau:imbuement>.addJsonRecipe("blood_lamp_sigil_from_magelight_glyph", {
  "type": "ars_nouveau:imbuement",
  "count": 1,
  "input": {
    "item": "bloodmagic:reinforcedslate"
  },
  "output": "bloodmagic:bloodlightsigil",
  "pedestalItems": [
    {
      "item": {
        "item": "ars_nouveau:glyph_light"
      }
    }
  ],
  "source": 100
});
<recipetype:ars_nouveau:imbuement>.addJsonRecipe("teleposition_sigil_from_blink_glyph", {
  "type": "ars_nouveau:imbuement",
  "count": 1,
  "input": {
    "item": "bloodmagic:infusedslate"
  },
  "output": "bloodmagic:telepositionsigil",
  "pedestalItems": [
    {
      "item": {
        "item": "ars_nouveau:glyph_blink"
      }
    }
  ],
  "source": 100
});
<recipetype:ars_nouveau:imbuement>.addJsonRecipe("growth_sigil_from_grow_glyph", {
  "type": "ars_nouveau:imbuement",
  "count": 1,
  "input": {
    "item": "bloodmagic:blankslate"
  },
  "output": "bloodmagic:growthsigil",
  "pedestalItems": [
    {
      "item": {
        "item": "ars_nouveau:glyph_grow"
      }
    }
  ],
  "source": 100
});
<recipetype:ars_nouveau:imbuement>.addJsonRecipe("suppression_sigil_from_evaporate_glyph", {
  "type": "ars_nouveau:imbuement",
  "count": 1,
  "input": {
    "item": "bloodmagic:infusedslate"
  },
  "output": "bloodmagic:sigilofsuppression",
  "pedestalItems": [
    {
      "item": {
        "item": "ars_nouveau:glyph_evaporate"
      }
    }
  ],
  "source": 100
});

// Uncategorized Assorted Recipes
craftingTable.addShaped("sourcestone_to_blank_blood_rune", <item:bloodmagic:blankrune>, [
    [<item:ars_nouveau:sourcestone>, <item:ars_nouveau:sourcestone>, <item:ars_nouveau:sourcestone>],
    [<item:ars_nouveau:sourcestone>, ANY_BLOOD_ORB, <item:ars_nouveau:sourcestone>],
    [<item:ars_nouveau:sourcestone>, <item:ars_nouveau:sourcestone>, <item:ars_nouveau:sourcestone>],
]);
<recipetype:bloodmagic:altar>.addJsonRecipe("reinforced_slate_from_sourcestone", {
  "type": "bloodmagic:altar",
  "altarSyphon": 2000,
  "consumptionRate": 5,
  "drainRate": 5,
  "input": {
    "item": "ars_nouveau:sourcestone"
  },
  "output": {
    "item": "bloodmagic:reinforcedslate"
  },
  "upgradeLevel": 1
});
<recipetype:ars_nouveau:enchanting_apparatus>.addJsonRecipe("rune_of_sacrifice_ars_nouveau", {
  "type": "ars_nouveau:enchanting_apparatus",
  "keepNbtOfReagent": false,
  "output": {
    "count": 1,
    "item": "bloodmagic:sacrificerune"
  },
  "pedestalItems": [
    {
      "item": "ars_nouveau:abjuration_essence"
    },
    {
      "item": "ars_nouveau:abjuration_essence"
    },
    {
      "item": "ars_nouveau:mendosteen_pod"
    },
  ],
  "reagent": [
    {
      "item": "bloodmagic:blankrune"
    }
  ],
  "sourceCost": 0
});