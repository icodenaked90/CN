-- SPEEDOMETER, NUMMERPLADE OG GEAR--
local HUD = {
	Speed 			= 'kmh',
	SpeedIndicator 	= true,
	ParkIndicator 	= true,
	Top 			= true,
	CarGears		= true,
}


local UI = {
	x =  -0.001 ,
	y = -0.001 ,
}

Citizen.CreateThread(function()
	while true do Citizen.Wait(1)

		local MyPed = GetPlayerPed(-1)

		if(IsPedInAnyVehicle(MyPed, false))then
			DisableControlAction(0, 20)

			local MyPedVeh = GetVehiclePedIsIn(GetPlayerPed(-1),false)
			local PlateVeh = GetVehicleNumberPlateText(MyPedVeh)
			local VehStopped = IsVehicleStopped(MyPedVeh)
			local Gear = GetVehicleCurrentGear(MyPedVeh)

			if HUD.Speed == 'kmh' then
				Speed = GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false)) * 3.6
			else
				Speed = 0.0
			end

			if HUD.CarGears then
				if IsVehicleEngineOn(MyPedVeh) == false then
					drawTxt(UI.x + 0.745, UI.y + 1.430, 1.0,1.0,0.45, "E", 255, 0, 0, 255)
				elseif VehStopped and (Speed == 0) then
					drawTxt(UI.x + 0.745, UI.y + 1.430, 1.0,1.0,0.45, "P", 0, 255, 255, 255)
				elseif Gear < 1 then
					drawTxt(UI.x + 0.745, UI.y + 1.430, 1.0,1.0,0.45, "~g~R", 255, 142, 0, 255)
				elseif Gear == 1 then
					drawTxt(UI.x + 0.745, UI.y + 1.430, 1.0,1.0,0.45, "~b~1", 255, 142, 0, 255)
				elseif Gear == 2 then
					drawTxt(UI.x + 0.745, UI.y + 1.430, 1.0,1.0,0.45, "~b~2", 255, 142, 0, 255)
				elseif Gear == 3 then
					drawTxt(UI.x + 0.745, UI.y + 1.430, 1.0,1.0,0.45, "~b~3", 255, 142, 0, 255)
				elseif Gear == 4 then
					drawTxt(UI.x + 0.745, UI.y + 1.430, 1.0,1.0,0.45, "~b~4", 255, 142, 0, 255)
				elseif Gear == 5 then
					drawTxt(UI.x + 0.745, UI.y + 1.430, 1.0,1.0,0.45, "~b~5", 255, 142, 0, 255)
				elseif Gear == 6 then
					drawTxt(UI.x + 0.745, UI.y + 1.430, 1.0,1.0,0.45, "~b~6", 255, 142, 0, 255)
				elseif Gear == 7 then
					drawTxt(UI.x + 0.745, UI.y + 1.430, 1.0,1.0,0.45, "~b~7", 255, 142, 0, 255)
				elseif Gear == 8 then
					drawTxt(UI.x + 0.745, UI.y + 1.430, 1.0,1.0,0.45, "~b~8", 255, 142, 0, 255)
				end
			end

				if HUD.Speed == 'kmh' then
					drawTxt(UI.x + 0.685, 	UI.y + 1.430, 1.0,1.0,0.45, " ~w~" .. math.ceil(Speed), 255, 255, 255, 255)
					drawTxt(UI.x + 0.657, 	UI.y + 1.430, 1.0,1.0,0.45, "~b~ KM/T: ", 255, 255, 255, 255)
					drawTxt(UI.x + 0.704,   UI.y + 1.430, 1.0,1.0,0.45, "~b~ | ", 255, 142, 0, 255)
					drawTxt(UI.x + 0.720,   UI.y + 1.430, 1.0,1.0,0.45, "~w~GEAR: ", 255, 142, 0, 255)
				end
			end
	end
end)

--NAVNE PÅ GADERNE --

