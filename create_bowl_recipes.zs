#priority -10
#modloaded create

// This script automatically creates sequenced assembly recipes for standard crafting recipes that amount to "put thing(s) in a bowl"

import mods.create.MixingManager;
import crafttweaker.api.recipe.type.Recipe;
import mods.createtweaker.ProcessingRecipe;
import mods.createtweaker.BasinRecipe;
import mods.createtweaker.MixingRecipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.fluid.Fluid;
import crafttweaker.api.item.ItemStack;

var processedResultItemNames as bool[string] = {};
var craftingRecipes = craftingTable.allRecipes;
var modIdWhitelist as bool[string] = {
    "thermal":true, 
    "farmersdelight":true, 
    "nethersdelight":true, 
    "miners_delight":true, 
    "alexsmobs":true
};
for craftingRecipe in craftingRecipes {
    var castRecipe = (craftingRecipe as Recipe<Container>);
    if !(castRecipe.id.namespace in modIdWhitelist) {
        continue;
    }

    var solidIngredients = new stdlib.List<IIngredient>();
    var fluidIngredients = new stdlib.List<IFluidStack>();
    var createSequentialRecipe = false;

    var result = castRecipe.getResultItem();
    if (result in <item:minecraft:bowl>) { continue; }
    var resultName = result.registryName.getNamespace()+"_"+result.registryName.getPath();
    if (resultName in processedResultItemNames) {
        var i=2;
        while((resultName+"_"+i) in processedResultItemNames) {
            i += 1;
        }
        resultName = resultName+"_"+i;
    }
    processedResultItemNames[resultName] = true;
    for craftIngredient in castRecipe.getIngredients() {

        if ( <item:minecraft:bowl> in craftIngredient ) {
            createSequentialRecipe = true;
            continue;
        }

        // Included Ingredient Parsing
        var potentialFluidStacks = Utils.getIngredientFluidStacks(craftIngredient) as IFluidStack[];
        if (potentialFluidStacks.length==1) {
            fluidIngredients.add(potentialFluidStacks[0]);
        } else {
            solidIngredients.add(craftIngredient);
        }
    }

    if (!createSequentialRecipe) { continue; }
    // Consolidate fluid ingredients
    // Count Ingredients, to see if we can loop the recipe
    var ingredientFreq as int[string] = {};
    var ingredientMap as IIngredient[string] = {};
    var maxFreq = 0;
    for ing in solidIngredients {
        var ingKey = "";
        for ingItem in ing.items {
            ingKey = ingKey+","+ingItem.registryName.getNamespace()+"_"+ingItem.registryName.getPath();
        }

        if (!(ingKey in ingredientFreq)) {
            ingredientFreq[ingKey] = 0;
            ingredientMap[ingKey] = ing;
        }
        ingredientFreq[ingKey] = ingredientFreq[ingKey]+1;
        maxFreq = math.Functions.max(maxFreq, ingredientFreq[ingKey]);
    }
    // This is not an optimal way to compute GCD, but the maximum number we have to find the GCD of is 8, so it really doesn't matter.
    var greatest_common_divisor = maxFreq+1;
    while (greatest_common_divisor>1) {
        greatest_common_divisor -= 1;
        var failedDiv = false;
        for ingKey, freq in ingredientFreq {
            if ((freq % greatest_common_divisor) != 0) {
                failedDiv = true;
                break;
            }
        }
        if (!failedDiv) { break; }
    }
    
    solidIngredients = new stdlib.List<IIngredient>();
    for ingKey, freq in ingredientFreq {
        var i=0;
        while ( i<(freq/greatest_common_divisor) ) {
            i+=1;
            solidIngredients.add(ingredientMap[ingKey]); 
        }
    }

    var splitFluidIngredients = new stdlib.List<IFluidStack>();
    for fluidIngredient in fluidIngredients {
        var splitFluidAmount = ((fluidIngredient.amount as int)/(greatest_common_divisor as int)) as int;
        splitFluidIngredients.add( fluidIngredient.fluid * splitFluidAmount );
    }
    fluidIngredients = splitFluidIngredients;

    // Generate Sequential Recipe
    var seqBuilder = <recipetype:create:sequenced_assembly>.builder("assemble_"+resultName)
        .transitionTo(<item:minecraft:bowl>)
        .require(<item:minecraft:bowl>)
        .addOutput(result, 1)
        .loops(greatest_common_divisor);
    for solidIngredient in solidIngredients {
        seqBuilder = seqBuilder
            .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(solidIngredient));
    }
    for fluidIngredient in fluidIngredients {
        seqBuilder = seqBuilder
            .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(fluidIngredient));
    }
    <recipetype:create:sequenced_assembly>.addRecipe(seqBuilder);
}