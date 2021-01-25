local isCop = false
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
	local coordA = GetEntityCoords(GetPlayerPed(-1), 1)
	local coordB = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0.0, 5.0, 0.0)
	local vehicle = getVehicleInDirection(coordA, coordB)
		local getVehHash = GetEntityModel(vehicle)
		local vehiclecords = GetEntityCoords(vehicle,true)
		local suspectVehModel = GetDisplayNameFromVehicleModel(getVehHash)
		if suspectVehModel == "STOCKADE" then
			DrawText1(vehiclecords[1], vehiclecords[2], vehiclecords[3], "Tryk ~g~E~w~ for at bryde låsen op")
			if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), GetWorldPositionOfEntityBone(vehicle, GetEntityBoneIndexByName(vehicle, "platelight")), true) > 0.1 then
				TriggerServerEvent("IsAcop")
				if IsControlJustReleased(0,38) and isCop then
					TriggerEvent('cn_notify:notify', "politiet kan ikke røve")
				else
					if IsControlJustReleased(0,38) then
						--TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_WELDING", 0, false)
						ExecuteCommand("me Sætter C4 på bagklappen af Pengetransporten, der sprænger om 3 min")
						TriggerServerEvent('cn_notify:notifyPolice', "Der er en som røver en pengetransport her:",{coordA.x,coordA.y,coordA.z})
						--Wait(60000)
						--TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 10, "tagging", 0.3)
						--ExecuteCommand("me 2 min")
						--Wait(60000)
						--TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 10, "tagging", 0.3)
						--ExecuteCommand("me 1 min")
						--Wait(30000)
						--TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 10, "tagging", 0.3)
						--ExecuteCommand("me 30 sekunder")
						Wait(10000)
						TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 10, "tagging", 0.3)
						AddExplosion(vehiclecords.x, vehiclecords.y,vehiclecords.z, 5, 1 ,true,false, 5)
						BoomEffect(vehiclecords)
						TriggerServerEvent('cn_notify:notifyPolice', "Pengetransporten blev åbnet",{coordA.x,coordA.y,coordA.z})
						SetVehicleDoorOpen(vehicle, 3, false)
						SetVehicleDoorOpen(vehicle, 2, false)
						--ExecuteCommand("me Færdig med at svejse døren, Tag pengene og løb!")
					end
				end
			end
		end
	end
end)


function getVehicleInDirection(coordFrom, coordTo)
	local rayHandle = CastRayPointToPoint(coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 10, GetPlayerPed(-1), 0)
	local a, b, c, d, vehicle = GetRaycastResult(rayHandle)
	return vehicle
end

function DrawText1(x,y,z, text)
	local onScreen,_x,_y=World3dToScreen2d(x,y,z)
	local px,py,pz=table.unpack(GetGameplayCamCoords())

	SetTextScale(0.32, 0.32)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextColour(255, 255, 255, 255)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	local factor = (string.len(text)) / 370
	DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 80)
end

RegisterNetEvent("Cop")
AddEventHandler("Cop", function()
	isCop = true
end)

function BoomEffect(coords)
	TriggerServerEvent("cn-emotes:effects",coords,"core","exp_grd_plane_sp",{default={0.0, 0.0, -0.1, -90.0, 0.0, 20.0,11816},female={0.0, 0.0, -0.55, 0.0, 0.0, 20.0,11816}},"entity",5000)
end
