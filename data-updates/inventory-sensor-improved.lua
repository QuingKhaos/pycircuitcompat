if mods["inventory-sensor-improved"] then
  if not mods["inventory-sensor-improved-tweaks"] then
    -- Better subgroup placement
    data.raw.item["hps__is-inventory-sensor"].subgroup = "circuit-input"
  end

  -- Require battery in recipe as other vanilla circuit network entities do in pyanodons
  if mods["pyalternativeenergy"] then
    table.insert(data.raw.recipe["hps__is-inventory-sensor"].ingredients, {type = "item", name = "battery-mk01", amount = 1})
  end
end
