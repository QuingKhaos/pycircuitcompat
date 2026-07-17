local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["Active_Rails"] then
  if mods["pyalternativeenergy"] then
    -- Require battery in recipe as other vanilla circuit network entities do in Pyanodons
    khaoslib_recipe:load("active-rail")
      :add_ingredient {type = "item", name = "battery-mk01", amount = 1}
      :commit()
  end
end
