if mods["blueprint_reader"] then
  if not mods["blueprint_reader_tweaks"] then
    -- Better subgroup placement
    data.raw.item["blueprint_reader_blueprint-combinator"].subgroup = "circuit-input"
  end

  -- Require battery in recipe as other vanilla circuit network entities do in pyanodons
  if mods["pyalternativeenergy"] then
    table.insert(data.raw.recipe["blueprint_reader_blueprint-combinator"].ingredients, {type = "item", name = "battery-mk01", amount = 1})
  end
end
