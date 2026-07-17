local khaoslib_setting = require("__khaoslib__.settings.setting")

if mods["compaktcircuit"] then
  -- pY already removes processing units from compact circuits
  khaoslib_setting:load("khaoscircuitry-compaktcircuit-rm-processing-units"):force(false):commit()
end
