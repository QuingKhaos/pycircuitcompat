if mods["cybersyn"] then
  -- Remove manual color module if Automatic_Train_Painter is installed
  if mods["Automatic_Train_Painter"] then
    data.raw["generator-equipment"]["manual-color-module"] = nil
    data.raw.item["manual-color-module"] = nil
    data.raw.recipe["manual-color-module"] = nil

    for i = 1, #data.raw.technology["automated-rail-transportation"].effects do
      if data.raw.technology["automated-rail-transportation"].effects[i].recipe == "manual-color-module" then
        table.remove(data.raw.technology["automated-rail-transportation"].effects, i)
        break
      end
    end
  end
end
