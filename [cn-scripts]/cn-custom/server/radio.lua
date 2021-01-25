local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")


vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_revive")


-- RegisterCommand('radio', function(source, args)
--   local user_id = vRP.getUserId({source})
--   local player = vRP.getUserSource({user_id})
--     local ped = GetPlayerPed(source)
--     frekvens = parseInt(args[2])
--     if vRP.hasInventoryItem({user_id, "radio_våbendealer"}) then
--       local radio = frekvens
--       TriggerClientEvent("joinRadio",player,radio,type,player)
--     end
--
-- end)

RegisterCommand('radio', function(source, args)
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
      local ped = GetPlayerPed(source)
      frekvens = parseInt(args[1])
      if frekvens == 1 or frekvens == 2 then frekvens = 0 end
      if vRP.hasInventoryItem({user_id, "radio"}) then
        local radio = frekvens
        TriggerClientEvent("joinRadio",player,radio,type,player)
      end
end)

RegisterCommand('leave', function(source, args)
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
      local ped = GetPlayerPed(source)
      frekvens = parseInt(args[1])
      if frekvens == 1 or frekvens == 2 then frekvens = 0 end
      if vRP.hasInventoryItem({user_id, "radio"}) then
        local radio = frekvens
        TriggerClientEvent("leaveRadio",player,radio,type,player)
      end
end)

--
-- AddEventHandler('chatMessage', function(source, author, msg)
--     local args = stringsplit(msg, ' ')
--     if string.lower(args[1]) == "/radio" then
--       local user_id = vRP.getUserId({source})
--         frekvens = parseInt(args[2])
--         if frekvens ~= nil then
--           if vRP.hasInventoryItem({user_id, "radio_våbendealer"}) then
--             local radio = frekvens
--             TriggerClientEvent("joinRadio",player,radio,type,player)
--           end
--         else
--           TriggerClientEvent("pNotify:SendNotification",source,{text = "ID "..args[2].." er ugyldigt eller ikke online.", type = "error", queue = "global", timeout = 4000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
--         end
--         CancelEvent()
--       end
-- end)
