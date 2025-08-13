#priority 300
// #onlyif modloaded jei
// import mods.jeitweaker.Jei;
// #endif
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;

public class ContextualConstants {
    #onlyif modloader forge
    public static var MILK_FLUID = <fluid:minecraft:milk>;

    public static var SEEDS = <tag:item:forge:seeds>;

    public static var FLOUR = <tag:item:forge:flour>;
    public static var BREAD = <tag:item:forge:bread>;
    public static var CABBAGE = <tag:item:forge:crops/cabbage>;
    public static var COOKED_MUTTON = <tag:item:forge:cooked_mutton>;
    public static var ONION = <tag:item:forge:crops/onion>;
    public static var DOUGH = <tag:item:forge:dough>;
    public static var RICE = <tag:item:forge:rice>;
    public static var RAW_MEAT = <tag:item:forge:raw_meat>;

    public static var GLOWSTONE_DUST = <tag:item:forge:dusts/glowstone>;
    public static var GLOWSTONE_STORAGE_BLOCK = <tag:item:forge:storage_blocks/glowstone>;
    public static var IRON_INGOT = <tag:item:forge:ingots/iron>;
    public static var GOLD_INGOT = <tag:item:forge:ingots/gold>;
    public static var REDSTONE_DUST = <tag:item:forge:dusts/redstone>;

    public static var GRAVEL = <tag:item:forge:gravel>;

    public static var DYES = <tag:item:forge:dye>;
    #endif

    #onlyif modloader fabric
    public static var MILK_FLUID = <fluid:milk:still_milk>;

    public static var SEEDS = <tag:item:c:seeds>;

    public static var FLOUR = <tag:item:c:flour>;
    public static var BREAD = <tag:item:c:bread>;
    public static var CABBAGE = <tag:item:c:crops/cabbage>;
    public static var COOKED_MUTTON = <tag:item:c:foods/cooked_meats/cooked_mutton>;
    public static var ONION = <tag:item:c:crops/onion>;
    public static var DOUGH = <tag:item:c:dough>;
    public static var RICE = <tag:item:c:seeds/rice> as IIngredient | <tag:item:c:grain/rice>;
    public static var RAW_MEAT = <tag:item:c:rawmeats>;

    public static var GLOWSTONE_DUST = <tag:item:c:glowstone_dusts>;
    public static var GLOWSTONE_STORAGE_BLOCK = <tag:item:c:glowstone_blocks>;
    public static var IRON_INGOT = <tag:item:c:iron_ingots>;
    public static var GOLD_INGOT = <tag:item:c:gold_ingots>;
    public static var REDSTONE_DUST = <tag:item:c:redstone_dusts>;

    public static var GRAVEL = <tag:item:c:gravel>;

    public static var DYES = <tag:item:c:dyes>;
    #endif

    public static fluidAmtFromMb(millibuckets as int) as int {
        #onlyif modloader forge
        return millibuckets;
        #endif
        #onlyif modloader fabric
        return millibuckets * 81;
        #endif
    }

    public static unifiedHideStack(hideStack as IItemStack) as void {
        unifiedHideStacks([hideStack] as IItemStack[]);
    }
    public static unifiedHideStacks(hideStacks as IItemStack[]) as void {
        // #onlyif modloaded jei
        // Jei.hideIngredients(hideStacks);
        // #endif
        #onlyif modloaded emi
        <tag:item:c:hidden_from_recipe_viewers>.add(hideStacks);
        #endif
    }
}