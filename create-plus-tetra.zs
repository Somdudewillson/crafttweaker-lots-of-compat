#modloaded create tetra

import crafttweaker.api.data.IData;

<recipetype:create:sequenced_assembly>.addJsonRecipe("refine_lapis_to_pristine", {
    "type": "create:sequenced_assembly",
    "ingredient": <item:minecraft:lapis_block> as IData,
    "transitionalItem": <item:minecraft:lapis_block> as IData,
    "sequence": [
        {
            "type": "create:filling",
            "ingredients": [
                <item:minecraft:lapis_block> as IData,
                (<fluid:minecraft:lava> * 10) as IData
            ],
            "results": [
                <item:minecraft:lapis_block> as IData
            ]
        },
        {
            "type": "create:pressing",
            "ingredients": [
                <item:minecraft:lapis_block> as IData
            ],
            "results": [
                <item:minecraft:lapis_block> as IData
            ]
        },
        {
            "type": "create:filling",
            "ingredients": [
                <item:minecraft:lapis_block> as IData,
                (<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(100)) as IData
            ],
            "results": [
                <item:minecraft:lapis_block> as IData
            ]
        }
    ],
    "results": [
        {
        "chance": 10.0,
            "id": "tetra:pristine_lapis"
        },
        (<item:minecraft:lapis_lazuli> * 8) as IData,
        (<item:minecraft:lapis_lazuli> * 7) as IData,
        (<item:minecraft:lapis_lazuli> * 6) as IData,
        (<item:minecraft:lapis_lazuli> * 5) as IData,
        (<item:minecraft:lapis_lazuli> * 4) as IData,
        (<item:minecraft:lapis_lazuli> * 3) as IData,
        (<item:minecraft:lapis_lazuli> * 2) as IData,
        <item:minecraft:lapis_lazuli> as IData,
        {
        "chance": 2.0,
            "id": "minecraft:air"
        }
    ],
    "loops": 1
});

<recipetype:create:sequenced_assembly>.addJsonRecipe("refine_emerald_to_pristine", {
    "type": "create:sequenced_assembly",
    "ingredient": <item:minecraft:emerald_block> as IData,
    "transitionalItem": <item:minecraft:emerald_block> as IData,
    "sequence": [
        {
            "type": "create:filling",
            "ingredients": [
                <item:minecraft:emerald_block> as IData,
                (<fluid:minecraft:lava> * 10) as IData
            ],
            "results": [
                <item:minecraft:emerald_block> as IData
            ]
        },
        {
            "type": "create:pressing",
            "ingredients": [
                <item:minecraft:emerald_block> as IData
            ],
            "results": [
                <item:minecraft:emerald_block> as IData
            ]
        },
        {
            "type": "create:filling",
            "ingredients": [
                <item:minecraft:emerald_block> as IData,
                (<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(100)) as IData
            ],
            "results": [
                <item:minecraft:emerald_block> as IData
            ]
        }
    ],
    "results": [
        {
        "chance": 10.0,
            "id": "tetra:pristine_emerald"
        },
        (<item:minecraft:emerald> * 8) as IData,
        (<item:minecraft:emerald> * 7) as IData,
        (<item:minecraft:emerald> * 6) as IData,
        (<item:minecraft:emerald> * 5) as IData,
        (<item:minecraft:emerald> * 4) as IData,
        (<item:minecraft:emerald> * 3) as IData,
        (<item:minecraft:emerald> * 2) as IData,
        <item:minecraft:emerald> as IData,
        {
        "chance": 2.0,
            "id": "minecraft:air"
        }
    ],
    "loops": 1
});

<recipetype:create:sequenced_assembly>.addJsonRecipe("refine_diamond_to_pristine", {
    "type": "create:sequenced_assembly",
    "ingredient": <item:minecraft:diamond_block> as IData,
    "transitionalItem": <item:minecraft:diamond_block> as IData,
    "sequence": [
        {
            "type": "create:filling",
            "ingredients": [
                <item:minecraft:diamond_block> as IData,
                (<fluid:minecraft:lava> * 10) as IData
            ],
            "results": [
                <item:minecraft:diamond_block> as IData
            ]
        },
        {
            "type": "create:pressing",
            "ingredients": [
                <item:minecraft:diamond_block> as IData
            ],
            "results": [
                <item:minecraft:diamond_block> as IData
            ]
        },
        {
            "type": "create:filling",
            "ingredients": [
                <item:minecraft:diamond_block> as IData,
                (<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(100)) as IData
            ],
            "results": [
                <item:minecraft:diamond_block> as IData
            ]
        }
    ],
    "results": [
        {
        "chance": 10.0,
            "id": "tetra:pristine_diamond"
        },
        (<item:minecraft:diamond> * 8) as IData,
        (<item:minecraft:diamond> * 7) as IData,
        (<item:minecraft:diamond> * 6) as IData,
        (<item:minecraft:diamond> * 5) as IData,
        (<item:minecraft:diamond> * 4) as IData,
        (<item:minecraft:diamond> * 3) as IData,
        (<item:minecraft:diamond> * 2) as IData,
        <item:minecraft:diamond> as IData,
        {
        "chance": 2.0,
            "id": "minecraft:air"
        }
    ],
    "loops": 1
});

<recipetype:create:sequenced_assembly>.addJsonRecipe("refine_amethyst_to_pristine", {
    "type": "create:sequenced_assembly",
    "ingredient": <item:minecraft:amethyst_block> as IData,
    "transitionalItem": <item:minecraft:amethyst_block> as IData,
    "sequence": [
        {
            "type": "create:filling",
            "ingredients": [
                <item:minecraft:amethyst_block> as IData,
                (<fluid:minecraft:lava> * 10) as IData
            ],
            "results": [
                <item:minecraft:amethyst_block> as IData
            ]
        },
        {
            "type": "create:pressing",
            "ingredients": [
                <item:minecraft:amethyst_block> as IData
            ],
            "results": [
                <item:minecraft:amethyst_block> as IData
            ]
        },
        {
            "type": "create:filling",
            "ingredients": [
                <item:minecraft:amethyst_block> as IData,
                (<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(100)) as IData
            ],
            "results": [
                <item:minecraft:amethyst_block> as IData
            ]
        }
    ],
    "results": [
        {
            "chance": 4.0,
            "id": "tetra:pristine_amethyst"
        },
        {
            "chance": 2.0,
            "id": "minecraft:amethyst_shard",
            "count": 3
        },
        {
            "chance": 3.0,
            "id": "minecraft:amethyst_shard",
            "count": 2
        },
        {
            "chance": 3.0,
            "id": "minecraft:amethyst_shard"
        },
        {
            "chance": 2.0,
            "id": "minecraft:air"
        }
    ],
    "loops": 1
});