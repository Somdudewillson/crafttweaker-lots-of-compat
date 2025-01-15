#modloaded ars_nouveau tconstruct


recipes.addJsonRecipe("swiftstrike_modifier_from_source_gem", {
  "type": "tconstruct:incremental_modifier",
  "allow_crystal": true,
  "amount_per_item": 9,
  "input": {
    "item": "ars_nouveau:source_gem"
  },
  "level": {
    "max": 5
  },
  "needed_per_level": 72,
  "result": "tconstruct:swiftstrike",
  "slots": {
    "upgrades": 1
  },
  "tools": {
    "tag": "tconstruct:modifiable/melee/weapon"
  }
});
recipes.addJsonRecipe("swiftstrike_modifier_from_source_gem_block", {
  "type": "tconstruct:incremental_modifier",
  "allow_crystal": false,
  "amount_per_item": 36,
  "input": {
    "item": "ars_nouveau:source_gem_block"
  },
  "leftover": "ars_nouveau:source_gem",
  "level": {
    "max": 5
  },
  "needed_per_level": 72,
  "result": "tconstruct:swiftstrike",
  "slots": {
    "upgrades": 1
  },
  "tools": {
    "tag": "tconstruct:modifiable/melee/weapon"
  }
});