local khaoslib_setting = require("__khaoslib__.settings.setting")

if mods["beltcounter2"] then
  khaoslib_setting:load("khaoscircuitry-beltcounter2-change-recipe"):force(true):commit()
end

if mods["compaktcircuit"] then
  -- pY already removes processing units from compact circuits
  khaoslib_setting:load("khaoscircuitry-compaktcircuit-rm-processing-units"):force(false):commit()
end

if mods["Cybersyn-Content-Reader"] then
  khaoslib_setting:load("khaoscircuitry-cybersyn-content-reader-rm-custom-technology"):force(true):commit()
end

if mods["diode-combinator"] then
  khaoslib_setting:load("khaoscircuitry-diode-combinator-rm-custom-technology"):force(true):commit()
end

if mods["Research_Control_Combinator_Updated"] then
  khaoslib_setting:load("khaoscircuitry-research-control-combinator-rm-custom-technology"):force(true):commit()
end

if mods["statistics-combinator-updated"] then
  khaoslib_setting:load("khaoscircuitry-statistics-combinator-rm-custom-technology"):force(true):commit()
end
