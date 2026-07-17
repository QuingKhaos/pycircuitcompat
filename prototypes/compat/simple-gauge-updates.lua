local create_from_pipe_prototype = require("__simple-gauge__.scripts.create_from_pipe_prototype")
local khaoslib_item = require("__khaoslib__.prototypes.item")

  if mods["pyindustry"] then
    create_from_pipe_prototype("niobium-pipe", mods["pycoalprocessing"] and "niobium" or "py-storage-tanks")
    khaoslib_item:load("simple-gauge-niobium-pipe"):set {subgroup = "circuit-input"} :commit()
  end

  if mods["pyhightech"] then
    create_from_pipe_prototype("ht-pipes", "coal-processing-3")
    khaoslib_item:load("simple-gauge-ht-pipes"):set {subgroup = "circuit-input"} :commit()
  end
