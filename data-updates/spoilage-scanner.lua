if mods["spoilage-scanner"] then
  if not mods["spoilage-scanner-tweaks"] then
    -- Better subgroup placement
    data.raw.item["spoilage-scanner"].subgroup = "circuit-input"
  end
end
