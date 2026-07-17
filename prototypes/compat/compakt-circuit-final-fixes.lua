local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if mods["compaktcircuit"] then
  if mods["pyalternativeenergy"] then
    -- Require battery in recipe as other vanilla circuit network entities do in Pyanodons, if compact circuits require power in packed mode
    if not settings.startup["compaktcircuit-no_energy"].value then
      khaoslib_recipe:load("compaktcircuit-processor")
        :add_ingredient {type = "item", name = "battery-mk01", amount = 1}
        :commit()

      khaoslib_recipe:load("compaktcircuit-processor_1x1")
        :add_ingredient {type = "item", name = "battery-mk01", amount = 1}
        :commit()
    end
  end

  -- Fix prerequisites, as pY's compact circuits compatibility is not moving it in the tech tree
  local tech = khaoslib_technology:load("compaktcircuit-tech")
    :set_prerequisites {"circuit-network"}

  if not settings.startup["khaoscircuitry-compaktcircuit-rm-advanced-circuits"].value then
    tech:add_prerequisite("basic-electronics")
  else
    tech:remove_science_pack("logistic-science-pack")
      :remove_science_pack("py-science-pack-2")
  end

  tech:commit()
end
