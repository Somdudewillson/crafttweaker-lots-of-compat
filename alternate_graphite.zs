if (<tag:items:forge:ingots/graphite>.elements.length>0 && <tag:items:forge:coal_coke>.elements.length>0) {
    furnace.addRecipe("furnace_coke_to_graphite", (<tag:items:forge:ingots/graphite>.elements[0].getDefaultInstance()) * 3, <tag:items:forge:coal_coke>, 0.1, 200);
    blastFurnace.addRecipe("blasting_coke_to_graphite", (<tag:items:forge:ingots/graphite>.elements[0].getDefaultInstance()) * 3, <tag:items:forge:coal_coke>, 0.1, 100);
}
if (<tag:items:forge:dusts/graphite>.elements.length>0 && <tag:items:forge:dusts/salt>.elements.length>0 && <tag:items:forge:dusts/wood>.elements.length>0) {
    var graphite_dust = <tag:items:forge:dusts/graphite>.elements[0].getDefaultInstance();
    craftingTable.addShapeless("patent_568323_graphite_mix", graphite_dust * 2, [
        <tag:items:minecraft:coals>,
        <tag:items:minecraft:sand>,
        <tag:items:forge:dusts/salt>,
        <tag:items:forge:dusts/wood>,
    ]);
    craftingTable.addShapeless("patent_568323_graphite_mix_coke_variant", graphite_dust * 6, [
        <tag:items:forge:coal_coke>,
        <tag:items:minecraft:sand>,
        <tag:items:forge:dusts/salt>,
        <tag:items:forge:dusts/wood>,
    ]);
}