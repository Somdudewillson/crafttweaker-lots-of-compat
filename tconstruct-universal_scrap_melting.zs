#priority -10
#modloaded tconstruct
// TODO: Figure out how to implement this in a way that more reliably avoids edge-case dupes from non-vanilla recipe types?

import crafttweaker.api.recipe.CraftingTableRecipeManager;
import crafttweaker.api.recipe.StoneCutterManager;
import crafttweaker.api.data.IData;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.fluid.Fluid;
import crafttweaker.api.fluid.IFluidStack;
import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.world.Container;
import crafttweaker.api.recipe.type.StonecutterRecipe;
import crafttweaker.api.recipe.type.CraftingRecipe;
import crafttweaker.api.resource.ResourceLocation;

// Config
var MAX_ITERATIONS = 5;
var ALLOW_NON_WHOLE_AMOUNTS = true;
var ALLOW_BURNABLE_AUTO_POPULATE = true;

var EXCLUDED_ITEM_KEYS = [
    "tconstruct:"
];



// This class assumes it wil never encounter negative-valued fractions
// Also, this class behaves loosely like an immutable value class (simplify() breaks this but...)
public class FractionalFluid {
    private var fluid as Fluid;
    private var numerator as int : get;
    private var denominator as int : get;

    public this() {
        this.fluid = <fluid:minecraft:empty>;
        this.numerator = 0;
        this.denominator = 1;
    }

    public this(fluid: Fluid) {
        this.fluid = fluid;
        this.numerator = 0;
        this.denominator = 1;
    }
    public this(fluid: Fluid, amount: int) {
        this.fluid = fluid;
        this.numerator = amount;
        this.denominator = 1;
    }
    public this(fluid: Fluid, numerator: int, denominator: int) {
        this.fluid = fluid;
        this.numerator = numerator;
        this.denominator = denominator;
    }
    public this(other: FractionalFluid) {
        this.fluid = other.fluid;
        this.numerator = other.numerator;
        this.denominator = other.denominator;
    }
    
    public +(addend as int) as FractionalFluid {
        var result = new FractionalFluid(
            this.fluid,
            this.numerator + (addend*this.denominator),
            this.denominator
        );
        result.simplify();
        return result;
    }
    public -(subtrahend as int) as FractionalFluid {
        var result = new FractionalFluid(
            this.fluid,
            this.numerator - (subtrahend*this.denominator),
            this.denominator
        );
        result.simplify();
        return result;
    }
    public *(factor as int) as FractionalFluid {
        var result = new FractionalFluid(
            this.fluid,
            this.numerator * factor,
            this.denominator
        );
        result.simplify();
        return result;
    }
    public /(divisor as int) as FractionalFluid throws stdlib.IllegalArgumentException {
        if (divisor == 0) {
            throw new stdlib.IllegalArgumentException("Cannot divide by zero!");
        }
        var result = new FractionalFluid(
            this.fluid,
            this.numerator,
            this.denominator * divisor
        );
        result.simplify();
        return result;
    }

    public +(addend as FractionalFluid) as FractionalFluid throws stdlib.IllegalArgumentException {
        if (this.fluid != addend.fluid) {
            throw new stdlib.IllegalArgumentException("Cannot add FractionalFluids with different fluids!");
        }
        var result = new FractionalFluid(
            this.fluid,
            this.numerator + (addend.numerator*this.denominator),
            this.denominator * addend.denominator
        );
        result.simplify();
        return result;
    }
    public -(subtrahend as FractionalFluid) as FractionalFluid throws stdlib.IllegalArgumentException {
        if (this.fluid != subtrahend.fluid) {
            throw new stdlib.IllegalArgumentException("Cannot subtract FractionalFluids with different fluids!");
        }
        var result = new FractionalFluid(
            this.fluid,
            this.numerator - (subtrahend.numerator*this.denominator),
            this.denominator * subtrahend.denominator
        );
        result.simplify();
        return result;
    }
    public *(factor as FractionalFluid) as FractionalFluid throws stdlib.IllegalArgumentException {
        if (this.fluid != factor.fluid) {
            throw new stdlib.IllegalArgumentException("Cannot multiply FractionalFluids with different fluids!");
        }
        var result = new FractionalFluid(
            this.fluid,
            this.numerator * factor.numerator,
            this.denominator * factor.denominator
        );
        result.simplify();
        return result;
    }
    public /(divisor as FractionalFluid) as FractionalFluid throws stdlib.IllegalArgumentException {
        if (this.fluid != divisor.fluid) {
            throw new stdlib.IllegalArgumentException("Cannot divide FractionalFluids with different fluids!");
        }
        if (divisor.denominator == 0 || divisor.numerator == 0) {
            throw new stdlib.IllegalArgumentException("Cannot divide by zero!");
        }
        var result = new FractionalFluid(
            this.fluid,
            this.numerator * divisor.denominator,
            this.denominator * divisor.numerator
        );
        result.simplify();
        return result;
    }

