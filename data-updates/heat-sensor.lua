if mods["heat-sensor"] then
  if not mods["heat-sensor-tweaks"] then
    -- Better subgroup placement
    data.raw.item["heat-sensor"].subgroup = "circuit-input"
  end

  -- Require battery in recipe as other vanilla circuit network entities do in pyanodons
  if mods["pyalternativeenergy"] then
    table.insert(data.raw.recipe["heat-sensor"].ingredients, {type = "item", name = "battery-mk01", amount = 1})
  end

  if not mods["heat-sensor-tweaks"] then
    -- Unlock with advanced-material-processing-2 technology
    data.raw.recipe["heat-sensor"].enabled = false
    table.insert(data.raw.technology["advanced-material-processing-2"].effects, {type = "unlock-recipe", recipe = "heat-sensor"})
  end
end
