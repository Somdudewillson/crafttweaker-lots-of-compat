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
                CreateUtils.convertItemResult(<item:spore:compound_plate>)
            ]
        },
        {
            "type": "create:deploying",
            "ingredients": [
                <item:spore:compound_plate> as IData,
                <item:minecraft:repeater> as IData
            ],
            "results": [
                CreateUtils.convertItemResult(<item:spore:compound_plate>)
            ]
        }
    ],
    "results": [
        CreateUtils.convertItemResult(<item:spore:circuit_board>)
    ],
    "loops": 3
});