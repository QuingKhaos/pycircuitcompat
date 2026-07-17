local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["Cybersyn-Content-Reader"] then
  if mods["pyalternativeenergy"] then
    -- Require battery in recipe as other vanilla circuit network entities do in Pyanodons
    khaoslib_recipe:load("cybersyn-provider-reader")
      :add_ingredient {type = "item", name = "battery-mk01", amount = 1}
      :commit()

    khaoslib_recipe:load("cybersyn-requester-reader")
      :add_ingredient {type = "item", name = "battery-mk01", amount = 1}
      :commit()

    khaoslib_recipe:load("cybersyn-delivery-reader")
      :add_ingredient {type = "item", name = "battery-mk01", amount = 1}
      :commit()
  end
end
