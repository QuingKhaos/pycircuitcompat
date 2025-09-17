if mods["compaktcircuit"] then
  if not mods["compaktcircuittweaks"] or not settings.startup["compaktcircuittweaks-recipe-tech-overhaul"].value then
    -- Remove advanced circuit from recipe, py is hard enough already
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

    -- Make compaktcircuit-tech technology dependent on circuit-network technology to make it available earlier
    data.raw.technology["compaktcircuit-tech"].prerequisites = {"circuit-network"}
  end

  -- And use the same science packs as advanced-combinators technology
  data.raw.technology["compaktcircuit-tech"].unit = data.raw.technology["advanced-combinators"].unit
end
