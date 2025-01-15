#modloaded bloodmagic botania

var MIN_MASTER_BLOOD_ORB = <tag:items:lots_of_compat:at_least_master_blood_orb>;
var MIN_MAGICIAN_BLOOD_ORB = <tag:items:lots_of_compat:at_least_magician_blood_orb>;
var MIN_APPRENTICE_BLOOD_ORB = <tag:items:lots_of_compat:at_least_apprentice_blood_orb>;
var ANY_BLOOD_ORB = <tag:items:lots_of_compat:any_blood_orb>;

// Blood Magic Sigils from Botania Elemental Runes
<recipetype:bloodmagic:array>.addJsonRecipe("water_sigil_from_water_rune", {
  "type": "bloodmagic:array",
  "addedinput": {
    "item": "bloodmagic:blankslate"
  },
  "baseinput": {
    "item": "botania:rune_water"
  },
  "output": {
    "item": "bloodmagic:watersigil"
  },
  "texture": "bloodmagic:textures/models/alchemyarrays/watersigil.png"
});
<recipetype:bloodmagic:array>.addJsonRecipe("air_sigil_from_air_rune", {
  "type": "bloodmagic:array",
  "addedinput": {
    "item": "bloodmagic:blankslate"
  },
  "baseinput": {
    "item": "botania:rune_air"
  },
  "output": {
    "item": "bloodmagic:airsigil"
  },
  "texture": "bloodmagic:textures/models/alchemyarrays/airsigil.png"
});

// Blood Magic Inscription Tools from Botania Elemental Runes
<recipetype:bloodmagic:altar>.addJsonRecipe("air_inscriber_from_air_rune", {
  "type": "bloodmagic:altar",
  "altarSyphon": 1000,
  "consumptionRate": 5,
  "drainRate": 5,
  "input": {
    "item": "botania:rune_air"
  },
  "output": {
    "item": "bloodmagic:airscribetool",
    "nbt": "{Damage:0}"
  },
  "upgradeLevel": 1
});
<recipetype:bloodmagic:altar>.addJsonRecipe("earth_inscriber_from_earth_rune", {
  "type": "bloodmagic:altar",
  "altarSyphon": 1000,
  "consumptionRate": 5,
  "drainRate": 5,
  "input": {
    "item": "botania:rune_earth"
  },
  "output": {
    "item": "bloodmagic:earthscribetool",
    "nbt": "{Damage:0}"
  },
  "upgradeLevel": 1
});
<recipetype:bloodmagic:altar>.addJsonRecipe("fire_inscriber_from_fire_rune", {
  "type": "bloodmagic:altar",
  "altarSyphon": 1000,
  "consumptionRate": 5,
  "drainRate": 5,
  "input": {
    "item": "botania:rune_fire"
  },
  "output": {
    "item": "bloodmagic:firescribetool",
    "nbt": "{Damage:0}"
  },
  "upgradeLevel": 1
});
<recipetype:bloodmagic:altar>.addJsonRecipe("water_inscriber_from_water_rune", {
  "type": "bloodmagic:altar",
  "altarSyphon": 1000,
  "consumptionRate": 5,
  "drainRate": 5,
  "input": {
    "item": "botania:rune_water"
  },
  "output": {
    "item": "bloodmagic:waterscribetool",
    "nbt": "{Damage:0}"
  },
  "upgradeLevel": 1
});

// Alternate Blood Magic Blood Orb Recipes
<recipetype:bloodmagic:altar>.addJsonRecipe("magician_blood_orb_from_mana_diamond", {
  "type": "bloodmagic:altar",
  "altarSyphon": 25000,
  "consumptionRate": 5,
  "drainRate": 5,
  "input": {
    "tag": "forge:gems/mana_diamond"
  },
  "output": {
    "item": "bloodmagic:magicianbloodorb"
  },
  "upgradeLevel": 1
});
<recipetype:bloodmagic:altar>.addJsonRecipe("master_blood_orb_from_dragonstone", {
  "type": "bloodmagic:altar",
  "altarSyphon": 40000,
  "consumptionRate": 5,
  "drainRate": 5,
  "input": {
    "item": "botania:dragonstone"
  },
  "output": {
    "item": "bloodmagic:masterbloodorb"
  },
  "upgradeLevel": 2
});

// Uncategorized Assorted Recipes
craftingTable.addShaped("livingrock_to_blank_blood_rune", <item:bloodmagic:blankrune>, [
    [<item:minecraft:air>, <item:botania:livingrock>, <item:minecraft:air>],
    [<item:botania:livingrock>, ANY_BLOOD_ORB, <item:botania:livingrock>],
    [<item:minecraft:air>, <item:botania:livingrock>, <item:minecraft:air>],
]);
<recipetype:bloodmagic:altar>.addJsonRecipe("reinforced_slate_from_livingrock", {
  "type": "bloodmagic:altar",
  "altarSyphon": 2000,
  "consumptionRate": 5,
  "drainRate": 5,
  "input": {
    "item": "botania:livingrock"
  },
  "output": {
    "item": "bloodmagic:reinforcedslate"
  },
  "upgradeLevel": 1
});