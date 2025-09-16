if mods["stack-combinator-redux"] then
  -- Require battery in recipe as other vanilla circuit network entities do in pyanodons
  if mods["pyalternativeenergy"] then
    table.insert(data.raw.recipe["hps__sc-stack-combinator-redux"].ingredients, {type = "item", name = "battery-mk01", amount = 1})
  end
end
