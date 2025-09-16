if mods["filter-combinator-improved"] then
   -- Require battery in recipe as other vanilla circuit network entities do in pyanodons
  if mods["pyalternativeenergy"] then
    table.insert(data.raw.recipe["hps__fc-filter-combinator"].ingredients, {type = "item", name = "battery-mk01", amount = 1})
  end
end
