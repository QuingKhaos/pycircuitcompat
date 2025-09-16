if mods["Research_Control_Combinator_Updated"] then
  -- Better subgroup placement
  data.raw.item["Research_Control_Combinator"].subgroup = "circuit-combinator"

  -- Require battery in recipe as other vanilla circuit network entities do in pyanodons
  if mods["pyalternativeenergy"] then
    table.insert(data.raw.recipe["Research_Control_Combinator"].ingredients, {type = "item", name = "battery-mk01", amount = 1})
  end

  -- Disable recipe as it should be unlocked by technology
  data.raw.recipe["Research_Control_Combinator"].enabled = false

  -- Make research-control-combinator technology use the same science packs as advanced-combinators technology
  data.raw.technology["research-control-combinator"].unit = data.raw.technology["advanced-combinators"].unit
end