    private simplify() as void {
        var n = numerator;
        var d = denominator;
        if (n == 0 || d == 1) {
            denominator = 1;
            return;
        }
        // Euclidean Algorithm for GCD
        while (d != 0) {
            var t = d;
            d = n%d;
            n = t;
        }
        numerator /= n;
        denominator /= n;
    }


    public getFluid() as Fluid {
        return fluid;
    }

    public isWholeAmount() as bool {
        simplify();
        return denominator == 1;
    }
    public getIntAmount() as int {
        simplify();
        return math.Functions.floor(numerator/(denominator as float)) as int;
    }
    public isEmpty() as bool {
        return fluid == <fluid:minecraft:empty> || numerator <= 0 || getIntAmount() <= 0;
    }
}
var EMPTY_FLUID = new FractionalFluid(<fluid:minecraft:empty>);


var BASE_INGREDIENT_TO_MOLTEN_MAP as FractionalFluid[IIngredient] = {
    <tag:items:forge:storage_blocks/iron> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_iron>, 810),
    <tag:items:forge:ingots/iron> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_iron>, 90),
    <tag:items:forge:plates/iron> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_iron>, 90),
    <tag:items:forge:nuggets/iron> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_iron>, 10),
    <tag:items:forge:gears/iron> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_iron>, 360),

    <tag:items:forge:storage_blocks/gold> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_gold>, 810),
    <tag:items:forge:ingots/gold> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_gold>, 90),
    <tag:items:forge:plates/gold> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_gold>, 90),
    <tag:items:forge:nuggets/gold> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_gold>, 10),
    <tag:items:forge:gears/gold> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_gold>, 360),

    <tag:items:forge:storage_blocks/copper> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_copper>, 810),
    <tag:items:forge:ingots/copper> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_copper>, 90),
    <tag:items:forge:plates/copper> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_copper>, 90),
    <tag:items:forge:nuggets/copper> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_copper>, 10),
    <tag:items:forge:gears/copper> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_copper>, 360),

    <tag:items:forge:storage_blocks/tin> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_tin>, 810),
    <tag:items:forge:ingots/tin> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_tin>, 90),
    <tag:items:forge:plates/tin> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_tin>, 90),
    <tag:items:forge:nuggets/tin> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_tin>, 10),
    <tag:items:forge:gears/tin> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_tin>, 360),

    <tag:items:forge:storage_blocks/aluminum> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_aluminum>, 810),
    <tag:items:forge:ingots/aluminum> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_aluminum>, 90),
    <tag:items:forge:plates/aluminum> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_aluminum>, 90),
    <tag:items:forge:nuggets/aluminum> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_aluminum>, 10),
    <tag:items:forge:gears/aluminum> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_aluminum>, 360),

    <tag:items:forge:storage_blocks/lead> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_lead>, 810),
    <tag:items:forge:ingots/lead> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_lead>, 90),
    <tag:items:forge:plates/lead> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_lead>, 90),
    <tag:items:forge:nuggets/lead> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_lead>, 10),
    <tag:items:forge:gears/lead> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_lead>, 360),

    <tag:items:forge:storage_blocks/silver> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_silver>, 810),
    <tag:items:forge:ingots/silver> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_silver>, 90),
    <tag:items:forge:plates/silver> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_silver>, 90),
    <tag:items:forge:nuggets/silver> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_silver>, 10),
    <tag:items:forge:gears/silver> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_silver>, 360),

    <tag:items:forge:storage_blocks/nickel> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_nickel>, 810),
    <tag:items:forge:ingots/nickel> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_nickel>, 90),
    <tag:items:forge:plates/nickel> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_nickel>, 90),
    <tag:items:forge:nuggets/nickel> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_nickel>, 10),
    <tag:items:forge:gears/nickel> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_nickel>, 360),

    <tag:items:forge:storage_blocks/zinc> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_zinc>, 810),
    <tag:items:forge:ingots/zinc> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_zinc>, 90),
    <tag:items:forge:plates/zinc> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_zinc>, 90),
    <tag:items:forge:nuggets/zinc> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_zinc>, 10),
    <tag:items:forge:gears/zinc> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_zinc>, 360),

    <tag:items:forge:storage_blocks/uranium> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_uranium>, 810),
    <tag:items:forge:ingots/uranium> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_uranium>, 90),
    <tag:items:forge:plates/uranium> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_uranium>, 90),
    <tag:items:forge:nuggets/uranium> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_uranium>, 10),
    <tag:items:forge:gears/uranium> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_uranium>, 360),

    <tag:items:forge:storage_blocks/bronze> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_bronze>, 810),
    <tag:items:forge:ingots/bronze> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_bronze>, 90),
    <tag:items:forge:plates/bronze> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_bronze>, 90),
    <tag:items:forge:nuggets/bronze> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_bronze>, 10),
    <tag:items:forge:gears/bronze> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_bronze>, 360),

    <tag:items:forge:storage_blocks/brass> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_brass>, 810),
    <tag:items:forge:ingots/brass> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_brass>, 90),
    <tag:items:forge:plates/brass> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_brass>, 90),
    <tag:items:forge:nuggets/brass> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_brass>, 10),
    <tag:items:forge:gears/brass> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_brass>, 360),

    <tag:items:forge:storage_blocks/steel> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_steel>, 810),
    <tag:items:forge:ingots/steel> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_steel>, 90),
    <tag:items:forge:plates/steel> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_steel>, 90),
    <tag:items:forge:nuggets/steel> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_steel>, 10),
    <tag:items:forge:gears/steel> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_steel>, 360),

    <tag:items:forge:storage_blocks/netherite> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_netherite>, 810),
    <tag:items:forge:ingots/netherite> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_netherite>, 90),
    <tag:items:forge:plates/netherite> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_netherite>, 90),
    <tag:items:forge:nuggets/netherite> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_netherite>, 10),
    <tag:items:forge:gears/netherite> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_netherite>, 360),

    <tag:items:forge:storage_blocks/emerald> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_emerald>, 900),
    <tag:items:forge:gems/emerald> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_emerald>, 100),
    <tag:items:forge:gears/emerald> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_emerald>, 400),

    <tag:items:forge:storage_blocks/quartz> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_quartz>, 400),
    <tag:items:forge:gems/quartz> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_quartz>, 100),
    <tag:items:forge:gears/quartz> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_quartz>, 400),

    <tag:items:forge:storage_blocks/amethyst> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_amethyst>, 400),
    <tag:items:forge:gems/amethyst> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_amethyst>, 100),
    <tag:items:forge:gears/amethyst> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_amethyst>, 400),

    <tag:items:forge:storage_blocks/diamond> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_diamond>, 900),
    <tag:items:forge:gems/diamond> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_diamond>, 100),
    <tag:items:forge:gears/diamond> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_diamond>, 400),

    <tag:items:forge:ingots/netherite_scrap> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_debris>, 90),
    <tag:items:forge:nuggets/netherite_scrap> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_debris>, 10),
    <tag:items:forge:gears/netherite_scrap> as IIngredient: new FractionalFluid(<fluid:tconstruct:molten_debris>, 360)
};
var baseItemSet as bool[ItemDefinition] = {};
var itemToMoltenMap as FractionalFluid[ItemDefinition] = {};
var FLUID_MELTING_TEMPS as int[Fluid] = {
    <fluid:tconstruct:molten_iron> as Fluid: 800,
    <fluid:tconstruct:molten_gold> as Fluid: 700,
    <fluid:tconstruct:molten_copper> as Fluid: 500,
    <fluid:tconstruct:molten_tin> as Fluid: 225,
    <fluid:tconstruct:molten_aluminum> as Fluid: 425,
    <fluid:tconstruct:molten_lead> as Fluid: 330,
    <fluid:tconstruct:molten_silver> as Fluid: 790,
    <fluid:tconstruct:molten_nickel> as Fluid: 950,
    <fluid:tconstruct:molten_zinc> as Fluid: 420,
    <fluid:tconstruct:molten_uranium> as Fluid: 830,
    <fluid:tconstruct:molten_bronze> as Fluid: 700,
    <fluid:tconstruct:molten_brass> as Fluid: 605,
    <fluid:tconstruct:molten_steel> as Fluid: 950,
    <fluid:tconstruct:molten_netherite> as Fluid: 1250,
    <fluid:tconstruct:molten_emerald> as Fluid: 934,
    <fluid:tconstruct:molten_quartz> as Fluid: 637,
    <fluid:tconstruct:molten_amethyst> as Fluid: 950,
    <fluid:tconstruct:molten_diamond> as Fluid: 1450,
    <fluid:tconstruct:molten_debris> as Fluid: 1175
};
var FLUID_MELTING_TIME_PER_mB as double[Fluid] = {
    <fluid:tconstruct:molten_iron> as Fluid: 0.1667,
    <fluid:tconstruct:molten_gold> as Fluid: 0.1556,
    <fluid:tconstruct:molten_copper> as Fluid: 0.1333,
    <fluid:tconstruct:molten_tin> as Fluid: 0.1,
    <fluid:tconstruct:molten_aluminum> as Fluid: 0.1222,
    <fluid:tconstruct:molten_lead> as Fluid: 0.1111,
    <fluid:tconstruct:molten_silver> as Fluid: 0.1667,
    <fluid:tconstruct:molten_nickel> as Fluid: 0.1778,
    <fluid:tconstruct:molten_zinc> as Fluid: 0.1222,
    <fluid:tconstruct:molten_uranium> as Fluid: 0.1667,
    <fluid:tconstruct:molten_bronze> as Fluid: 0.1556,
    <fluid:tconstruct:molten_brass> as Fluid: 0.1444,
    <fluid:tconstruct:molten_steel> as Fluid: 0.1778,
    <fluid:tconstruct:molten_netherite> as Fluid: 0.2,
    <fluid:tconstruct:molten_emerald> as Fluid: 0.16,
    <fluid:tconstruct:molten_quartz> as Fluid: 0.13,
    <fluid:tconstruct:molten_amethyst> as Fluid: 0.16,
    <fluid:tconstruct:molten_diamond> as Fluid: 0.19,
    <fluid:tconstruct:molten_debris> as Fluid: 0.1889
};
var BURNABLE_INGREDIENTS as IIngredient[] = [
    <tag:items:minecraft:logs> as IIngredient,
    <tag:items:minecraft:planks> as IIngredient,
    <tag:items:forge:rods/wooden> as IIngredient,
    <tag:items:minecraft:wooden_slabs> as IIngredient,
    <tag:items:minecraft:wooden_stairs> as IIngredient,
    <tag:items:forge:fences/wooden> as IIngredient,
    <tag:items:forge:fence_gates/wooden> as IIngredient,
    <tag:items:minecraft:wooden_pressure_plates> as IIngredient,
    <tag:items:minecraft:wooden_buttons> as IIngredient,
    <tag:items:forge:normal_stone> as IIngredient
];
var mergedBurnableIngredient = BURNABLE_INGREDIENTS[0];
for i in 1 .. BURNABLE_INGREDIENTS.length {
    mergedBurnableIngredient = mergedBurnableIngredient | BURNABLE_INGREDIENTS[i];
}

