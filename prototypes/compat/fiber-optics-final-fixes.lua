local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if mods["fiber-optics"] then
  khaoslib_technology:load("hps__fo-optical-connector-technology")
    :add_prerequisite("basic-electronics")
    :remove_prerequisite("advanced-circuit")
    :remove_science_pack("chemical-science-pack")
    :commit()
end
