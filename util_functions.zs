#priority 100

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

public class Utils {

    public static var FLUID_ITEM_TYPES as IFluidStack[IIngredient] = {
        (<item:minecraft:milk_bucket> as IIngredient): ContextualConstants.MILK_FLUID * ContextualConstants.fluidAmtFromMb(1000),
        (<item:minecraft:water_bucket> as IIngredient): <fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(1000),
        (<item:minecraft:lava_bucket> as IIngredient): <fluid:minecraft:lava> * ContextualConstants.fluidAmtFromMb(1000),
    };

    static {
        #onlyif modloaded create
        FLUID_ITEM_TYPES[ (<item:minecraft:honey_bottle> as IIngredient) ] = <fluid:create:honey> * ContextualConstants.fluidAmtFromMb(250);
        #endif

        #onlyif modloaded blue_skies
        FLUID_ITEM_TYPES[ (BracketHandlers.getItem("blue_skies:ventium_milk_bucket") as IIngredient) ] = ContextualConstants.MILK_FLUID * ContextualConstants.fluidAmtFromMb(1000);
        FLUID_ITEM_TYPES[ (BracketHandlers.getItem("blue_skies:ventium_water_bucket") as IIngredient) ] = <fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(1000);
        #endif
        
        #onlyif modloaded farmersdelight
        FLUID_ITEM_TYPES[ (BracketHandlers.getItem("farmersdelight:milk_bottle") as IIngredient) ] = ContextualConstants.MILK_FLUID * ContextualConstants.fluidAmtFromMb(250);
        #onlyif modloaded create_central_kitchen
        FLUID_ITEM_TYPES[ (BracketHandlers.getItem("farmersdelight:tomato_sauce") as IIngredient) ] = BracketHandlers.getFluidStack("create_central_kitchen:tomato_sauce") * ContextualConstants.fluidAmtFromMb(250);
        #endif
        #endif
        
        #onlyif modloaded miners_delight
        FLUID_ITEM_TYPES[ (BracketHandlers.getItem("miners_delight:milk_cup") as IIngredient) ] = ContextualConstants.MILK_FLUID * ContextualConstants.fluidAmtFromMb(1000);
        FLUID_ITEM_TYPES[ (BracketHandlers.getItem("miners_delight:water_cup") as IIngredient) ] = <fluid:minecraft:water> * ContextualConstants.fluidAmtFromMb(1000);
        #endif

        #onlyif modloaded cyclic
        FLUID_ITEM_TYPES[ (BracketHandlers.getItem("cyclic:milk_bottle") as IIngredient) ] = ContextualConstants.MILK_FLUID * ContextualConstants.fluidAmtFromMb(250);
        #onlyif modloaded create
        FLUID_ITEM_TYPES[ (BracketHandlers.getItem("cyclic:honey_bucket") as IIngredient) ] = <fluid:create:honey> * ContextualConstants.fluidAmtFromMb(1000);
        #endif
        #endif

        #onlyif modloaded thermal
        FLUID_ITEM_TYPES[ (BracketHandlers.getItem("thermal:syrup_bucket") as IIngredient) ] = BracketHandlers.getFluidStack("thermal:syrup") * ContextualConstants.fluidAmtFromMb(1000);
        FLUID_ITEM_TYPES[ (BracketHandlers.getItem("thermal:syrup_bottle") as IIngredient) ] = BracketHandlers.getFluidStack("thermal:syrup") * ContextualConstants.fluidAmtFromMb(250);
        #onlyif modloaded create_central_kitchen thermal_cultivation
        FLUID_ITEM_TYPES[ (BracketHandlers.getItem("thermal:tomato_sauce") as IIngredient) ] = BracketHandlers.getFluidStack("create_central_kitchen:tomato_sauce") * ContextualConstants.fluidAmtFromMb(625);
        #endif
        #endif
        
        #onlyif modloaded create_central_kitchen
        FLUID_ITEM_TYPES[ (BracketHandlers.getItem("create_central_kitchen:tomato_sauce_bucket") as IIngredient) ] = BracketHandlers.getFluidStack("create_central_kitchen:tomato_sauce") * ContextualConstants.fluidAmtFromMb(1000);
        #endif

        #onlyif modloaded create_enchantment_industry
        FLUID_ITEM_TYPES[ (<item:minecraft:experience_bottle> as IIngredient) ] = <fluid:create_enchantment_industry:experience> * ContextualConstants.fluidAmtFromMb(1000);
        #endif
    }

