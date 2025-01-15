#onlyif modloaded tconstruct
if (<tag:fluids:forge:experience>.exists() && <tag:fluids:forge:experience>.elements.length>0) {
    <recipetype:tconstruct:casting_table>.addJsonRecipe("tconstruct_fill_experience_bottle", {
    "type": "tconstruct:casting_table",
    "cast": {
        "item": "minecraft:glass_bottle"
    },
    "cast_consumed": true,
    "cooling_time": 1,
    "fluid": {
        "amount": 250,
        "tag": "forge:experience"
    },
    "result": "minecraft:experience_bottle"
    });
}
#endif