--local zones = { ['AIRP'] = "Los Santos International Airport", ['ALAMO'] = "Alamo Sea", ['ALTA'] = "Alta", ['ARMYB'] = "Fort Zancudo", ['BANHAMC'] = "Banham Canyon Dr", ['BANNING'] = "Banning", ['BEACH'] = "Vespucci Beach", ['BHAMCA'] = "Banham Canyon", ['BRADP'] = "Braddock Pass", ['BRADT'] = "Braddock Tunnel", ['BURTON'] = "Burton", ['CALAFB'] = "Calafia Bridge", ['CANNY'] = "Raton Canyon", ['CCREAK'] = "Cassidy Creek", ['CHAMH'] = "Chamberlain Hills", ['CHIL'] = "Vinewood Hills", ['CHU'] = "Chumash", ['CMSW'] = "Chiliad Mountain State Wilderness", ['CYPRE'] = "Cypress Flats", ['DAVIS'] = "Davis", ['DELBE'] = "Del Perro Beach", ['DELPE'] = "Del Perro", ['DELSOL'] = "La Puerta", ['DESRT'] = "Grand Senora Desert", ['DOWNT'] = "Downtown", ['DTVINE'] = "Downtown Vinewood", ['EAST_V'] = "East Vinewood", ['EBURO'] = "El Burro Heights", ['ELGORL'] = "El Gordo Lighthouse", ['ELYSIAN'] = "Elysian Island", ['GALFISH'] = "Galilee", ['GOLF'] = "GWC and Golfing Society", ['GRAPES'] = "Grapeseed", ['GREATC'] = "Great Chaparral", ['HARMO'] = "Harmony", ['HAWICK'] = "Hawick", ['HORS'] = "Vinewood Racetrack", ['HUMLAB'] = "Humane Labs and Research", ['JAIL'] = "Bolingbroke Penitentiary", ['KOREAT'] = "Little Seoul", ['LACT'] = "Land Act Reservoir", ['LAGO'] = "Lago Zancudo", ['LDAM'] = "Land Act Dam", ['LEGSQU'] = "Legion Square", ['LMESA'] = "La Mesa", ['LOSPUER'] = "La Puerta", ['MIRR'] = "Mirror Park", ['MORN'] = "Morningwood", ['MOVIE'] = "Richards Majestic", ['MTCHIL'] = "Mount Chiliad", ['MTGORDO'] = "Mount Gordo", ['MTJOSE'] = "Mount Josiah", ['MURRI'] = "Murrieta Heights", ['NCHU'] = "North Chumash", ['NOOSE'] = "N.O.O.S.E", ['OCEANA'] = "Pacific Ocean", ['PALCOV'] = "Paleto Cove", ['PALETO'] = "Paleto Bay", ['PALFOR'] = "Paleto Forest", ['PALHIGH'] = "Palomino Highlands", ['PALMPOW'] = "Palmer-Taylor Power Station", ['PBLUFF'] = "Pacific Bluffs", ['PBOX'] = "Pillbox Hill", ['PROCOB'] = "Procopio Beach", ['RANCHO'] = "Rancho", ['RGLEN'] = "Richman Glen", ['RICHM'] = "Richman", ['ROCKF'] = "Rockford Hills", ['RTRAK'] = "Redwood Lights Track", ['SANAND'] = "San Andreas", ['SANCHIA'] = "San Chianski Mountain Range", ['SANDY'] = "Sandy Shores", ['SKID'] = "Mission Row", ['SLAB'] = "Stab City", ['STAD'] = "Maze Bank Arena", ['STRAW'] = "Strawberry", ['TATAMO'] = "Tataviam Mountains", ['TERMINA'] = "Terminal", ['TEXTI'] = "Textile City", ['TONGVAH'] = "Tongva Hills", ['TONGVAV'] = "Tongva Valley", ['VCANA'] = "Vespucci Canals", ['VESP'] = "Vespucci", ['VINE'] = "Vinewood", ['WINDF'] = "Ron Alternates Wind Farm", ['WVINE'] = "West Vinewood", ['ZANCUDO'] = "Zancudo River", ['ZP_ORT'] = "Port of South Los Santos", ['ZQ_UAR'] = "Davis Quartz" }

--local directions = { [0] = 'N', [45] = 'NV', [90] = 'V', [135] = 'SV', [180] = 'S', [225] = 'SØ', [270] = 'Ø', [315] = 'NØ', [360] = 'N', }

