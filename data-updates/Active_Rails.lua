if mods["Active_Rails"] then
  -- Better subgroup placement
  if mods["SchallCircuitGroup"] then
    data.raw["rail-planner"]["active-rail"].subgroup = "circuit-input"
    data.raw.item["rail-combinator"].subgroup = "circuit-input"
  end

  -- Require battery in recipe as other vanilla circuit network entities do in pyanodons
  if mods["pyalternativeenergy"] then
    table.insert(data.raw.recipe["active-rail"].ingredients, {type = "item", name = "battery-mk01", amount = 1})
  end

  -- Unlock with automated rail transportation technology
  data.raw.recipe["active-rail"].enabled = false
  table.insert(data.raw.technology["automated-rail-transportation"].effects, {type = "unlock-recipe", recipe = "active-rail"})
end
