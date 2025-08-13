#modloaded create spore

import crafttweaker.api.data.IData;

<recipetype:create:sequenced_assembly>.addJsonRecipe("assemble_spore_circuit_board", {
    "type": "create:sequenced_assembly",
    "ingredient": <item:spore:compound_plate> as IData,
    "transitional_item": <item:spore:compound_plate> as IData,
    "sequence": [
        {
            "type": "create:deploying",
            "ingredients": [
                <item:spore:compound_plate> as IData,
                ContextualConstants.REDSTONE_DUST as IData
            ],
            "results": [
                <item:spore:compound_plate> as IData
            ]
        },
        {
            "type": "create:deploying",
            "ingredients": [
                <item:spore:compound_plate> as IData,
                <item:minecraft:repeater> as IData
            ],
            "results": [
                <item:spore:compound_plate> as IData
            ]
        }
    ],
    "results": [
        <item:spore:circuit_board> as IData
    ],
    "loops": 3
});