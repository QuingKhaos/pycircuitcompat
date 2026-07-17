local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if mods["energy-combinator"] then
  khaoslib_technology:load("power-combinator")
    :remove_science_pack("logistic-science-pack")
    :commit()

  khaoslib_technology:load("power-combinator-MK2")
    :add_prerequisite("basic-electronics")
    :remove_science_pack("chemical-science-pack")
    :commit()
end