// Initialize the itemToMoltenMap
for meltIngredient, meltResult in BASE_INGREDIENT_TO_MOLTEN_MAP {
    for ingredientItem in meltIngredient.items {
        var ingredientItemDef = ingredientItem.definition as ItemDefinition;
        baseItemSet[ingredientItemDef] = true;
        itemToMoltenMap[ingredientItemDef] = meltResult;
    }
}

// Scan existing melting recipes
var ALREADY_MELTABLE_ITEMS as bool[ItemDefinition] = {};
for recipe in (<recipetype:tconstruct:melting>.getAllRecipes() as stdlib.List<Recipe<Container>>) {
    var castRecipe = (recipe as Recipe<Container>);
    for ingredient in castRecipe.ingredients {
        for ingredientItem in ingredient.items {
            ALREADY_MELTABLE_ITEMS[ingredientItem.definition as ItemDefinition] = true;
        }
    }
}

// Load up list of recipes to scan
var recipeList = new stdlib.List<Recipe<Container>>();
for recipe in StoneCutterManager.INSTANCE.allRecipes {
    var castRecipe = (recipe as Recipe<Container>);
    recipeList.add(castRecipe);
}
for recipe in CraftingTableRecipeManager.INSTANCE.allRecipes {
    var castRecipe = (recipe as Recipe<Container>);
    recipeList.add(castRecipe);
}

