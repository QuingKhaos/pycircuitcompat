if mods["cybersyn"] then
  if not mods["cybersyn-tweaks"] then
    -- Better subgroup placement
    data.raw.item["cybersyn-combinator"].subgroup = "circuit-combinator"
  end

  -- Require battery in recipe as other vanilla circuit network entities do in pyanodons
  if mods["pyalternativeenergy"] then
    table.insert(data.raw.recipe["cybersyn-combinator"].ingredients, {type = "item", name = "battery-mk01", amount = 1})
  end

  -- Make cybersyn-train-network technology use the same science packs as automated-rail-transportation technology
  data.raw.technology["cybersyn-train-network"].unit = data.raw.technology["automated-rail-transportation"].unit
end
