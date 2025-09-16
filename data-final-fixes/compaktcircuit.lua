if mods["compaktcircuit"] then
  -- Remove advanced circuit and processing unit from recipe, py is hard enough already
  for _, recipe in pairs({"compaktcircuit-processor", "compaktcircuit-processor_1x1"}) do
    for _, ingredient_to_remove in pairs({"advanced-circuit"}) do
      local index = nil
      local ingredients = nil

      for i = 1, #data.raw.recipe[recipe].ingredients do
        ingredients = data.raw.recipe[recipe].ingredients[i]

        if ingredients.name == ingredient_to_remove then
          index = i
          break
        end
      end

      if index ~= nil then
        table.remove(data.raw.recipe[recipe].ingredients, index)
      end
    end
  end

  -- Make tech dependent on circuit network to make it available earlier and use the same science packs
  data.raw.technology["compaktcircuit-tech"].prerequisites = {"circuit-network"}
  data.raw.technology["compaktcircuit-tech"].unit = data.raw.technology["circuit-network"].unit
end
