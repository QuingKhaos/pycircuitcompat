if mods["fcpu"] then
  -- Better subgroup placement
  data.raw.item["fcpu"].subgroup = "circuit-combinator"

  -- Replace processing unit with more electronic circuits, py is hard enough already
  for i = 1, #data.raw.recipe["fcpu"].ingredients do
    ingredients = data.raw.recipe["fcpu"].ingredients[i]
    if ingredients.name == "processing-unit" then
      data.raw.recipe["fcpu"].ingredients[i].name = "electronic-circuit"
      data.raw.recipe["fcpu"].ingredients[i].amount = 10
      break
    end
  end

  -- Make fcpu technology dependent on circuit-network technology to make it available earlier and use the same science packs as advanced-combinators technology
  data.raw.technology["fcpu"].prerequisites = {"circuit-network"}
  data.raw.technology["fcpu"].unit = data.raw.technology["advanced-combinators"].unit
end
