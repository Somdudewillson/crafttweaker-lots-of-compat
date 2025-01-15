#modloaded thermal thermal_expansion

// Compression Fuel
if (<tag:fluids:forge:plantoil>.elements.length > 0) {
    <recipetype:thermal:compression_fuel>.addJsonRecipe("compression_plant_oil", {
        "type": "thermal:compression_fuel",
        "ingredient": {
            "fluid_tag": "forge:plantoil",
            "amount": 1000
        },
        "energy": 80000
    });
}
if (<tag:fluids:forge:ethanol>.elements.length > 0) {
    <recipetype:thermal:compression_fuel>.addJsonRecipe("compression_ethanol", {
        "type": "thermal:compression_fuel",
        "ingredient": {
            "fluid_tag": "forge:ethanol",
            "amount": 1000
        },
        "energy": 65000
    });
}
if (<tag:fluids:forge:kerosene>.elements.length > 0) {
    <recipetype:thermal:compression_fuel>.addJsonRecipe("compression_kerosene", {
        "type": "thermal:compression_fuel",
        "ingredient": {
            "fluid_tag": "forge:kerosene",
            "amount": 1000
        },
        "energy": 65000
    });
}
if (<tag:fluids:forge:naphtha>.elements.length > 0) {
    <recipetype:thermal:compression_fuel>.addJsonRecipe("compression_naphtha", {
        "type": "thermal:compression_fuel",
        "ingredient": {
            "fluid_tag": "forge:naphtha",
            "amount": 1000
        },
        "energy": 65000
    });
}
if (<tag:fluids:forge:lpg>.elements.length > 0) {
    <recipetype:thermal:compression_fuel>.addJsonRecipe("compression_lpg", {
        "type": "thermal:compression_fuel",
        "ingredient": {
            "fluid_tag": "forge:lpg",
            "amount": 1000
        },
        "energy": 65000
    });
}
if (<tag:fluids:forge:gasoline>.elements.length > 0) {
    <recipetype:thermal:compression_fuel>.addJsonRecipe("compression_gasoline", {
        "type": "thermal:compression_fuel",
        "ingredient": {
            "fluid_tag": "forge:gasoline",
            "amount": 1000
        },
        "energy": 130000
    });
}
if (<tag:fluids:forge:biodiesel>.elements.length > 0) {
    <recipetype:thermal:compression_fuel>.addJsonRecipe("compression_biodiesel", {
        "type": "thermal:compression_fuel",
        "ingredient": {
            "fluid_tag": "forge:biodiesel",
            "amount": 1000
        },
        "energy": 130000
    });
}
if (<tag:fluids:forge:diesel>.elements.length > 0) {
    <recipetype:thermal:compression_fuel>.addJsonRecipe("compression_diesel", {
        "type": "thermal:compression_fuel",
        "ingredient": {
            "fluid_tag": "forge:diesel",
            "amount": 1000
        },
        "energy": 195000
    });
}

// Lapidary Fuel
if (<tag:items:forge:gems/rose_quartz>.elements.length > 0) {
    recipes.addJsonRecipe("thermal_lapidary_fuel_rose_quartz", {
        "type": "thermal:lapidary_fuel",
        "ingredient": {
            "tag": "forge:gems/rose_quartz"
        },
        "energy": 30000 + (8*1000) as int
    });
}
if (<tag:items:forge:gems/carminite>.elements.length > 0) {
    recipes.addJsonRecipe("thermal_lapidary_fuel_carminite", {
        "type": "thermal:lapidary_fuel",
        "ingredient": {
            "tag": "forge:gems/carminite"
        },
        "energy": 125000
    });
}