#modloaded thermal thermal_cultivation create_central_kitchen

// Filling
<recipetype:create:filling>.addJsonRecipe("create_fill_bottle_of_concrete", {
  "type": "create:filling",
  "ingredients": [
    {
      "item": "thermal:jar"
    },
    {
      "amount": 625,
      "fluid": "create_central_kitchen:tomato_sauce"
    }
  ],
  "results": [
    {
      "item": "thermal:tomato_sauce"
    }
  ]
});

// Emptying
<recipetype:create:emptying>.addJsonRecipe("create_empty_bottle_of_concrete", {
  "type": "create:emptying",
  "ingredients": [
    {
      "item": "thermal:tomato_sauce"
    }
  ],
  "results": [
    {
      "item": "thermal:jar"
    },
    {
      "amount": 625,
      "fluid": "create_central_kitchen:tomato_sauce"
    }
  ]
});