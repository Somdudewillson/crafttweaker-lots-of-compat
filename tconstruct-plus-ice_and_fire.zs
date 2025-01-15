#modloaded tconstruct iceandfire


recipes.addJsonRecipe("revitalizing_armor_modifier_from_dragon_heart", {
  "type": "tconstruct:incremental_modifier",
  "allow_crystal": true,
  "amount_per_item": 1,
  "input": {
    "tag": "iceandfire:dragon_hearts"
  },
  "needed_per_level": 2,
  "result": "tconstruct:revitalizing",
  "slots": {
    "defense": 1
  },
  "tools": {
    "tag": "tconstruct:modifiable/armor/worn"
  }
});
recipes.addJsonRecipe("revitalizing_armor_modifier_from_hydra_heart", {
  "type": "tconstruct:incremental_modifier",
  "allow_crystal": true,
  "amount_per_item": 2,
  "input": {
    "item": "iceandfire:hydra_heart"
  },
  "needed_per_level": 2,
  "result": "tconstruct:revitalizing",
  "slots": {
    "defense": 1
  },
  "tools": {
    "tag": "tconstruct:modifiable/armor/worn"
  }
});