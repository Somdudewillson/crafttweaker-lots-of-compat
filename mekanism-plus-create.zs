#modloaded create mekanism

var dirtyDusts = <tag:items:mekanism:dirty_dusts>.elements;
for dirtyDust in dirtyDusts {

    var cleanDustName = "mekanism:"+(dirtyDust.registryName as string)[ start .. end ];
    <recipetype:create:splashing>.addJsonRecipe(newRecipeName, {
        "type": "create:splashing",
        "ingredients": [
            {
            "item": dirtyDust.registryName
            }
        ],
        "results": [
            {
                "item": cleanDustName
            }
        ]
    });
}