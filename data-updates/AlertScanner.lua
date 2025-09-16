if mods["AlertScanner"] then
  -- Better subgroup placement
  data.raw.item["alert-scanner"].subgroup = "circuit-input"

  -- Require battery in recipe as other vanilla circuit network entities do in pyanodons
  if mods["pyalternativeenergy"] then
    table.insert(data.raw.recipe["alert-scanner"].ingredients, {type = "item", name = "battery-mk01", amount = 1})
  end
end
