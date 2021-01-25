local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_bank")

RegisterServerEvent('medSystem:print')
AddEventHandler('medSystem:print', function(req, pulse, area, blood, x, y, z, bleeding)

	local source = source

	local xPlayer =  source
	Wait(100)

	local user_id = vRP.getUserId({source})
	 local player = vRP.getUserSource({user_id})
	 local nuser_id = vRP.getUserId({source})
				vRP.getUserIdentity({nuser_id, function(identity)
				 if identity then
					local name = identity.firstname .. " " .. identity.name
					print(name)
					local xPlayers = GetPlayers()
					for i=1, #xPlayers, 1 do
						TriggerClientEvent('medSystem:near', xPlayers[i] ,x ,y ,z , pulse, blood, name, area, bleeding)
					end
				end
			end})
	-- local name = "Lasse Christensen" --getIdentity(_source)



end)

RegisterCommand('skade', function(source, args)
	local user_id = vRP.getUserId({source})
	 local player = vRP.getUserSource({user_id})
	-- if args[1] ~= nil then
	TriggerClientEvent('medSystem:send', player, source)
	-- TriggerClientEvent('medSystem:send', args[1], source)
	-- else
	-- TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Indtast id på nærmeste spiller!")
	-- end

end, false)
