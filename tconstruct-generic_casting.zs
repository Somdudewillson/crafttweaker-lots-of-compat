#modloaded tconstruct

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;

// Rods

if (<tag:items:forge:rods/copper>.exists() && <tag:items:forge:rods/copper>.elements.length>0) {
  <recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct/smeltery/casting/metal/copper/rod_sand_cast", {
    "type": "tconstruct:casting_table",
    "cast": {
      "tag": "tconstruct:casts/single_use/rod"
    },
    "cast_consumed": true,
    "cooling_time": 25,
    "fluid": {
      "amount": 45,
      "tag": "forge:molten_copper"
    },
    "result": {
      "tag": "forge:rods/copper"
    }
  });
  <recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct/smeltery/casting/metal/copper/rod_gold_cast", {
    "type": "tconstruct:casting_table",
    "cast": {
      "tag": "tconstruct:casts/multi_use/rod"
    },
    "cast_consumed": false,
    "cooling_time": 25,
    "fluid": {
      "amount": 45,
      "tag": "forge:molten_copper"
    },
    "result": {
      "tag": "forge:rods/copper"
    }
  });
}

if (<tag:items:forge:rods/gold>.exists() && <tag:items:forge:rods/gold>.elements.length>0) {
  <recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct/smeltery/casting/metal/gold/rod_sand_cast", {
    "type": "tconstruct:casting_table",
    "cast": {
      "tag": "tconstruct:casts/single_use/rod"
    },
    "cast_consumed": true,
    "cooling_time": 29,
    "fluid": {
      "amount": 45,
      "tag": "forge:molten_gold"
    },
    "result": {
      "tag": "forge:rods/gold"
    }
  });
  <recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct/smeltery/casting/metal/gold/rod_gold_cast", {
    "type": "tconstruct:casting_table",
    "cast": {
      "tag": "tconstruct:casts/multi_use/rod"
    },
    "cast_consumed": false,
    "cooling_time": 29,
    "fluid": {
      "amount": 45,
      "tag": "forge:molten_gold"
    },
    "result": {
      "tag": "forge:rods/gold"
    }
  });
}

if (<tag:items:forge:rods/electrum>.exists() && <tag:items:forge:rods/electrum>.elements.length>0) {
  <recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct/smeltery/casting/metal/electrum/rod_sand_cast", {
    "type": "tconstruct:casting_table",
    "cast": {
      "tag": "tconstruct:casts/single_use/rod"
    },
    "cast_consumed": true,
    "cooling_time": 30,
    "fluid": {
      "amount": 45,
      "tag": "forge:molten_electrum"
    },
    "result": {
      "tag": "forge:rods/electrum"
    }
  });
  <recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct/smeltery/casting/metal/electrum/rod_gold_cast", {
    "type": "tconstruct:casting_table",
    "cast": {
      "tag": "tconstruct:casts/multi_use/rod"
    },
    "cast_consumed": false,
    "cooling_time": 30,
    "fluid": {
      "amount": 45,
      "tag": "forge:molten_electrum"
    },
    "result": {
      "tag": "forge:rods/electrum"
    }
  });
}

if (<tag:items:forge:rods/brass>.exists() && <tag:items:forge:rods/brass>.elements.length>0) {
  <recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct/smeltery/casting/metal/brass/rod_sand_cast", {
    "type": "tconstruct:casting_table",
    "cast": {
      "tag": "tconstruct:casts/single_use/rod"
    },
    "cast_consumed": true,
    "cooling_time": 27,
    "fluid": {
      "amount": 45,
      "tag": "forge:molten_brass"
    },
    "result": {
      "tag": "forge:rods/brass"
    }
  });
  <recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct/smeltery/casting/metal/brass/rod_gold_cast", {
    "type": "tconstruct:casting_table",
    "cast": {
      "tag": "tconstruct:casts/multi_use/rod"
    },
    "cast_consumed": false,
    "cooling_time": 27,
    "fluid": {
      "amount": 45,
      "tag": "forge:molten_brass"
    },
    "result": {
      "tag": "forge:rods/brass"
    }
  });
}

// Wires

if (<tag:items:forge:wires/iron>.exists() && <tag:items:forge:wires/iron>.elements.length>0) {
  <recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct/smeltery/casting/metal/iron/wire_sand_cast", {
    "type": "tconstruct:casting_table",
    "cast": {
      "tag": "tconstruct:casts/single_use/wire"
    },
    "cast_consumed": true,
    "cooling_time": 43,
    "fluid": {
      "amount": 45,
      "tag": "forge:molten_iron"
    },
    "result": {
      "tag": "forge:wires/iron"
    }
  });
  <recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct/smeltery/casting/metal/iron/wire_gold_cast", {
    "type": "tconstruct:casting_table",
    "cast": {
      "tag": "tconstruct:casts/multi_use/wire"
    },
    "cast_consumed": false,
    "cooling_time": 43,
    "fluid": {
      "amount": 45,
      "tag": "forge:molten_iron"
    },
    "result": {
      "tag": "forge:wires/iron"
    }
  });
}

if (<tag:items:forge:wires/gold>.exists() && <tag:items:forge:wires/gold>.elements.length>0) {
  <recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct/smeltery/casting/metal/gold/wire_sand_cast", {
    "type": "tconstruct:casting_table",
    "cast": {
      "tag": "tconstruct:casts/single_use/wire"
    },
    "cast_consumed": true,
    "cooling_time": 29,
    "fluid": {
      "amount": 45,
      "tag": "forge:molten_gold"
    },
    "result": {
      "tag": "forge:wires/gold"
    }
  });
  <recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct/smeltery/casting/metal/gold/wire_gold_cast", {
    "type": "tconstruct:casting_table",
    "cast": {
      "tag": "tconstruct:casts/multi_use/wire"
    },
    "cast_consumed": false,
    "cooling_time": 29,
    "fluid": {
      "amount": 45,
      "tag": "forge:molten_gold"
    },
    "result": {
      "tag": "forge:wires/gold"
    }
  });
}