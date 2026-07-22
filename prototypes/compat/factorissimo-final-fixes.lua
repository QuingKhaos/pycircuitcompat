local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["factorissimo-2-notnotmelon"] then
  if mods["pyrawores"] then
    khaoslib_recipe:load("factory-circuit-connector")
      :add_ingredient {type = "item", name = "solder", amount = 5}
      :commit()
  end
end
