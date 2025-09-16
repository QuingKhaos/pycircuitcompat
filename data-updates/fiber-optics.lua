if mods["fiber-optics"] then
  -- Better subgroup placement
  data.raw.item["hps__fo-optical-connector"].subgroup = "circuit-connection"

  -- Replace advanced circuit with electronic circuit, py is hard enough already
  for i = 1, #data.raw.recipe["hps__fo-optical-connector"].ingredients do
    ingredients = data.raw.recipe["hps__fo-optical-connector"].ingredients[i]
    if ingredients.name == "advanced-circuit" then
      data.raw.recipe["hps__fo-optical-connector"].ingredients[i].name = "electronic-circuit"
      break
    end
  end

  -- Require battery in recipe as other vanilla circuit network entities do in pyanodons
  if mods["pyalternativeenergy"] then
    table.insert(data.raw.recipe["hps__fo-optical-connector"].ingredients, {type = "item", name = "battery-mk01", amount = 1})
  end

  -- Make optical-connector-technology dependent on circuit-network and electric-energy-distribution-2 technologies only to make it available earlier and use the same science packs as electric-energy-distribution-2 technology
  data.raw.technology["hps__fo-optical-connector-technology"].prerequisites = {"circuit-network", "electric-energy-distribution-2"}
  data.raw.technology["hps__fo-optical-connector-technology"].unit = data.raw.technology["electric-energy-distribution-2"].unit
end
