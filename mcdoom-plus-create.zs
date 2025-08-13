#modloaded create doom

import crafttweaker.api.data.IData;

<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_argent_bolt", {
    "type": "create:sequenced_assembly",
    "ingredient": <item:doom:argent_energy> as IData,
    "transitionalItem": <item:doom:argent_energy> as IData,
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [
                <item:doom:argent_energy> as IData,
                ContextualConstants.IRON_INGOT as IData
            ],
            "results": [
                <item:doom:argent_energy> as IData
            ]
        },
        {
            "type": "create:pressing",
            "ingredients": [
                <item:doom:argent_energy> as IData
            ],
            "results": [
                <item:doom:argent_energy> as IData
            ]
        }
    ],
    "results": [
        <item:doom:argent_bolt> as IData
    ],
    "loops": 1
});

<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_unmaykr_bolt", {
    "type": "create:sequenced_assembly",
    "ingredient": <item:doom:argent_bolt> as IData,
    "transitionalItem": <item:doom:argent_bolt> as IData,
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [
                <item:doom:argent_bolt> as IData,
                <item:doom:argent_energy> as IData
            ],
            "results": [
                <item:doom:argent_bolt> as IData
            ]
        },
        {
            "type": "create:deploying",
            "ingredients": [
                <item:doom:argent_bolt> as IData,
                <item:doom:argent_energy> as IData
            ],
            "results": [
                <item:doom:argent_bolt> as IData
            ]
        },
        {
            "type": "create:deploying",
            "ingredients": [
                <item:doom:argent_bolt> as IData,
                <item:doom:argent_energy> as IData
            ],
            "results": [
                <item:doom:argent_bolt> as IData
            ]
        },
        {
            "type": "create:pressing",
            "ingredients": [
                <item:doom:argent_bolt> as IData
            ],
            "results": [
                <item:doom:argent_bolt> as IData
            ]
        }
    ],
    "results": [
        <item:doom:unmaykr_bolt> as IData
    ],
    "loops": 1
});