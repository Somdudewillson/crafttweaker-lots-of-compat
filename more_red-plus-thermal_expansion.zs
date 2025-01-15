#modloaded morered thermal thermal_expansion

<recipetype:thermal:smelter>.addJsonRecipe("smelter_alloy_red_alloy", {
  "type": "thermal:smelter",
  "ingredients": [
    {
      "value": [
        {
          "tag": "morered:red_alloyable_ingots"
        },
        {
          "tag": "forge:dusts/iron"
        },
        {
          "tag": "forge:dusts/copper"
        }
      ],
      "count": 1
    },
    {
      "value": [
        {
          "tag": "forge:dusts/redstone"
        }
      ],
      "count": 4
    }
  ],
  "result": [
    {
      "item": "morered:red_alloy_ingot",
      "count": 1
    }
  ],
  "energy": 1600
});