#priority 100
#modloaded create

import crafttweaker.api.bracket.BracketHandlers;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.fluid.FluidIngredient;
import crafttweaker.api.fluid.Fluid;
import crafttweaker.api.mod.Mods;
import crafttweaker.api.data.IData;

public class CreateUtils {
    public static convertItemIngredient(inputIngredient as IIngredientWithAmount) as IData {
        var convertedIngredient = inputIngredient as IData;
        return convertedIngredient;
    }
    public static convertFluidIngredient(inputIngredient as IFluidStack) as IData {
        var convertedIngredient = inputIngredient as IData;
        convertedIngredient = convertedIngredient.merge({"type": "fluid_stack"});
        convertedIngredient = convertedIngredient.merge({"fluid": convertedIngredient["id"]});
        return convertedIngredient;
    }
    public static convertItemResult(itemStack as Percentaged<IItemStack>) as IData {
        var convertedResult = Utils.toRecipeJsonAlt(itemStack.data);
        convertedResult = convertedResult.merge({"chance": itemStack.percentage});
        return convertedResult;
    }

    // public static addCompactingRecipe(name as string, heat as string, outputs as Percentaged<IItemStack>[], itemInputs as IIngredientWithAmount[], fluidInputs as FluidIngredient[] = [] as FluidIngredient[], duration as int = 100) as void {
    //     var convertedIngredients = [] as IData[];
    //     var convertedResults = [] as IData[];

    //     for itemInput in itemInputs {
    //         convertedIngredients.add(convertItemIngredient(itemInput));
    //     }
    //     for fluidInput in fluidInputs {
    //         convertedIngredients.add(convertFluidIngredient(fluidInput));
    //     }

    //     for output in outputs {
    //         convertedResults.add(convertItemResult(output));
    //     }

    //     <recipetype:create:compacting>.addJsonRecipe(name, {
    //         "type": "create:compacting",
    //         "heat_requirement": heat,
    //         "ingredients": convertedIngredients,
    //         "results": convertedResults,
    //         "processingTime": duration
    //     });
    // }
}