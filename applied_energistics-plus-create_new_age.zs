#modloaded ae2 create_new_age

<recipetype:ae2:charger>.addJsonRecipe("ae2_charge_iron_ingot", {
  "type": "ae2:charger",
  "ingredient": {
    "tag": "forge:ingots/iron"
  },
  "result": {
    "item": "create_new_age:overcharged_iron"
  }
});
<recipetype:ae2:charger>.addJsonRecipe("ae2_charge_iron_sheet", {
  "type": "ae2:charger",
  "ingredient": {
    "item": "forge:plates/iron"
  },
  "result": {
    "item": "create_new_age:overcharged_iron_sheet"
  }
});
<recipetype:ae2:charger>.addJsonRecipe("ae2_charge_gold_ingot", {
  "type": "ae2:charger",
  "ingredient": {
    "tag": "forge:ingots/gold"
  },
  "result": {
    "item": "create_new_age:overcharged_gold"
  }
});
<recipetype:ae2:charger>.addJsonRecipe("ae2_charge_gold_sheet", {
  "type": "ae2:charger",
  "ingredient": {
    "item": "forge:plates/gold"
  },
  "result": {
    "item": "create_new_age:overcharged_gold_sheet"
  }
});