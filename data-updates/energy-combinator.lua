if mods["energy-combinator"] then
  if not mods["energy-combinator-tweaks"] then
    -- Better subgroup placement
    data.raw.item["power-combinator"].subgroup = "circuit-input"
    data.raw.item["power-combinator-MK2"].subgroup = "circuit-input"
  end

  -- Replace advanced circuit with electronic circuit, py is hard enough already
  for i = 1, #data.raw.recipe["power-combinator-MK2"].ingredients do
    ingredients = data.raw.recipe["power-combinator-MK2"].ingredients[i]
    if ingredients.name == "advanced-circuit" then
      data.raw.recipe["power-combinator-MK2"].ingredients[i].name = "electronic-circuit"
      break
    end
  end

  -- Make power-combinator technology use the same science packs as electric-energy-distribution-1 technology
  data.raw.technology["power-combinator"].unit = data.raw.technology["electric-energy-distribution-1"].unit

  -- Make power-combinator-MK2 technology use the same science packs as electric-energy-distribution-2 technology
  data.raw.technology["power-combinator-MK2"].unit = data.raw.technology["electric-energy-distribution-2"].unit
end
