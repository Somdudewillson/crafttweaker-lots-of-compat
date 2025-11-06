#modloaded adchimneys

craftingTable.removeByName("adchimneys:metal_chimney");
craftingTable.addShaped("adchimneys_metal_chimney_of_iron", 
    <item:adchimneys:metal_chimney>, 
    [
        [<tag:items:c:ingots/iron>,<tag:items:c:ingots/iron>,<tag:items:c:ingots/iron>],
        [<item:minecraft:air>,<tag:items:c:ingots/iron>,<item:minecraft:air>],
        [<item:minecraft:air>,<tag:items:c:ingots/iron>,<item:minecraft:air>]
    ]);