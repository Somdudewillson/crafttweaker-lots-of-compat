#modloaded v_turrets

import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.replacement.Replacer;
import crafttweaker.api.recipe.replacement.type.ModsFilteringRule;
import crafttweaker.api.recipe.replacement.type.NameFilteringRule;

var T3_TURRET_COMPONENT = <item:minecraft:echo_shard> as IIngredient | <tag:items:lots_of_compat:diamond_circuits>;
var T2_TURRET_COMPONENT = <item:minecraft:echo_shard> as IIngredient | <tag:items:lots_of_compat:gold_circuits>;
#onlyif modloaded thermal thermal_expansion
T2_TURRET_COMPONENT = T2_TURRET_COMPONENT | <item:thermal:upgrade_augment_2>;
T3_TURRET_COMPONENT = T3_TURRET_COMPONENT | <item:thermal:upgrade_augment_3>;
#endif
#onlyif modloaded create
T2_TURRET_COMPONENT = T2_TURRET_COMPONENT | <item:create:precision_mechanism>;
#endif

Replacer.create()
    .filter(ModsFilteringRule.of("v_turrets"))
    .filter(NameFilteringRule.regex(".*?_t2.*"))
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <targetingstrategy:crafttweaker:deep>, <item:minecraft:echo_shard> as IIngredient, T2_TURRET_COMPONENT)
    .execute();
Replacer.create()
    .filter(ModsFilteringRule.of("v_turrets"))
    .filter(NameFilteringRule.regex(".*?_t3.*"))
    .replace<IIngredient>(<recipecomponent:crafttweaker:input/ingredients>, <targetingstrategy:crafttweaker:deep>, <item:minecraft:echo_shard> as IIngredient, T3_TURRET_COMPONENT)
    .execute();
Replacer.create()
    .filter(ModsFilteringRule.of("v_turrets"))
    .replace<IIngredient>(
        <recipecomponent:crafttweaker:input/ingredients>, 
        <targetingstrategy:crafttweaker:deep>, 
        <item:minecraft:echo_shard> as IIngredient, 
        T2_TURRET_COMPONENT
    )
    .execute();