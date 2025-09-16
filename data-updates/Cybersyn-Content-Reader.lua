if mods["Cybersyn-Content-Reader"] then
  -- Better subgroup placement
  data.raw.item["cybersyn-provider-reader"].subgroup = "circuit-input"
  data.raw.item["cybersyn-requester-reader"].subgroup = "circuit-input"
  data.raw.item["cybersyn-delivery-reader"].subgroup = "circuit-input"

  -- Require battery in recipe as other vanilla circuit network entities do in pyanodons
  if mods["pyalternativeenergy"] then
    table.insert(data.raw.recipe["cybersyn-provider-reader"].ingredients, {type = "item", name = "battery-mk01", amount = 1})
    table.insert(data.raw.recipe["cybersyn-requester-reader"].ingredients, {type = "item", name = "battery-mk01", amount = 1})
    table.insert(data.raw.recipe["cybersyn-delivery-reader"].ingredients, {type = "item", name = "battery-mk01", amount = 1})
  end

  -- Remove circuit-network-2 technology and move unlocks to cybersyn-train-network technology
  if data.raw.technology["circuit-network-2"] then
    data.raw.technology["circuit-network-2"] = nil
  end

  if data.raw.technology["cybersyn-train-network"] then
    table.insert(data.raw.technology["cybersyn-train-network"].effects, { type = "unlock-recipe", recipe = "cybersyn-provider-reader" })
    table.insert(data.raw.technology["cybersyn-train-network"].effects, { type = "unlock-recipe", recipe = "cybersyn-requester-reader" })
    table.insert(data.raw.technology["cybersyn-train-network"].effects, { type = "unlock-recipe", recipe = "cybersyn-delivery-reader" })
  end
end
