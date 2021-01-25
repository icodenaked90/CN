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

local robbing = false
local bank = ""
local secondsRemaining = 0

function bank_DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function bank_drawTxt(x,y ,width,height,scale, text, r,g,b,a, outline)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    if(outline)then
	    SetTextOutline()
	end
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end

local banks = cfg.banks


RegisterNetEvent('es_bank:currentlyrobbing')
AddEventHandler('es_bank:currentlyrobbing', function(robb, seconds)
	robbing = true
	bank = robb
	secondsRemaining = seconds
end)

RegisterNetEvent('es_bank:toofarlocal')
AddEventHandler('es_bank:toofarlocal', function(robb)
	robbing = false
	TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0}, "Røveriet blev aflyst, du vil ikke modtage noget.")
	robbingName = ""
	secondsRemaining = 0
	incircle = false
end)

RegisterNetEvent('es_bank:playerdiedlocal')
AddEventHandler('es_bank:playerdiedlocal', function(robb)
	robbing = false
	TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0}, "Røveriet blev aflyst, du døde!.")
	robbingName = ""
	secondsRemaining = 0
	incircle = false
end)


RegisterNetEvent('es_bank:robberycomplete')
AddEventHandler('es_bank:robberycomplete', function(reward, antalbetjente)
	robbing = false
	TriggerEvent('chatMessage', 'SYSTEM', {255, 0, 0}, "Røveriet gennemført du modtog:^2" .. reward * antalbetjente)
	bank = ""
	secondsRemaining = 0
	incircle = false
end)

Citizen.CreateThread(function()
	while true do
		if robbing then
			Citizen.Wait(1000)
			if(secondsRemaining > 0)then
				secondsRemaining = secondsRemaining - 1
			end
		end

		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()
	while true do
		local pos = GetEntityCoords(GetPlayerPed(-1), true)
		for k,v in pairs(banks)do
			local pos2 = v.position

			if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 15.0)then
				if IsPlayerWantedLevelGreater(PlayerId(),0) or ArePlayerFlashingStarsAboutToDrop(PlayerId()) then
					local wanted = GetPlayerWantedLevel(PlayerId())
					Citizen.Wait(5000)
				    SetPlayerWantedLevel(PlayerId(), wanted, 0)
					SetPlayerWantedLevelNow(PlayerId(), 0)
				end
			end
		end
		Citizen.Wait(0)
	end
end)

if cfg.blips then -- blip settings
  Citizen.CreateThread(function()
	for k,v in pairs(banks)do
		local ve = v.position

		local blip = AddBlipForCoord(ve.x, ve.y, ve.z)
		SetBlipSprite(blip, 278)
		SetBlipScale(blip, 0.8)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString("Robbable Bank")
		EndTextCommandSetBlipName(blip)
	end
  end)
end
incircle = false
local number = 0

Citizen.CreateThread(function()
	while true do
		local pos = GetEntityCoords(GetPlayerPed(-1), true)

		for k,v in pairs(banks)do
			local pos2 = v.position

			if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 15.0)then
				if not robbing then
					DrawMarker(23, v.position.x, v.position.y, v.position.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, 91, 202, 242, 105, 0, 0, 0, 50)

					if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 2)then
						if (incircle == false) then
							bank_DisplayHelpText("Tryk ~INPUT_CONTEXT~ for at røve ~b~" .. v.nameofbank .. "~w~ ")
						end
						incircle = true
						if(IsControlJustReleased(1, 51))then
							local test = true
							RegisterNetEvent('es_bank:readCooldown')
							AddEventHandler('es_bank:readCooldown', function(cooldown)
								print(cooldown)
								if (cooldown < 1 or cooldown == 3600 and test) then
									--sendNoti()
									test = false
								end
							end)
							TriggerServerEvent('es_bank:rob', k)
							local cooldown = TriggerServerEvent('es_bank:getCooldown')
							-- function sendNoti()
								-- number = 1 + number
								-- local coords = v.position
								-- local message = number .."^7^*Alarmen er blevet udløst i ".. v.nameofbank .."| " .. GetStreetName(coords) .. " !"
								-- TriggerServerEvent('cn_notify:notifyPolice', "Alarm %number er blevet udløst i ".. v.nameofbank,{v.position.x, v.position.y, v.position.z})

								-- -- NotifyPeople(message,coords,false)
							-- end



						end
					elseif(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) > 2)then
						incircle = false
					end
				end
			end
		end

		if robbing then
		    -- SetPlayerWantedLevel(PlayerId(), 4, 0)
            -- SetPlayerWantedLevelNow(PlayerId(), 0)

			bank_drawTxt(0.66, 1.44, 1.0,1.0,0.4, "Røveri igang: ~r~" .. secondsRemaining .. "~w~ sekunder tilbage", 255, 255, 255, 255)

			local pos2 = banks[bank].position
			local ped = GetPlayerPed(-1)

            if IsEntityDead(ped) then
			TriggerServerEvent('es_bank:playerdied', bank)
			elseif (Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) > 15)then
				TriggerServerEvent('es_bank:toofar', bank)
			end
		end

		Citizen.Wait(0)
	end
end)

function GetStreetName(playerPos)
    local s1, s2 = Citizen.InvokeNative( 0x2EB41072B4C1E4C0, playerPos.x, playerPos.y, playerPos.z, Citizen.PointerValueInt(), Citizen.PointerValueInt() )
    local street1 = GetStreetNameFromHashKey(s1)
    local street2 = GetStreetNameFromHashKey(s2)

    if s2 == 0 then
        return street1
    elseif s2 ~= 0 then
        return street1 .. " - " .. street2
    end
end


function NotifyPeople(message, pos, bool)
    if bool then
        -- TriggerServerEvent('dispatchpolice', pos.x, pos.y, pos.z, message)
    else
        TriggerServerEvent('dispatch', pos.x, pos.y, pos.z, message)
    end
end
