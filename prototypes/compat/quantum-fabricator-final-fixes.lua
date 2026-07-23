local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if mods["quantum-fabricator"] then
  if mods["pyalternativeenergy"] then
    -- Require battery in recipe as other vanilla circuit network entities do in Pyanodons
    khaoslib_recipe:load("qf-storage-reader")
      :add_ingredient {type = "item", name = "battery-mk01", amount = 1}
      :commit()
  end

  khaoslib_technology:load("matter-dedigitization")
    :remove_prerequisite("advanced-circuit")
    :add_prerequisite("basic-electronics")
    :commit()
end
