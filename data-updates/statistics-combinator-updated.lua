if mods["statistics-combinator-updated"] then
  -- Better subgroup placement
  data.raw.item["production-combinator"].subgroup = "circuit-input"
  data.raw.item["consumption-combinator"].subgroup = "circuit-input"

  -- Remove advanced circuit from recipe, py is hard enough already
  for _, recipe in pairs({"production-combinator", "consumption-combinator"}) do
    for _, ingredient_to_remove in pairs({"advanced-circuit"}) do
      local ingredients = nil

      for i = 1, #data.raw.recipe[recipe].ingredients do
        ingredients = data.raw.recipe[recipe].ingredients[i]

        if ingredients.name == ingredient_to_remove then
          table.remove(data.raw.recipe[recipe].ingredients, i)
          break
        end
      end
    end
  end

  -- Make statistics-combinator technology dependent on circuit-network technology to make it available earlier and use the same science packs as advanced-combinators technology
  data.raw.technology["statistics-combinator"].prerequisites = {"circuit-network"}
  data.raw.technology["statistics-combinator"].unit = data.raw.technology["advanced-combinators"].unit
end
