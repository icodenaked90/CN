vRP = Proxy.getInterface("vRP")
vRPserver = Tunnel.getInterface("vRP","vRP_carcrusher")
vRPccS = Tunnel.getInterface("vRP_carcrusher","vRP_carcrusher")

local x, y, z = -421.03393554688, -1710.8310546875, 19.439516067504
local x2, y2, z2 = -467.8773803711, -1676.1942138672, 19.052968978882
local x3, y3, z3 = -461.22750854492,-1705.0541992188,18.815143585206

vehiclePrice = 0
vehicleName = ""
vehModel = ""

incircle = false
incircle2 = false
crusherBlip = nil
cevaVariabila = false

function crusher_drawTxt(text,font,centre,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextProportional(0)
	SetTextScale(scale, scale)
	SetTextColour(r, g, b, a)
	SetTextDropShadow(0, 0, 0, 0,255)
	SetTextEdge(1, 0, 0, 0, 255)
	SetTextDropShadow()
	SetTextOutline()
	SetTextCentre(centre)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x, y)
end

function DrawText3D(x,y,z, text, scl, font) 

    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
 
    local scale = (1/dist)*scl
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov
   
    if onScreen then
        SetTextScale(0.0*scale, 1.1*scale)
        SetTextFont(font)
        SetTextProportional(1)
        -- SetTextScale(0.0, 0.55)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end

function createRematBlip(x, y, z)
	if (crusherBlip == nil) then
		vRP.setNamedBlip({"Crusher", x, y, z, 380, 49, "Crusher"})
		crusherBlip = true
	end
end

Citizen.CreateThread(function()
	while true do
		local pos = GetEntityCoords(GetPlayerPed(-1), true)
		
		if(GetDistanceBetweenCoords(pos.x, pos.y, pos.z, x, y, z) < 40.0)then
			DrawText3D(x,y,z+0.3, "~y~Skrotplads", 2.0, 1)
			DrawText3D(x,y,z+0.08, "~g~Skrot dit eget køretøj til ~r~20% ~g~af dens markedsværdi", 0.7, 7)
			DrawMarker(36, x, y, z-0.5, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, 168, 104, 40, 255, true, 0, 0, true)
			if(GetDistanceBetweenCoords(pos.x, pos.y, pos.z, x, y, z) < 7)then
				incircle = true
				if (incircle == true) then
					veh = GetVehiclePedIsIn(GetPlayerPed(-1), false)
					if(GetPedInVehicleSeat(veh, -1) == GetPlayerPed(-1))then
						local ok, vtype, name = vRP.getNearestOwnedVehicle({7})
						if ok then
							createRematBlip(x2, y2, z2)
							vehModel = name
							if(tonumber(vehiclePrice) == 0)then
								vRPccS.getVehiclesPrices({name}, function(thePrice, name)
									vehiclePrice = tonumber(thePrice)
									vehicleName = name
								end)
							end
							crusher_drawTxt("~y~[Skrotplads] ~w~Køretøj: ~b~"..vehicleName.." ~w~| Pris: ~g~$"..vehiclePrice,1,1,0.5,0.8,0.8,255,255,255,255)
							crusher_drawTxt("~y~[Skrotplads] ~g~Kør frem og foretag et højre sving for at skrotte dit køretøj!",4,1,0.5,0.84,0.4,255,255,255,255)
						else
							crusher_drawTxt("~y~[Skrotplads] ~r~Du skal komme med dit personlige køretøj!",1,1,0.5,0.8,0.8,255,255,255,255)
						end
					end
				end
			elseif(GetDistanceBetweenCoords(pos.x, pos.y, pos.z, x, y, z) > 7)then
				incircle = false
			end
		end

		if(GetDistanceBetweenCoords(pos.x, pos.y, pos.z, x2, y2, z2) < 40.0)then
			DrawText3D(x2, y2, z2+0.6, "~r~Skrotter - Tryk ~g~E ~r~for at skrotte", 2.0, 1)
			DrawText3D(x2, y2, z2+0.4, "~g~Pris: ~r~$"..vehiclePrice, 1.2, 7)
			DrawMarker(29, x2, y2, z2-0.3, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, 255, 0, 0, 255, true, 0, 0, true)
			if(GetDistanceBetweenCoords(pos.x, pos.y, pos.z, x2, y2, z2) < 4)then
				incircle2 = true
				if (incircle2 == true) and IsControlJustReleased(1, 46) then
					veh = GetVehiclePedIsIn(GetPlayerPed(-1), false)
					if(GetPedInVehicleSeat(veh, -1) == GetPlayerPed(-1))then
						local ok, vtype, name = vRP.getNearestOwnedVehicle({7})
						if ok then
							if vehModel == name then
								if(crusherBlip)then
									vRP.removeNamedBlip({"Crusher"})
									crusherBlip = nil
								end
								if(cevaVariabila == false)then
									TriggerServerEvent("crushVehicle", vtype, name, vehiclePrice)
									cevaVariabila = true
								end
								crusher_drawTxt("~y~[Skrotplads] ~g~Du har skrottet dit køretøj for ~r~$"..(vehiclePrice - 1),1,1,0.5,0.8,0.8,255,255,255,255)
								vehiclePrice = 0
								vehicleName = ""
								vehModel = ""
							else
								crusher_drawTxt("~y~[Skrotplads] ~r~Køretøjer stemmer ikke overens",1,1,0.5,0.8,0.8,255,255,255,255)
							end
						else
							crusher_drawTxt("~y~[Skrotplads] ~r~Du skal komme med dit personlige køretøj!",1,1,0.5,0.8,0.8,255,255,255,255)
						end
					end
				end
			elseif(GetDistanceBetweenCoords(pos.x, pos.y, pos.z, x2, y2, z2) > 4)then
				incircle2 = false
				cevaVariabila = false
			end
		end
		
		if(GetDistanceBetweenCoords(pos.x, pos.y, pos.z, x3, y3, z3) > 52.0)then
			vehiclePrice = 0
			vehicleName = ""
			vehModel = ""
			if(crusherBlip)then
				vRP.removeNamedBlip({"Crusher"})
				crusherBlip = nil
			end
		end
		
		Citizen.Wait(0)
	end
end)
