if mods["DisplayPlatesForked"] then
  if not mods["DisplayPlatesForkedTweaks"] then
    -- Better subgroup placement
    data.raw.item["copper-display-small"].subgroup = "circuit-visual"
    data.raw.item["copper-display-medium"].subgroup = "circuit-visual"
    data.raw.item["copper-display"].subgroup = "circuit-visual"
    data.raw.item["iron-display-small"].subgroup = "circuit-visual"
    data.raw.item["iron-display-medium"].subgroup = "circuit-visual"
    data.raw.item["iron-display"].subgroup = "circuit-visual"
    data.raw.item["steel-display-small"].subgroup = "circuit-visual"
    data.raw.item["steel-display-medium"].subgroup = "circuit-visual"
    data.raw.item["steel-display"].subgroup = "circuit-visual"
  end
end
