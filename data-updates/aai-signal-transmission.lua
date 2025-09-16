if mods["aai-signal-transmission"] then
  -- Better subgroup placement with SchallCircuitGroup
  data.raw.item["aai-signal-sender"].subgroup = "circuit-connection"
  data.raw.item["aai-signal-receiver"].subgroup = "circuit-connection"

  -- Replace ingredients with more reasonable ones, py is hard enough already
  for _, recipe in pairs({"aai-signal-sender", "aai-signal-receiver"}) do
    for replacee, replacement in pairs({["electric-engine-unit"] = "mechanical-parts-01", ["processing-unit"] = "electronic-circuit"}) do
      local ingredient = nil
      for i = 1, #data.raw.recipe[recipe].ingredients do
        ingredient = data.raw.recipe[recipe].ingredients[i]

        if ingredient.name == replacee then
          data.raw.recipe[recipe].ingredients[i].name = replacement
          break
        end
      end
    end
  end

  -- Make aai-signal-transmission technology dependent on circuit-network and machine-components-mk01 technology to make it available earlier and use the same science packs as machine-components-mk01 technology
  data.raw.technology["aai-signal-transmission"].prerequisites = {"circuit-network", "machine-components-mk01"}
  data.raw.technology["aai-signal-transmission"].unit = data.raw.technology["machine-components-mk01"].unit
end
