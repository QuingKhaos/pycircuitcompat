if mods["beltcounter2"] then
  if not mods["beltcounter2-tweaks"] then
    -- Better subgroup placement
    data.raw.item["belt-arithmetic-combinator"].subgroup = "circuit-input"
  end

  if not mods["beltcounter2-tweaks"] then
    -- Replace power switch with arithmetic combinator, py is hard enough already
    for i = 1, #data.raw.recipe["belt-arithmetic-combinator"].ingredients do
      ingredients = data.raw.recipe["belt-arithmetic-combinator"].ingredients[i]
      if ingredients.name == "power-switch" then
        data.raw.recipe["belt-arithmetic-combinator"].ingredients[i].name = "arithmetic-combinator"
        break
      end
    end
  end
end
