if mods["simple-gauge"] then
  -- Better subgroup placement
  data.raw.item["simple-gauge"].subgroup = "circuit-input"

  create_from_pipe_prototype = require("__simple-gauge__.scripts.create_from_pipe_prototype")

  if mods["pyindustry"] then
    create_from_pipe_prototype("niobium-pipe", mods["pycoalprocessing"] and "niobium" or "py-storage-tanks")
    data.raw.item["simple-gauge-niobium-pipe"].subgroup = "circuit-input"
  end

  if mods["pyhightech"] then
    create_from_pipe_prototype("ht-pipes", "coal-processing-3")
    data.raw.item["simple-gauge-ht-pipes"].subgroup = "circuit-input"
  end
end
