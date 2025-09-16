if mods["diode-combinator"] then
  -- Make signal-diodes technology use the same science packs as advanced-combinators technology
  data.raw.technology["signal-diodes"].unit = data.raw.technology["advanced-combinators"].unit
end
