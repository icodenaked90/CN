
local function tick()
  TriggerEvent("vRP:MySQL_tick")
  SetTimeout(1, tick)
end
tick()
