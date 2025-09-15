if mods["CircuitHUD-V2"] then
  -- Better subgroup placement
  if mods["SchallCircuitGroup"] then
    data.raw.item["hud-combinator"].subgroup = "circuit-visual"
  end

  -- Require battery in recipe as other vanilla circuit network entities do in pyanodons
  if mods["pyalternativeenergy"] then
    table.insert(data.raw.recipe["hud-combinator"].ingredients, {type = "item", name = "battery-mk01", amount = 1})
  end
end
