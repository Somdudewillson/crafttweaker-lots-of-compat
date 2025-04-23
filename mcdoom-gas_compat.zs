#modloaded doom

import crafttweaker.api.ingredient.IIngredient;

var DOOM_VALID_FUEL = <tag:items:lots_of_compat:mc_doom_fuels>;
#onlyif modloaded thermal thermal_expansion
DOOM_VALID_FUEL.add(<item:thermal:refined_fuel_bucket>);
#endif
#onlyif modloaded create tfmg
DOOM_VALID_FUEL.add(<item:tfmg:gasoline_bucket>);
DOOM_VALID_FUEL.add(<item:tfmg:diesel_bucket>);
#endif

if (DOOM_VALID_FUEL.elements.length > 0) {
    craftingTable.addShapeless("fill_doom_gas_barrel_manual_only", 
        <item:doom:gas_barrel> * 16, 
        [
            (DOOM_VALID_FUEL as IIngredient).transformReplace(<item:minecraft:bucket>),
            (ContextualConstants.IRON_INGOT as IIngredient) | <tag:items:forge:ingots/plastic>
        ]);
}