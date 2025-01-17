#priority 100

// This is a somewhat complicated utility function for automatically handling conversions between different kinds of "energy"
// It precalculates ratios between all possible energy types based on the registered conversion ratios
// It can handle sparsely registered ratios - i.e. if a ratio from mana to source is registered alongside a ratio from source to rf, it can calculate a mana to rf ratio
// Registered ratios may also be one-way
// It also tries to handle conflicting ratios in an elegant way, by preferring the conversion ratio with the shortest conversion path (i.e. if mana can be converted directly to source, it will prefer that ratio over, say, a conversion from source to rf to mana)
//
// Example usage:
// new ConvertableEnergy(EnergyType.BOTANIA_MANA, 100).to(EnergyType.ARS_SOURCE).amount
// This code:
//      1. Creates a ConvertableEnergy object holding 100 Botania mana
//      2. Converts said object into Ars Nouveau source
//      3. Gets the exact amount of converted source (which is an integer)

public enum EnergyType {
    EXPERIENCE_POINTS("experience_points"),
    EXPERIENCE_LEVELS("experience_levels"),
    REDSTONE_FLUX("redstone_flux"),
    FORGE_ENERGY("forge_energy"),
    APPLIED_ENERGY("ae_energy"),
    BOTANIA_MANA("botania_mana"),
    ARS_SOURCE("source");

    private static var keyLookup as EnergyType[string] = {};
    private var key as string;

    private this(key: string) {
        this.key = key;
        keyLookup[key] = this;
    }

    public static getByKey(key: string) as EnergyType {
        return keyLookup[key];
    }

    public getKey() as string {
        return key;
    }
}

public class ConversionVisitorContext {
    public var currentType as EnergyType;
    public var ratio as double = 1;
    public var chainLength as int = 0;
    private var traversedTypes as int[string] = {};

    public this(currentType: EnergyType) {
        this.currentType = currentType;
        this.traversedTypes[currentType.getKey()] = 0;
    }
    public this(currentType: EnergyType, ratio: double) {
        this.currentType = currentType;
        this.ratio = ratio;
        this.traversedTypes[currentType.getKey()] = 0;
    }
    public this(currentType: EnergyType, ratio: double, chainLength: int, traversedTypes: int[string]) {
        this.currentType = currentType;
        this.ratio = ratio;
        this.chainLength = chainLength;
        this.traversedTypes = traversedTypes;
    }

    public chain(nextEnergyType: EnergyType, conversionRatio: double) as ConversionVisitorContext {
        var newTraversedTypes as int[string] = {};
        for key, value in this.traversedTypes {
            newTraversedTypes[key] = value;
        }
        newTraversedTypes[nextEnergyType.getKey()] = this.chainLength+1;
        return new ConversionVisitorContext(nextEnergyType, this.ratio*conversionRatio, this.chainLength+1, newTraversedTypes);
    }

    public hasTraversedEnergyType(energyType: EnergyType) as bool {
        return energyType.getKey() in this.traversedTypes;
    }

    public prettyToString() as string {
        var typesInOrder = new string[](traversedTypes.size, "");
        for key, value in this.traversedTypes {
            typesInOrder[value] = key;
        }

        var outStr = "";
        for typeKey in typesInOrder {
            outStr += typeKey;
            outStr += "->";
        }
        return outStr[0 .. outStr.length-2]+": "+this.ratio;
    }
}

public class ConvertableEnergy {

    private static var specifiedConversionRatios as double[string] = {};
    private static var calculatedConversionRatios as double[string] = {};
    private static var conversionsDirty = false;

    static {
        registerConversion(EnergyType.EXPERIENCE_LEVELS, EnergyType.EXPERIENCE_POINTS, 46.5); // Kinda arbitrary since the number of points/level changes — this is the average points/level at level 30
    }

    public static getConversionKey(from as EnergyType, to as EnergyType) as string {
        return from.getKey()+"_to_"+to.getKey();
    }
    public static getTypesFromKey(key as string) as EnergyType[] {
        var delimiter_idx = key.indexOf("_to_") as int;
        return [
            EnergyType.getByKey(key[0 .. delimiter_idx]), 
            EnergyType.getByKey(key[(delimiter_idx+4) .. $])
        ];
    }

