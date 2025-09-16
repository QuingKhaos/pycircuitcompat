if mods["compaktcircuit"] then
  -- Better subgroup placement
  if mods["SchallCircuitGroup"] then
    data.raw.item["compaktcircuit-input"].subgroup = "circuit-combinator"
    data.raw.item["compaktcircuit-internal_iopoint"].subgroup = "circuit-input"
    data.raw.item["compaktcircuit-display"].subgroup = "circuit-visual"
  end

  -- Require battery in recipe as other vanilla circuit network entities do in pyanodons, if compact circuits require power in packed mode
  if mods["pyalternativeenergy"] and not settings.startup["compaktcircuit-no_energy"].value then
    table.insert(data.raw.recipe["compaktcircuit-processor"].ingredients, {type = "item", name = "battery-mk01", amount = 1})
    table.insert(data.raw.recipe["compaktcircuit-processor_1x1"].ingredients, {type = "item", name = "battery-mk01", amount = 1})
  end
end