    public static compareVersions(a as string, b as string) as int {
        var aSeparated = a.split(".");
        var bSeparated = b.split(".");
        var minSharedLen = math.Functions.min(aSeparated.length as long, bSeparated.length as long) as int;

        for i in 0 .. minSharedLen {
            var c = aSeparated[i].compareToIgnoreCase(bSeparated[i]);
            if (c != 0) {
                return c;
            }
        }

        if (aSeparated.length > bSeparated.length) {
            return 1;
        } else if(aSeparated.length < bSeparated.length) {
            return -1;
        } else {
            return 0;
        }
    }


    public static ingredientEntirelyWithinTag(ingredient as IIngredient, tag as MCTag) as bool {
        for ingItem in ingredient.items {
            if (!(ingItem.registryName in tag)) { return false; }
        }
        return true;
    }


    public static expandItemStackYieldToPercentagedResult(itemStack as IItemStack, yieldPercentage as double, splitStack as bool) as Percentaged<IItemStack>[] {
        if (itemStack.amount == 1) {
            splitStack = true;
        }

        var singularItem = itemStack.items[0] * 1;
        var singularPercentage = yieldPercentage*itemStack.amount;
        if (singularPercentage<=100.0) {
            if (splitStack) {
                return [singularItem % singularPercentage] as Percentaged<IItemStack>[];
            } else {
                return [singularItem * itemStack.amount % yieldPercentage] as Percentaged<IItemStack>[];
            }
        }

        var baseStack = itemStack;
        var divResult = singularPercentage/(100.0*itemStack.amount);
        if (splitStack) {
            baseStack = singularItem;
            divResult = singularPercentage/100.0;
        }
        var wholePart = divResult as int;
        var remainderPart = divResult-wholePart;
        if (remainderPart < 0.01) {
            return [baseStack * wholePart % 100] as Percentaged<IItemStack>[];
        }
        return [
            baseStack * wholePart, 
            baseStack % (remainderPart*100)
        ] as Percentaged<IItemStack>[];
    }

    public static getIngredientFluidStacks(inIngredient as IIngredientWithAmount) as IFluidStack[] {
        var resultFluids as int[Fluid] = {};

        for ingItem in inIngredient.ingredient.items {
            for itemKey, fluidStackVal in FLUID_ITEM_TYPES {
                if (ingItem in itemKey) {

                    var fluidAmount = ((fluidStackVal.amount as int) * (ingItem.amount as int)) as int;
                    if (fluidStackVal.fluid in resultFluids) {
                        resultFluids[fluidStackVal.fluid] = math.Functions.min(resultFluids[fluidStackVal.fluid], fluidAmount);
                    } else {
                        resultFluids[fluidStackVal.fluid] = fluidAmount;
                    }

                }
            }
        }

        if (resultFluids.size == 0) {
            return [] as IFluidStack[];
        }
        var resultsFluidStacks = new stdlib.List<IFluidStack>();
        for fluid, amount in resultFluids {
            resultsFluidStacks.add( (fluid * amount) as IFluidStack );
        }
        return resultsFluidStacks as IFluidStack[];
    }

    public static getIngredientFluidIngredient(inIngredient as IIngredientWithAmount) as FluidIngredient? {
        var itemFluidStacks = getIngredientFluidStacks(inIngredient) as IFluidStack[];

        if (itemFluidStacks.length == 0) {
            return null;
        }
        var resultIngredient as FluidIngredient? = null;
        for itemFluidStack in itemFluidStacks {
            var nextIngredient = itemFluidStack as FluidIngredient;

            if (resultIngredient == null) {
                resultIngredient = nextIngredient;
            } else {
                resultIngredient = resultIngredient | nextIngredient;
            }
        }
        return resultIngredient;
    }

}