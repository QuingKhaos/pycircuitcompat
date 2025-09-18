if mods["recipe_combinator"] then
  if not mods["recipe_combinator_tweaks"] then
    -- Better subgroup placement
    data.raw.item["recipe-combinator-main"].subgroup = "circuit-combinator"
  end
end