--Citizen.CreateThread(function()
--	while true do
--		Citizen.Wait(1)
--		local MyPed = GetPlayerPed(-1)
--		local pos = GetEntityCoords(GetPlayerPed(-1))
--		local var1, var2 = GetStreetNameAtCoord(pos.x, pos.y, pos.z, Citizen.ResultAsInteger(), Citizen.ResultAsInteger())
--
--		for k,v in pairs(directions)do
--			direction = GetEntityHeading(GetPlayerPed())
--			if(math.abs(direction - k) < 22.5)then
--				direction = v
--				break;
--			end
--		end
--
--		if(GetStreetNameFromHashKey(var1) and GetNameOfZone(pos.x, pos.y, pos.z) and (IsPedInAnyVehicle(MyPed, false))) then
--			if(zones[GetNameOfZone(pos.x, pos.y, pos.z)] and tostring(GetStreetNameFromHashKey(var1)))then
--				drawTxt(0.515, 1.262, 1.0,1.0,0.45, direction .. " ~b~ | ~w~" .. tostring(GetStreetNameFromHashKey(var1)) .. " ~b~ | ~w~" .. zones[GetNameOfZone(pos.x, pos.y, pos.z)], 255, 255, 255, 255)
--			end
--		end
--	end
--end)

-- SELE --
local speedBuffer  = {}
local velBuffer    = {}
local beltOn       = false

IsCar = function(veh)
  local vc = GetVehicleClass(veh)
  return (vc >= 0 and vc <= 7) or (vc >= 9 and vc <= 12) or (vc >= 17 and vc <= 20)
end

Fwv = function (entity)
  local hr = GetEntityHeading(entity) + 90.0
  if hr < 0.0 then hr = 360.0 + hr end
  hr = hr * 0.0174533
  return { x = math.cos(hr) * 2.0, y = math.sin(hr) * 2.0 }
end

Citizen.CreateThread(function()
  Citizen.Wait(500)
  while true do

    local ped = GetPlayerPed(-1)
    local car = GetVehiclePedIsIn(ped)

    if car ~= 0 and (wasInCar or IsCar(car)) then

      wasInCar = true

      if beltOn then DisableControlAction(0, 75) end

      speedBuffer[2] = speedBuffer[1]
      speedBuffer[1] = GetEntitySpeed(car)

      if speedBuffer[2] ~= nil
              and not beltOn
              and GetEntitySpeedVector(car, true).y > 1.0
              and speedBuffer[1] > 9.25
              and (speedBuffer[2] - speedBuffer[1]) > (speedBuffer[1] * 0.255) then

        local co = GetEntityCoords(ped)
        local fw = Fwv(ped)
        SetEntityCoords(ped, co.x + fw.x, co.y + fw.y, co.z - 0.47, true, true, true)
        SetEntityVelocity(ped, velBuffer[2].x, velBuffer[2].y, velBuffer[2].z)
        Citizen.Wait(1)
        SetPedToRagdoll(ped, 1000, 1000, 0, 0, 0, 0)
      end

      velBuffer[2] = velBuffer[1]
      velBuffer[1] = GetEntityVelocity(car)

      if IsControlJustReleased(0, 113) then
        beltOn = not beltOn
        if beltOn then
          exports.pNotify:SendNotification({text = "Sikkerhedssele <b style='color: #5DB6E5'>spændt</b>.",type = "success",timeout = (3000),layout = "bottomCenter",queue = "fart",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}, killer = true, sounds = {
            sources = {"seatbelt.wav"},
            volume = 0.4,
            conditions = {"docVisible"}
          }})
        else
          exports.pNotify:SendNotification({text = "Sikkerhedssele <b style='color: #DB4646'>løsnet</b>.",type = "success",timeout = (3000),layout = "bottomCenter",queue = "fart",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}, killer = true,
            sounds = {
              sources = {"seatbelt.wav"},
              volume = 0.4,
              conditions = {"docVisible"}
            }})
        end
      end

      if (IsPedInAnyVehicle(ped, false)) and beltOn == true then
        drawTxt(0.7805, 1.462, 1.0,1.0,0.45, "~b~JA", 255, 255, 255, 255)
      else
        drawTxt(0.7805, 1.462, 1.0,1.0,0.45, "~r~NEJ", 255, 255, 255, 255)
      end

			if (IsPedInAnyVehicle(ped, false)) then
				drawTxt(0.7285, 1.462, 1.0,1.0,0.45, "~w~SELE SPÆNDT: ", 255, 255, 255, 255)
			end

    elseif wasInCar then
      wasInCar = false
      beltOn = false
      speedBuffer[1], speedBuffer[2] = 0.0, 0.0
    end
    Citizen.Wait(0)
  end
end)

RegisterNetEvent('cn-carhud:belt')
AddEventHandler('cn-carhud:belt', function(belt)
	beltOn = belt
end)


function drawTxt(x,y ,width,height,scale, text, r,g,b,a)
    SetTextFont(4)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(2, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end
