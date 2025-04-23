#priority 300

public class ContextualConstants {
    #onlyif modloader forge
    public static var MILK_FLUID = <fluid:minecraft:milk>;
    #endif
    #onlyif modloader fabric
    public static var MILK_FLUID = <fluid:milk:still_milk>;
    #endif
}