var ingredientItemToRecipeMap as stdlib.List<Recipe<Container>>[ItemDefinition] = {};
var recipeNodeQueue = new stdlib.List<Recipe<Container>>();
var recipeNodeQueueSet = new collections.HashSet<ResourceLocation>();
// Filter list of recipes to scan, build graph metadata, and initialize working queue
for recipe in recipeList {
    var valid = true;

    if (recipe.resultItem.definition in baseItemSet) {// Exclude recipes for items with specified constant melting results
        valid = false;
    }
    if (valid) {// Exclude recipes for items whose registry name contains an entry from EXCLUDED_ITEM_KEYS
        var outputItemString = recipe.resultItem.definition.registryName as string;
        for excludedKey in EXCLUDED_ITEM_KEYS {
            if (excludedKey in outputItemString) {
                valid = false;
                break;
            }
        }
    }

    if (valid) {
        for ingredient in recipe.ingredients {
            for ingredientItem in ingredient.items {
                if ( !(ingredientItem in ingredientItemToRecipeMap) ) {
                    ingredientItemToRecipeMap[ingredientItem] = new stdlib.List<Recipe<Container>>();
                }
                ingredientItemToRecipeMap[ingredientItem].add(recipe);

                if ( !(recipe.id in recipeNodeQueueSet) && (ingredientItem in mergedBurnableIngredient || ingredientItem in itemToMoltenMap) ) {
                    recipeNodeQueue.add(recipe);
                    recipeNodeQueueSet.add(recipe.id);
                }
            }
        }
    }
}

