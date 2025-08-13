#modloaded create tetra

import crafttweaker.api.data.IData;

<recipetype:create:sequenced_assembly>.addJsonRecipe("refine_lapis_to_pristine", {
    "type": "create:sequenced_assembly",
    "ingredient": <item:minecraft:lapis_block> as IData,
    "transitional_item": <item:minecraft:lapis_block> as IData,
    "sequence": [
        {
            "type": "create:filling",
            "ingredients": [
                <item:minecraft:lapis_block> as IData,
                (<fluid:minecraft:lava> * 10) as IData
            ],
            "results": [
                CreateUtils.convertItemResult(<item:minecraft:lapis_block>)
            ]
        },
        {
            "type": "create:pressing",
            "ingredients": [
                <item:minecraft:lapis_block> as IData
            ],
            "results": [
                CreateUtils.convertItemResult(<item:minecraft:lapis_block>)
            ]
        },
        {
            "type": "create:filling",
            "ingredients": [
                <item:minecraft:lapis_block> as IData,
                (<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(100)) as IData
            ],
            "results": [
                CreateUtils.convertItemResult(<item:minecraft:lapis_block>)
            ]
        }
    ],
    "results": [
        {
        "chance": 10.0,
            "id": "tetra:pristine_lapis"
        },
        CreateUtils.convertItemResult((<item:minecraft:lapis_lazuli> * 8)),
        CreateUtils.convertItemResult((<item:minecraft:lapis_lazuli> * 7)),
        CreateUtils.convertItemResult((<item:minecraft:lapis_lazuli> * 6)),
        CreateUtils.convertItemResult((<item:minecraft:lapis_lazuli> * 5)),
        CreateUtils.convertItemResult((<item:minecraft:lapis_lazuli> * 4)),
        CreateUtils.convertItemResult((<item:minecraft:lapis_lazuli> * 3)),
        CreateUtils.convertItemResult((<item:minecraft:lapis_lazuli> * 2)),
        CreateUtils.convertItemResult(<item:minecraft:lapis_lazuli>),
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
    "transitional_item": <item:minecraft:emerald_block> as IData,
    "sequence": [
        {
            "type": "create:filling",
            "ingredients": [
                <item:minecraft:emerald_block> as IData,
                (<fluid:minecraft:lava> * 10) as IData
            ],
            "results": [
                CreateUtils.convertItemResult(<item:minecraft:emerald_block>)
            ]
        },
        {
            "type": "create:pressing",
            "ingredients": [
                <item:minecraft:emerald_block> as IData
            ],
            "results": [
                CreateUtils.convertItemResult(<item:minecraft:emerald_block>)
            ]
        },
        {
            "type": "create:filling",
            "ingredients": [
                <item:minecraft:emerald_block> as IData,
                (<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(100)) as IData
            ],
            "results": [
                CreateUtils.convertItemResult(<item:minecraft:emerald_block>)
            ]
        }
    ],
    "results": [
        {
        "chance": 10.0,
            "id": "tetra:pristine_emerald"
        },
        CreateUtils.convertItemResult((<item:minecraft:emerald> * 8)),
        CreateUtils.convertItemResult((<item:minecraft:emerald> * 7)),
        CreateUtils.convertItemResult((<item:minecraft:emerald> * 6)),
        CreateUtils.convertItemResult((<item:minecraft:emerald> * 5)),
        CreateUtils.convertItemResult((<item:minecraft:emerald> * 4)),
        CreateUtils.convertItemResult((<item:minecraft:emerald> * 3)),
        CreateUtils.convertItemResult((<item:minecraft:emerald> * 2)),
        CreateUtils.convertItemResult(<item:minecraft:emerald>),
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
    "transitional_item": <item:minecraft:diamond_block> as IData,
    "sequence": [
        {
            "type": "create:filling",
            "ingredients": [
                <item:minecraft:diamond_block> as IData,
                (<fluid:minecraft:lava> * 10) as IData
            ],
            "results": [
                CreateUtils.convertItemResult(<item:minecraft:diamond_block>)
            ]
        },
        {
            "type": "create:pressing",
            "ingredients": [
                <item:minecraft:diamond_block> as IData
            ],
            "results": [
                CreateUtils.convertItemResult(<item:minecraft:diamond_block>)
            ]
        },
        {
            "type": "create:filling",
            "ingredients": [
                <item:minecraft:diamond_block> as IData,
                (<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(100)) as IData
            ],
            "results": [
                CreateUtils.convertItemResult(<item:minecraft:diamond_block>)
            ]
        }
    ],
    "results": [
        {
        "chance": 10.0,
            "id": "tetra:pristine_diamond"
        },
        CreateUtils.convertItemResult((<item:minecraft:diamond> * 8)),
        CreateUtils.convertItemResult((<item:minecraft:diamond> * 7)),
        CreateUtils.convertItemResult((<item:minecraft:diamond> * 6)),
        CreateUtils.convertItemResult((<item:minecraft:diamond> * 5)),
        CreateUtils.convertItemResult((<item:minecraft:diamond> * 4)),
        CreateUtils.convertItemResult((<item:minecraft:diamond> * 3)),
        CreateUtils.convertItemResult((<item:minecraft:diamond> * 2)),
        CreateUtils.convertItemResult(<item:minecraft:diamond>),
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
    "transitional_item": <item:minecraft:amethyst_block> as IData,
    "sequence": [
        {
            "type": "create:filling",
            "ingredients": [
                <item:minecraft:amethyst_block> as IData,
                (<fluid:minecraft:lava> * 10) as IData
            ],
            "results": [
                CreateUtils.convertItemResult(<item:minecraft:amethyst_block>)
            ]
        },
        {
            "type": "create:pressing",
            "ingredients": [
                <item:minecraft:amethyst_block> as IData
            ],
            "results": [
                CreateUtils.convertItemResult(<item:minecraft:amethyst_block>)
            ]
        },
        {
            "type": "create:filling",
            "ingredients": [
                <item:minecraft:amethyst_block> as IData,
                (<fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(100)) as IData
            ],
            "results": [
                CreateUtils.convertItemResult(<item:minecraft:amethyst_block>)
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