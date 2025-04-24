#priority 300
#onlyif modloaded jei
import mods.jeitweaker.Jei;
#endif
import crafttweaker.api.tag.type.KnownTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;

public class ContextualConstants {
    #onlyif modloader forge
    public static var MILK_FLUID = <fluid:minecraft:milk>;

    public static var SEEDS = <tag:items:forge:seeds>;

    public static var FLOUR = <tag:items:forge:flour>;
    public static var BREAD = <tag:items:forge:bread>;
    public static var CABBAGE = <tag:items:forge:crops/cabbage>;
    public static var COOKED_MUTTON = <tag:items:forge:cooked_mutton>;
    public static var ONION = <tag:items:forge:crops/onion>;
    public static var DOUGH = <tag:items:forge:dough>;
    public static var RICE = <tag:items:forge:rice>;
    public static var RAW_MEAT = <tag:items:forge:raw_meat>;

    public static var GLOWSTONE_DUST = <tag:items:forge:dusts/glowstone>;
    public static var GLOWSTONE_STORAGE_BLOCK = <tag:items:forge:storage_blocks/glowstone>;
    public static var IRON_INGOT = <tag:items:forge:ingots/iron>;
    public static var GOLD_INGOT = <tag:items:forge:ingots/gold>;
    public static var REDSTONE_DUST = <tag:items:forge:dusts/redstone>;

    public static var GRAVEL = <tag:items:forge:gravel>;
    #endif

    #onlyif modloader fabric
    public static var MILK_FLUID = <fluid:milk:still_milk>;

    public static var SEEDS = <tag:items:c:seeds>;

    public static var FLOUR = <tag:items:c:flour>;
    public static var BREAD = <tag:items:c:bread>;
    public static var CABBAGE = <tag:items:c:crops/cabbage>;
    public static var COOKED_MUTTON = <tag:items:c:foods/cooked_meats/cooked_mutton>;
    public static var ONION = <tag:items:c:crops/onion>;
    public static var DOUGH = <tag:items:c:dough>;
    public static var RICE = <tag:items:c:seeds/rice> as IIngredient | <tag:items:c:grain/rice>;
    public static var RAW_MEAT = <tag:items:c:rawmeats>;

    public static var GLOWSTONE_DUST = <tag:items:c:glowstone_dusts>;
    public static var GLOWSTONE_STORAGE_BLOCK = <tag:items:c:glowstone_blocks>;
    public static var IRON_INGOT = <tag:items:c:iron_ingots>;
    public static var GOLD_INGOT = <tag:items:c:gold_ingots>;
    public static var REDSTONE_DUST = <tag:items:c:redstone_dusts>;

    public static var GRAVEL = <tag:items:c:gravel>;
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
        #onlyif modloaded jei
        Jei.hideIngredients(hideStacks);
        #endif
        #onlyif modloaded emi
        <tag:items:c:hidden_from_recipe_viewers>.add(hideStacks);
        #endif
    }
}