#modloaded create

import crafttweaker.api.mod.Mods;

#onlyif modloaded industrialforegoing createdieselgenerators
<recipetype:create:mixing>.addJsonRecipe("create_mix_biodiesel_from_biofuel", {
  "type": "create:mixing",
  "ingredients": [
    {
      "amount": 100,
      "fluid": "industrialforegoing:biofuel",
    },
    {
      "amount": 100,
      "fluid": "createdieselgenerators:ethanol",
    }
  ],
  "results": [
    {
      "amount": 250,
      "fluid": "createdieselgenerators:biodiesel"
    }
  ]
});
#endif