if mods["Research_Control_Combinator_Updated"] then
  if not mods["Research_Control_Combinator_Updated_Tweaks"] then
    -- Better subgroup placement
    data.raw.item["Research_Control_Combinator"].subgroup = "circuit-combinator"
  end

  -- Require battery in recipe as other vanilla circuit network entities do in pyanodons
  if mods["pyalternativeenergy"] then
    table.insert(data.raw.recipe["Research_Control_Combinator"].ingredients, {type = "item", name = "battery-mk01", amount = 1})
  end

  if not mods["Research_Control_Combinator_Updated_Tweaks"] then
    -- Disable recipe as it should be unlocked by technology
    data.raw.recipe["Research_Control_Combinator"].enabled = false
  end

  if not mods["Research_Control_Combinator_Updated_Tweaks"] then
    -- Make research-control-combinator technology use the same science packs as advanced-combinators technology
    data.raw.technology["research-control-combinator"].unit = data.raw.technology["advanced-combinators"].unit
  end
end