// Sort queued nodes in descending order of child count
var nodeChildCountCache as int[ResourceLocation] = {};
function getRecipeNodeChildrenRecursive(recipeNode as Recipe<Container>, ingredientItemToRecipeMap as stdlib.List<Recipe<Container>>[ItemDefinition], nodeChildCountCache as int[ResourceLocation], visitedNodes as collections.HashSet<ResourceLocation>) as int {
    if (recipeNode.id in nodeChildCountCache) {
        return nodeChildCountCache[recipeNode.id];
    }

    visitedNodes.add(recipeNode.id);
    var childCount = 0;
    var resultItem = recipeNode.resultItem;
    if (resultItem.definition in ingredientItemToRecipeMap) {
        for childRecipe in ingredientItemToRecipeMap[resultItem.definition] {
            if ( !(childRecipe.id in visitedNodes) ) {
                childCount += 1;
                childCount += getRecipeNodeChildrenRecursive(childRecipe, ingredientItemToRecipeMap, nodeChildCountCache, visitedNodes);
            }
        }
    }
    nodeChildCountCache[recipeNode.id] = childCount;
    return childCount;
}
function getRecipeNodeChildren(recipeNode as Recipe<Container>, ingredientItemToRecipeMap as stdlib.List<Recipe<Container>>[ItemDefinition], nodeChildCountCache as int[ResourceLocation]) as int {
    return getRecipeNodeChildrenRecursive(recipeNode, ingredientItemToRecipeMap, nodeChildCountCache, new collections.HashSet<ResourceLocation>());
}

for recipeNode in recipeNodeQueue {
    getRecipeNodeChildren(recipeNode, ingredientItemToRecipeMap, nodeChildCountCache);
}
var nodeSortingArray = recipeNodeQueue as Recipe<Container>[];
nodeSortingArray.sort( (a,b) => {
    return nodeChildCountCache[b.id]-nodeChildCountCache[a.id];
} );
recipeNodeQueue = nodeSortingArray as stdlib.List<Recipe<Container>>;