    private static updateConversions() as void {
        var populatedConversions = 0;
        var totalPossibleConversions = EnergyType.values.length*EnergyType.values.length;
        var partialCalculatedConversionRatios as double[string] = {};
        var calculatedConversionChainLengths as int[string] = {};
        var calculatedConversionChainInfo as string[string] = {};
        println("INFO] Beginning conversion calculation of "+totalPossibleConversions+" possible conversions...");

        for conversionKey in specifiedConversionRatios {
            calculatedConversionRatios[conversionKey] = specifiedConversionRatios[conversionKey];
            calculatedConversionChainLengths[conversionKey] = 0;
            calculatedConversionChainInfo[conversionKey] = conversionKey+": "+specifiedConversionRatios[conversionKey];
            populatedConversions+=1;
        }

        for energyType in EnergyType.values {
            var sameToSameKey = getConversionKey(energyType, energyType);
            calculatedConversionRatios[sameToSameKey] = 1;
            calculatedConversionChainLengths[sameToSameKey] = 0;
            calculatedConversionChainInfo[sameToSameKey] = energyType.getKey()+"->"+energyType.getKey()+": 1";
            if (!(sameToSameKey in calculatedConversionRatios)) {
                populatedConversions+=1;
            }
        }

        for key, value in calculatedConversionRatios {
            partialCalculatedConversionRatios[key] = value;
        }

        for fromType in EnergyType.values {
            var visitedNodes as bool[string] = {};
            var visitorStack = new stdlib.List<ConversionVisitorContext>();
            visitorStack.add(new ConversionVisitorContext(fromType));

            while (!visitorStack.isEmpty) {
                var expandingVisitor = visitorStack.remove(0);
                
                for toType in EnergyType.values {
                    var conversionKey = getConversionKey(expandingVisitor.currentType, toType);
                    var nodeKey = conversionKey+"_"+expandingVisitor.chainLength;
                    if (!(nodeKey in visitedNodes) && !expandingVisitor.hasTraversedEnergyType(toType)) {
                        visitedNodes[nodeKey] = true;
                        if (conversionKey in partialCalculatedConversionRatios) {

                            var chainedVisitor = expandingVisitor.chain(toType, calculatedConversionRatios[conversionKey]);
                            visitorStack.add(chainedVisitor);

                            var skipConversionKey = getConversionKey(fromType, toType);
                            if (skipConversionKey in calculatedConversionRatios) {
                                var ratioDiff = math.Functions.abs(calculatedConversionRatios[skipConversionKey] - chainedVisitor.ratio);
                                if (ratioDiff > 0.0001) {
                                    var warnMessage = "WARN] Inconsistent calculated energy conversion between "+fromType.getKey()+" and "+toType.getKey()+"!";
                                    warnMessage += " ("+calculatedConversionChainInfo[skipConversionKey]+" vs "+chainedVisitor.prettyToString()+")";
                                    warnMessage += " Keeping shorter chain.";
                                    if (calculatedConversionChainLengths[skipConversionKey] > chainedVisitor.chainLength) {
                                        calculatedConversionRatios[skipConversionKey] = chainedVisitor.ratio;
                                        calculatedConversionChainLengths[skipConversionKey] = chainedVisitor.chainLength;
                                        calculatedConversionChainInfo[skipConversionKey] = chainedVisitor.prettyToString();
                                    }
                                    println(warnMessage);
                                }
                            } else {
                                calculatedConversionRatios[skipConversionKey] = chainedVisitor.ratio;
                                calculatedConversionChainLengths[skipConversionKey] = chainedVisitor.chainLength;
                                calculatedConversionChainInfo[skipConversionKey] = chainedVisitor.prettyToString();
                                populatedConversions+=1;
                            }

                        }
                    }
                }
            }
        }

        println("INFO] Calculated "+populatedConversions+" energy conversions out of "+totalPossibleConversions+".");
        for key, value in calculatedConversionRatios {
            println("INFO]     '"+key+"': "+value);
        }
        conversionsDirty = false;
    }

    public static registerConversion(from as EnergyType, to as EnergyType, rate as double, bidir as bool = true) as void throws stdlib.IllegalArgumentException {
        if (from == to) {
            throw new stdlib.IllegalArgumentException("Setting a conversion rate from an energy type to itself is invalid!");
        }
        if (rate <= 0) {
            throw new stdlib.IllegalArgumentException("Conversion rates must be positive!");
        }
        specifiedConversionRatios[getConversionKey(from, to)] = rate;
        if (bidir) {
            specifiedConversionRatios[getConversionKey(to, from)] = 1/rate;
        }
        conversionsDirty = true;
    }
    public static registerConversion(from as ConvertableEnergy, to as ConvertableEnergy, bidir as bool = true) as void {
        registerConversion(from.type, to.type, to.amount/from.amount, bidir);
    }

    public static getConversionFactor(from as EnergyType, to as EnergyType) as double {
        if (conversionsDirty) {
            updateConversions();
        }
        var conversionKey = getConversionKey(from,to);
        if (conversionKey in calculatedConversionRatios) {
            return calculatedConversionRatios[conversionKey];
        }
        return 0;
    }

    public static convertEnergyAmount(from as EnergyType, amount as int, to as EnergyType) as int {
        return math.Functions.round( amount*getConversionFactor(from, to) ) as int;
    }

    public var type as EnergyType;
    public var amount as int;

    public this(type: EnergyType) {
        this.type = type;
        this.amount = 1;
    }
    public this(type: EnergyType, amount: int) {
        this.type = type;
        this.amount = amount;
    }

    public *(factor as int) as ConvertableEnergy {
        this.amount *= factor;
        return this;
    }
    public +(factor as int) as ConvertableEnergy {
        this.amount += factor;
        return this;
    }
    public +(other as ConvertableEnergy) as ConvertableEnergy {
        this.amount += convertEnergyAmount(other.type, other.amount, this.type);
        return this;
    }

    public convert(newType: EnergyType) as ConvertableEnergy {
        var newAmt = convertEnergyAmount(this.type, this.amount, newType);
        return new ConvertableEnergy(newType, newAmt);
    }
    public to(newType: EnergyType) as ConvertableEnergy {
        return this.convert(newType);
    }
}

#onlyif modloaded botania
ConvertableEnergy.registerConversion(EnergyType.BOTANIA_MANA, EnergyType.FORGE_ENERGY, 10, false);
ConvertableEnergy.registerConversion(EnergyType.EXPERIENCE_POINTS, EnergyType.BOTANIA_MANA, 50, false);
#endif
#onlyif modloaded ae2
ConvertableEnergy.registerConversion(EnergyType.FORGE_ENERGY, EnergyType.APPLIED_ENERGY, 0.5);
#endif
#onlyif modloaded botania ars_nouveau
ConvertableEnergy.registerConversion(EnergyType.ARS_SOURCE, EnergyType.BOTANIA_MANA, 6);
#endif
#onlyif modloaded thermal thermal_expansion
ConvertableEnergy.registerConversion(EnergyType.REDSTONE_FLUX, EnergyType.FORGE_ENERGY, 1000);
ConvertableEnergy.registerConversion(EnergyType.EXPERIENCE_POINTS, EnergyType.REDSTONE_FLUX, 32000/10, false);
#endif