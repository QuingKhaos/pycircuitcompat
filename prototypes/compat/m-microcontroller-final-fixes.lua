local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if mods["m-microcontroller"] then
  -- Fix prerequisites, as pY's compatibility is not moving it in the tech tree
  khaoslib_technology:load("microcontroller")
    :remove_prerequisite("advanced-circuit")
    :add_prerequisite("basic-electronics")
    :commit()
end
