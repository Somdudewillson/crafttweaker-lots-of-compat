#priority 300

public class ContextualConstants {
    #onlyif modloader forge
    public static var MILK_FLUID = <fluid:minecraft:milk>;
    
    public static var FLOUR = <tag:items:forge:flour>;
    public static var BREAD = <tag:items:forge:bread>;
    public static var CABBAGE = <tag:items:forge:crops/cabbage>;
    public static var COOKED_MUTTON = <tag:items:forge:cooked_mutton>;
    public static var ONION = <tag:items:forge:crops/onion>;

    public static var GLOWSTONE_DUST = <tag:items:forge:dusts/glowstone>;
    public static var GLOWSTONE_STORAGE_BLOCK = <tag:items:forge:storage_blocks/glowstone>;
    public static var IRON_INGOT = <tag:items:forge:ingots/iron>;
    public static var GOLD_INGOT = <tag:items:forge:ingots/gold>;
    public static var REDSTONE_DUST = <tag:items:forge:dusts/redstone>;
    #endif

    #onlyif modloader fabric
    public static var MILK_FLUID = <fluid:milk:still_milk>;

    public static var FLOUR = <tag:items:c:flour>;
    public static var BREAD = <tag:items:c:bread>;
    public static var CABBAGE = <tag:items:c:crops/cabbage>;
    public static var COOKED_MUTTON = <tag:items:c:foods/cooked_meats/cooked_mutton>;
    public static var ONION = <tag:items:c:crops/onion>;

    public static var GLOWSTONE_DUST = <tag:items:c:glowstone_dusts>;
    public static var GLOWSTONE_STORAGE_BLOCK = <tag:items:c:glowstone_blocks>;
    public static var IRON_INGOT = <tag:items:c:iron_ingots>;
    public static var GOLD_INGOT = <tag:items:c:gold_ingots>;
    public static var REDSTONE_DUST = <tag:items:c:redstone_dusts>;
    #endif

    #onlyif modloader forge
    public static fluidAmtFromMb(millibuckets as int) as int {
        return millibuckets;
    }
    #endif
    #onlyif modloader fabric
    public static fluidAmtFromMb(millibuckets as int) as int {
        return millibuckets * 81;
    }
    #endif
}