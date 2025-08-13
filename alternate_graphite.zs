if (<tag:item:forge:ingots/graphite>.elements.length>0 && <tag:item:forge:coal_coke>.elements.length>0) {
    furnace.addRecipe("furnace_coke_to_graphite", (<tag:item:forge:ingots/graphite>.elements[0].getDefaultInstance()) * 3, <tag:item:forge:coal_coke>, 0.1, 200);
    blastFurnace.addRecipe("blasting_coke_to_graphite", (<tag:item:forge:ingots/graphite>.elements[0].getDefaultInstance()) * 3, <tag:item:forge:coal_coke>, 0.1, 100);
}
if (<tag:item:forge:dusts/graphite>.elements.length>0 && <tag:item:forge:dusts/salt>.elements.length>0 && <tag:item:forge:dusts/wood>.elements.length>0) {
    var graphite_dust = <tag:item:forge:dusts/graphite>.elements[0].getDefaultInstance();
    craftingTable.addShapeless("patent_568323_graphite_mix", graphite_dust * 2, [
        <tag:item:minecraft:coals>,
        <tag:item:minecraft:sand>,
        <tag:item:forge:dusts/salt>,
        <tag:item:forge:dusts/wood>,
    ]);
    craftingTable.addShapeless("patent_568323_graphite_mix_coke_variant", graphite_dust * 6, [
        <tag:item:forge:coal_coke>,
        <tag:item:minecraft:sand>,
        <tag:item:forge:dusts/salt>,
        <tag:item:forge:dusts/wood>,
    ]);
}