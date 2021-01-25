local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","cn-event")


RegisterServerEvent('event:start')
AddEventHandler('event:start', function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
		TriggerClientEvent('event:makeTheMarker', -1)
		Citizen.Wait(10000)
		TriggerClientEvent("pNotify:SendNotification",player,{text = "Forlader du området kan du dø",type = "success",timeout = (2000),layout = "centerLeft",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"},killer = true})
end)

RegisterCommand('event', function(source, name)
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	TriggerEvent('event:start', player)
end)