// Traverse queued nodes in graph to find new meltables/burnables
var nodeVisitCount = 0;
while (!recipeNodeQueue.isEmpty) {
    var currentRecipeNode = recipeNodeQueue.remove(0);
    nodeVisitCount += 1;

    // Parse recipe and determine if it is burnable/meltable
    var meltingFluid as FractionalFluid = EMPTY_FLUID;
    var recipeInvalid as bool = false;

    var burnableIngredientNum = 0 as int;
    var nonAirIngredientCount = 0 as int;
    for ingredient in currentRecipeNode.ingredients {
        if ( !ingredient.empty ) {
            nonAirIngredientCount += 1;
        }
        if ( (!ingredient.empty) && (!recipeInvalid) ) {
            if (ingredient in mergedBurnableIngredient) {
                burnableIngredientNum += 1;
            } else {

                // Get melt result of ingredient
                var meltFluid as FractionalFluid = EMPTY_FLUID;

                for ingredientItem in ingredient.items {
                    if (!recipeInvalid) {
                        var meltResult as FractionalFluid = EMPTY_FLUID;
                        if (ingredientItem.definition in itemToMoltenMap) {
                            meltResult = itemToMoltenMap[ingredientItem.definition] * (ingredientItem.amount);

                            if ( meltFluid.isEmpty() || meltResult.getIntAmount() < meltFluid.getIntAmount() ) {
                                if ( (!meltFluid.isEmpty()) && meltResult.getFluid() != meltFluid.getFluid() ) {
                                    meltFluid = EMPTY_FLUID;
                                    recipeInvalid = true;
                                } else {
                                    meltFluid = meltResult;
                                }
                            }

                        } else {
                            recipeInvalid = true;
                        }
                    }
                }

                // Handle melt result
                if (meltFluid.isEmpty()) {
                    recipeInvalid = true;
                } else if (meltingFluid.isEmpty()) {
                    meltingFluid = meltFluid;
                } else if (meltingFluid.getFluid() == meltFluid.getFluid()) {
                    meltingFluid += meltFluid;
                } else {
                    recipeInvalid = true;
                }
            
            }

        }
    }

    var shouldUpdateLinkedRecipes = false;
    var result = currentRecipeNode.resultItem;
    if ( (!recipeInvalid) && (!meltingFluid.isEmpty()) && result.amount>0 ) {
        meltingFluid /= result.amount;

        if ( !(result.definition in itemToMoltenMap) ) {
            itemToMoltenMap[result.definition] = meltingFluid;
            shouldUpdateLinkedRecipes = true;
        } else if ( !itemToMoltenMap[result.definition].isEmpty() ) {
            var existingResult = itemToMoltenMap[result.definition];
            if (meltingFluid.getFluid() == existingResult.getFluid()) {
                if (meltingFluid.getIntAmount() < existingResult.getIntAmount()) {
                    itemToMoltenMap[result.definition] = meltingFluid;
                    shouldUpdateLinkedRecipes = true;
                }
            } else {
                itemToMoltenMap[result.definition] = EMPTY_FLUID;
                shouldUpdateLinkedRecipes = true;
            }
        }
    } else if ( ALLOW_BURNABLE_AUTO_POPULATE && burnableIngredientNum == nonAirIngredientCount && result.amount>0 && !(result in mergedBurnableIngredient) ) {
        mergedBurnableIngredient = mergedBurnableIngredient | result;
        shouldUpdateLinkedRecipes = true;
    }

    if ( shouldUpdateLinkedRecipes && result.definition in ingredientItemToRecipeMap ) {
        for linkedRecipe in ingredientItemToRecipeMap[result.definition] {
            if ( !(linkedRecipe.id in recipeNodeQueueSet) ) {
                recipeNodeQueue.add(linkedRecipe);
            }
        }
    }
    recipeNodeQueueSet.remove(currentRecipeNode.id);
}
println("Finished scanning recipe graph; visited "+(nodeVisitCount as string)+" nodes.");

for itemDefinition, meltingFluid in itemToMoltenMap {
    var recipeName = "lots_of_compat_generic_smeltery_melting_melt_"+itemDefinition.registryName.namespace+"-"+itemDefinition.registryName.path;

    if ( (!meltingFluid.isEmpty()) && !(itemDefinition in baseItemSet) && !(itemDefinition in ALREADY_MELTABLE_ITEMS) && (ALLOW_NON_WHOLE_AMOUNTS || meltingFluid.isWholeAmount()) ) {
        var fluidAmt = meltingFluid.getIntAmount();
        var meltTime = math.Functions.round( (FLUID_MELTING_TIME_PER_mB[meltingFluid.getFluid()]*fluidAmt) as double ) as int;
        meltTime = math.Functions.max(meltTime, 1);

        <recipetype:tconstruct:melting>.addJsonRecipe(recipeName, {
            "type": "tconstruct:melting",
            "ingredient": [
                itemDefinition.defaultInstance as IIngredient as IData
            ],
            "result": (meltingFluid.getFluid() * fluidAmt) as IData,
            "temperature": FLUID_MELTING_TEMPS[meltingFluid.getFluid()],
            "time": meltTime
        });
    }
}