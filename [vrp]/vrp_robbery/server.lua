--[[
    FiveM Scripts
    Copyright C 2018  Sighmir

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published
    by the Free Software Foundation, either version 3 of the License, or
    at your option any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_bank")

local cooldown = 0

local banks = cfg.banks

local robbers = {}

function get3DDistance(x1, y1, z1, x2, y2, z2)
	return math.sqrt(math.pow(x1 - x2, 2) + math.pow(y1 - y2, 2) + math.pow(z1 - z2, 2))
end

RegisterServerEvent('es_bank:toofar')
AddEventHandler('es_bank:toofar', function(robb)
	if(robbers[source])then
		TriggerClientEvent('es_bank:toofarlocal', source)
		robbers[source] = nil
		local player = GetPlayerPed(-1)
		local playerCoords = GetEntityCoords(player)
		TriggerClientEvent('chatMessage', -1, 'NEWS', {255, 0, 0}, "Røveriet blev aflyst: ^2" .. banks[robb].nameofbank)
	end
end)

RegisterServerEvent('es_bank:playerdied')
AddEventHandler('es_bank:playerdied', function(robb)
	if(robbers[source])then
		TriggerClientEvent('es_bank:playerdiedlocal', source)
		robbers[source] = nil
		local player = GetPlayerPed(-1)
		local playerCoords = GetEntityCoords(player)
		TriggerClientEvent('chatMessage', -1, 'NEWS', {255, 0, 0}, "Røveriet blev aflyst: ^2" .. banks[robb].nameofbank)
	end
end)

RegisterServerEvent('es_bank:rob')
AddEventHandler('es_bank:rob', function(robb)
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local cops = vRP.getUsersByPermission({cfg.permission})
	local antalbetjente = #cops

	if vRP.hasPermission({user_id,cfg.permission}) then
		vRPclient.notify(player,{"~r~Politiet kan ikke røve."})
	else
		local ncops = cfg.cops
		if banks[robb].mincops ~= nil then
			ncops = banks[robb].mincops
		end
		if #cops >= ncops then
			if banks[robb] then
				local bank = banks[robb]

				if (cooldown > 1) then
					TriggerClientEvent('chatMessage', player, 'ROBBERY', {255, 0, 0}, "Dette sted er for nyligt blevet røvet, venligst vent: ^2" .. cooldown .. "^0 sekunder.")
					return
				end
		local player1 = GetPlayerPed(-1)
		local playerCoords = GetEntityCoords(player1)
		local users = vRP.getUsers({})
			for k,v in pairs(users) do
	        if v ~= nil then
	            if vRP.hasGroup({k,"Politi-Job"}) or vRP.hasGroup({k,"EMS-Job"}) or vRP.hasGroup({k,"Journalist-Job"}) then
	            	 TriggerClientEvent('chatMessage', v, "Røveri: Alarmen i "..banks[robb].nameofbank.." er blevet udløst!")
	            end
	        end
	    end
				TriggerClientEvent('chatMessage', player, 'SYSTEM', {255, 0, 0}, "Du har startet et røveri ved: ^2" .. bank.nameofbank .. "^0, kom ikke for langt væk fra dette punkt!")
				cooldown = 3600*2
				TriggerClientEvent('chatMessage', player, 'SYSTEM', {255, 0, 0}, "Beskyt stedet imens det bliver tømt ^1" ..bank.seconds / 60 .." ^0minutter og tingene er dine!")
				TriggerClientEvent('es_bank:currentlyrobbing', player, robb, bank.seconds)
				banks[robb].lastrobbed = os.time()
				robbers[player] = robb
				local savedSource = player
				SetTimeout(bank.seconds*1000, function()
					if(robbers[savedSource])then
						if(user_id)then
							vRP.giveInventoryItem({user_id,"dirty_money",bank.reward * antalbetjente,true})
							if bank.type == "kiosk" then
								local redbulls = math.random(2,5)
								local kebabs = math.random(2,5)
								local smoeger = math.random(2,5)
								vRP.giveInventoryItem({user_id,"redgull",redbulls,true})
								vRP.giveInventoryItem({user_id,"kebab",kebabs,true})
								vRP.giveInventoryItem({user_id,"cigaretpakke",smoeger,true})
							end
							if bank.type == "juvelbutikken" then
								local ure = math.random(2,5)
								local tasker = math.random(2,5)
								local kaeder = math.random(2,5)
								vRP.giveInventoryItem({user_id,"rolex",ure,true})
								vRP.giveInventoryItem({user_id,"gucci",tasker,true})
								vRP.giveInventoryItem({user_id,"guldklaede",kaeder,true})
							end
							TriggerClientEvent('chatMessage', -1, 'Nyheder', {255, 0, 0}, "Røveriet er ovre: ^2" .. bank.nameofbank .. "^0!")
							TriggerClientEvent('es_bank:robberycomplete', savedSource, bank.reward, antalbetjente)
						end
					end
				end)
			end
		else
			vRPclient.notify(player,{"~r~Ikke nok betjente i byen."})
		end
	end
end)



RegisterServerEvent('es_bank:getCooldown')
AddEventHandler('es_bank:getCooldown', function()
	TriggerClientEvent('es_bank:readCooldown', source, cooldown)
end)

Citizen.CreateThread(function()
	local time = os.time()
	while true do
		Citizen.Wait(1000)
		if cooldown < 1  then
		else
			cooldown = cooldown - 1
		end
	end
end)


function sendToDiscord(name, message, discord)
    if message == nil or message == '' or message:sub(1, 1) == '/' then return FALSE end
    PerformHttpRequest(discord, function(err, text, headers) end, 'POST', json.encode({avatar_url = "https://i.imgur.com/HUgauWf.png",username = name,content = message}), { ['Content-Type'] = 'application/json' })
end
