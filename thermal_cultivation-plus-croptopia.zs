#modloaded thermal thermal_cultivation croptopia

craftingTable.addShapeless("thermal_cultivation_peanut_butter_to_croptopia_peanut_butter", <item:croptopia:peanut_butter> * 6, [
    <item:thermal:peanut_butter>,
    <item:croptopia:food_press>
]);
craftingTable.addShapeless("thermal_cultivation_jelly_to_croptopia_strawberry_jam", <item:croptopia:strawberry_jam> * 6, [
    <item:thermal:jelly>,
    <item:croptopia:cooking_pot>,
    <item:minecraft:sugar>,
    <item:minecraft:sugar>,
    <item:minecraft:sugar>,
    <item:minecraft:sugar>,
    <item:minecraft:sugar>,
    <item:minecraft:sugar>
]);

#onlyif modloaded farmersdelight
<recipetype:farmersdelight:cooking>.addRecipe("cook_thermal_cultivation_jelly_to_croptopia_strawberry_jam", 
    <item:croptopia:strawberry_jam> * 6, 
    [ <item:thermal:jelly>, <item:minecraft:sugar> * 6 ], 
    <constant:farmersdelight:cooking_pot_recipe_book_tab:misc>, 
    <item:minecraft:glass_bottle>, 0.8, 6 * 5 * 20);
#endif