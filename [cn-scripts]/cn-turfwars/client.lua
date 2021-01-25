--------------------------------------------------------------------------------------------------------------
------------First off, many thanks to @anders for help with the majority of this script. ---------------------
------------Also shout out to @setro for helping understand pNotify better.              ---------------------
--------------------------------------------------------------------------------------------------------------
------------To configure: Add/replace your own coords in the sectiong directly below.    ---------------------
------------        Goto LINE 90 and change "50" to your desired SafeZone Radius.        ---------------------
------------        Goto LINE 130 to edit the Marker( Holographic circle.)               ---------------------
--------------------------------------------------------------------------------------------------------------
-- Place your own coords here!
local turfs = {
	["grovestreet"] = {
		position = { ['x'] = 105.72296142578, ['y'] = -1939.0783691406, ['z'] = 20.803712844849 },
		reward = 20000 + math.random(1000,4000),
		distance = 300.0,
		nameofturf = "Grove Street",
		lastrobbed = 0
	},
	["families"] = {
		position = { ['x'] = -155.28141784668, ['y'] = -1656.2554931641, ['z'] = 32.789909362793 },
		reward = 17000 + math.random(1000,4000),
		distance = 300.0,
		nameofturf = "Families Turf",
		lastrobbed = 0
	},
	--["vagos"] = {
	--	position = { ['x'] = 320.38580322266, ['y'] = -2027.7858886719, ['z'] = 20.726119995117 },
	--	reward = 28000 + math.random(1000,4000),
	--	distance = 400.0,
	--	nameofturf = "Vagos Turf",
	--	lastrobbed = 0
	--},
	--["armenian"] = {
	--	position = { ['x'] = -455.43521118164, ['y'] = -1704.2645263672, ['z'] = 18.84493637085 },
	--	reward = 9000 + math.random(1000,4000),
	--	distance = 400.0,
	--	nameofturf = "Armenian Turf",
	--	lastrobbed = 0
	--},
	--["lostmc"] = {
	--	position = { ['x'] = 61.123699188232, ['y'] = 3713.6315917969, ['z'] = 39.754940032959 },
	--	reward = 18000 + math.random(1000,4000),
	--	distance = 400.0,
	--	nameofturf = "LostMC HQ",
	--	lastrobbed = 0
	--},
	--["canibal"] = {
	--	position = { ['x'] = -1125.9798583984, ['y'] = 4927.5756835938, ['z'] = 219.11138916016 },
	--	reward = 16000 + math.random(1000,4000),
	--	distance = 400.0,
	--	nameofturf = "Altruist Camp",
	--	lastrobbed = 0
	--},
	--["lostmc2"] = {
	--	position = { ['x'] = 966.73254394531, ['y'] = -125.13793945313, ['z'] = 74.353073120117 },
	--	reward = 29000 + math.random(1000,4000),
	--	distance = 400.0,
	--	nameofturf = "LostMC Turf",
	--	lastrobbed = 0
	--},
	--["vagos2"] = {
	--	position = { ['x'] = 979.25018310547, ['y'] = -1823.1961669922, ['z'] = 31.181226730347 },
	--	reward = 27000 + math.random(1000,4000),
	--	distance = 400.0,
	--	nameofturf = "Vagos Warehouse",
	--	lastrobbed = 0
	--},
	--["marabunta"] = {
	--	position = { ['x'] = 1255.1652832031, ['y'] = -1600.2349853516, ['z'] = 53.081687927246 },
	--	reward = 12000 + math.random(1000,4000),
	--	distance = 400.0,
	--	nameofturf = "Marabunta Turf",
	--	lastrobbed = 0
	--},
	--["triads"] = {
	--	position = { ['x'] = -780.54119873047, ['y'] = -922.88250732422, ['z'] = 18.787780761719 },
	--	reward = 10000 + math.random(1000,4000),
	--	distance = 400.0,
	--	nameofturf = "Triads Turf",
	--	lastrobbed = 0
	--}
}

local zones = {
	{ ['x'] = -92.034790039063, ['y'] = -2622.02734375, ['z'] = 6.0006699562073,['name'] = "Kokain process", ["color"] = 2 , ["distance"] = 400.0 },
	{ ['x'] = -1404.9189453125, ['y'] = -344.19235229492, ['z'] = 40.430698394775,['name'] = "LSD process", ["color"] = 3 , ["distance"] = 400.0 },
	{ ['x'] = 1694.6318359375, ['y'] = 3721.978515625, ['z'] = 33.908729553223,['name'] = "Amf process", ["color"] = 1, ["distance"] = 400.0  },
	{ ['x'] = 1982.5417480469, ['y'] = 4898.6528320313, ['z'] = 42.763179779053,['name'] = "Skunk process", ["color"] = 72, ["distance"] = 400.0   },
	{ ['x'] = 105.72296142578, ['y'] = -1939.0783691406, ['z'] = 20.803712844849,['name'] = "ballas", ["color"] = 50, ["distance"] = 300.0   },
	}






local notifIn = false
local notifOut = false
local closestZone = 1
local change = true


--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
-------                              Creating Blips at the locations. 							--------------
-------You can comment out this section if you dont want any blips showing the zones on the map.--------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
--
RegisterNetEvent('es_turf:dbcolor')
AddEventHandler('es_turf:dbcolor', function(gangcolor)
	for k,v in pairs(turfs) do

		local pos3 = v.position
		local distance = v.distance
		local szBlip = AddBlipForRadius(pos3.x, pos3.y, pos3.z,distance)
			--SetBlipAsShortRange(szBlip, true)
			SetBlipAlpha(szBlip,100)
			SetBlipSprite(szBlip, 9) -- Change the blip itself: https://marekkraus.sk/gtav/blips/list.html
			SetBlipColour(szBlip, gangcolor)  --Change the blip color: https://gtaforums.com/topic/864881-all-blip-color-ids-pictured/
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString(turfs.nameofturf) -- What it will say when you hover over the blip on your map.
			EndTextCommandSetBlipName(szBlip)
	end
end)

RegisterNetEvent('es_turf:status')
AddEventHandler('es_turf:status', function(source)
	change = true
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		if change  then
			for k,v in pairs(turfs) do
				TriggerServerEvent('es_turf:color',v.nameofturf)
				change = false
			end
		end
	end
end)


--------------------------------------------------------------------------------------------------------------
local robbing = false
local turf = ""
local secondsRemaining = 0

function turf_DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function turf_drawTxt(x,y ,width,height,scale, text, r,g,b,a, outline)
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

RegisterNetEvent('es_turf:currentlyrobbing')
AddEventHandler('es_turf:currentlyrobbing', function(robb)
	robbing = true
	turf = robb
	secondsRemaining = 60
end)

RegisterNetEvent('es_turf:toofarlocal')
AddEventHandler('es_turf:toofarlocal', function(robb)
	robbing = false
	TriggerEvent('chatMessage', 'SYSTEM', {174, 0, 255}, "The turf cap was cancelled, you will receive nothing.")
	robbingName = ""
	secondsRemaining = 0
	incircle = false
end)

RegisterNetEvent('es_turf:playerdiedlocal')
AddEventHandler('es_turf:playerdiedlocal', function(robb)
	robbing = false
	TriggerEvent('chatMessage', 'SYSTEM', {174, 0, 255}, "The turf cap was cancelled, you died!.")
	robbingName = ""
	secondsRemaining = 0
	incircle = false
end)


RegisterNetEvent('es_turf:robberycomplete')
AddEventHandler('es_turf:robberycomplete', function(name)
	robbing = false
	TriggerEvent('chatMessage', 'SYSTEM', {174, 0, 255}, "Turf cap done, you received the turf called:" .. name)
	turf = ""
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
	for k,v in pairs(turfs)do
		local ve = v.position

		local blip = AddBlipForCoord(ve.x, ve.y, ve.z)
		SetBlipSprite(blip, 409)
		SetBlipScale(blip, 0.8)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString("Turf")
		EndTextCommandSetBlipName(blip)
	end
end)
incircle = false
Citizen.CreateThread(function()
	while true do
		local pos = GetEntityCoords(GetPlayerPed(-1), true)

		for k,v in pairs(turfs)do
			local pos2 = v.position

			if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 2.1)then
				if not robbing then
					DrawMarker(1, v.position.x, v.position.y, v.position.z - 1, 0, 0, 0, 0, 0, 0, 1.001, 1.0001, 0.1001, 1555, 0, 0, 0, 0, 0, 0,0)

					if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 2)then
						if (incircle == false) then
							turf_DisplayHelpText("Press ~INPUT_CONTEXT~ to cap ~b~" .. v.nameofturf .. "~w~ beware, the gang members will be alerted!")
						end
						incircle = true
						if(IsControlJustReleased(1, 51))then
							TriggerServerEvent('es_turf:rob', k)
						end
					elseif(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) > 2)then
						incircle = false
					end
				end
			end
		end
		if robbing then
			turf_drawTxt(0.66, 1.44, 1.0,1.0,0.4, "Capping Turf: ~r~" .. secondsRemaining .. "~w~ seconds remaining", 255, 255, 255, 255)

			local pos2 = turfs[turf].position
			local ped = GetPlayerPed(-1)

			if IsEntityDead(ped) then
				TriggerServerEvent('es_turf:playerdied', turf)
			elseif (Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) > 300)then
				TriggerServerEvent('es_turf:toofar', turf)
			end
		end

		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()
	while true do
		Wait(0)
		DrawMarker(1, 105.72296142578,-1939.0783691406, 19.803712844849, 0, 0, 0, 0, 0, 0, 1.001, 1.0001, 0.1001, 135, 0, 255, 200, 0, 0, 0, 0)
		DrawMarker(1, -155.28141784668, -1656.2554931641, 32.009909362793, 0, 0, 0, 0, 0, 0, 30.001, 30.0001, 0.5001, 33, 255, 0, 200, 0, 0, 0, 0)
		DrawMarker(1, 320.38580322266, -2027.7858886719, 20.006119995117, 0, 0, 0, 0, 0, 0, 30.001, 30.0001, 0.5001, 225, 225, 0, 200, 0, 0, 0, 0)
		DrawMarker(1, -455.43521118164, -1704.2645263672, 18.00493637085, 0, 0, 0, 0, 0, 0, 30.001, 30.0001, 0.5001, 132, 64, 1, 200, 0, 0, 0, 0)
		DrawMarker(1, 61.123699188232, 3713.6315917969, 39.004940032959, 0, 0, 0, 0, 0, 0, 30.001, 30.0001, 0.5001, 255, 255, 255, 200, 0, 0, 0, 0)
		DrawMarker(1, -1125.9798583984, 4927.5756835938, 218.21138916016, 0, 0, 0, 0, 0, 0, 30.001, 30.0001, 0.5001, 247, 174, 143, 200, 0, 0, 0, 0)
		DrawMarker(1, 966.73254394531, -125.13793945313, 73.403073120117, 0, 0, 0, 0, 0, 0, 30.001, 30.0001, 0.5001, 255, 255, 255, 200, 0, 0, 0, 0)
		DrawMarker(1, 979.25018310547, -1823.1961669922, 30.201226730347, 0, 0, 0, 0, 0, 0, 30.001, 30.0001, 0.5001, 255, 255, 0, 200, 0, 0, 0, 0)
		DrawMarker(1, 1255.1652832031, -1600.2349853516, 52.181687927246, 0, 0, 0, 0, 0, 0, 30.001, 30.0001, 0.5001, 25, 121, 255, 200, 0, 0, 0, 0)
		DrawMarker(1, -780.54119873047, -922.88250732422, 17.887780761719, 0, 0, 0, 0, 0, 0, 30.001, 30.0001, 0.5001, 255, 0, 0, 200, 0, 0, 0, 0)
	end
end)
--------------------------------------------------------------------------------------------------------------
----------------   Getting your distance from any one of the locations  --------------------------------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

--Citizen.CreateThread(function()
--	while not NetworkIsPlayerActive(PlayerId()) do
--		Citizen.Wait(0)
--	end
--
--	while true do
--		local playerPed = GetPlayerPed(-1)
--		local x, y, z = table.unpack(GetEntityCoords(playerPed, true))
--		local minDistance = 100000
--		for i = 1, #zones, 1 do
--			dist = Vdist(zones[i].x, zones[i].y, zones[i].z, x, y, z)
--			if dist < minDistance then
--				minDistance = dist
--				closestZone = i
--			end
--		end
--		Citizen.Wait(15000)
--	end
--end)

--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------
---------   Setting of friendly fire on and off, disabling your weapons, and sending pNoty   -----------------
--------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------

--Citizen.CreateThread(function()
--	while not NetworkIsPlayerActive(PlayerId()) do
--		Citizen.Wait(0)
--	end
--
--	while true do
--		Citizen.Wait(0)
--		local player = GetPlayerPed(-1)
--		local x,y,z = table.unpack(GetEntityCoords(player, true))
--		local dist = Vdist(zones[closestZone].x, zones[closestZone].y, zones[closestZone].z, x, y, z)
--
--		if dist <= 100.0 then  ------------------------------------------------------------------------------ Here you can change the RADIUS of the Safe Zone. Remember, whatever you put here will DOUBLE because
--			if not notifIn then																			  -- it is a sphere. So 50 will actually result in a diameter of 100. I assume it is meters. No clue to be honest.
--				NetworkSetFriendlyFireOption(false)
--				ClearPlayerWantedLevel(PlayerId())
--				SetCurrentPedWeapon(player,GetHashKey("WEAPON_UNARMED"),true)
--				--TriggerEvent("pNotify:SendNotification",{
--				--	text = "<b style='color:#1E90FF'>Du er nu i fængslet</b>",
--				--	type = "success",
--				--	timeout = (3000),
--				--	layout = "bottomcenter",
--				--	queue = "global"
--				--})
--				notifIn = true
--				notifOut = false
--			end
--		else
--			if not notifOut then
--				NetworkSetFriendlyFireOption(true)
--				--TriggerEvent("pNotify:SendNotification",{
--				--	text = "<b style='color:#1E90FF'>Du er nu ude af fængslet</b>",
--				--	type = "error",
--				--	timeout = (3000),
--				--	layout = "bottomcenter",
--				--	queue = "global"
--				--})
--				notifOut = true
--				notifIn = false
--			end
--		end
--		if notifIn then
--		DisableControlAction(2, 37, true) -- disable weapon wheel (Tab)
--		DisablePlayerFiring(player,true) -- Disables firing all together if they somehow bypass inzone Mouse Disable
--      	DisableControlAction(0, 106, true) -- Disable in-game mouse controls
--      	DisableControlAction(0, 303, true) -- Disable in-game U control
--      	DisableControlAction(0, 140, true) -- Disable in-game R control
--			if IsDisabledControlJustPressed(2, 37) then --if Tab is pressed, send error message
--				SetCurrentPedWeapon(player,GetHashKey("WEAPON_UNARMED"),true) -- if tab is pressed it will set them to unarmed (this is to cover the vehicle glitch until I sort that all out)
--				TriggerEvent("pNotify:SendNotification",{
--					text = "<b style='color:#1E90FF'>Du kan ikke bruge våben herinde</b>",
--					type = "error",
--					timeout = (3000),
--					layout = "bottomcenter",
--					queue = "global"
--				})
--			end
--			if IsDisabledControlJustPressed(0, 106) then --if LeftClick is pressed, send error message
--				SetCurrentPedWeapon(player,GetHashKey("WEAPON_UNARMED"),true) -- If they click it will set them to unarmed
--				TriggerEvent("pNotify:SendNotification",{
--					text = "<b style='color:#1E90FF'>Du kan ikke slå folk herinde</b>",
--					type = "error",
--					timeout = (3000),
--					layout = "bottomcenter",
--					queue = "global"
--				})
--			end
--		end
--		-- Comment out lines 142 - 145 if you dont want a marker.
--	 	--if DoesEntityExist(player) then	      --The -1.0001 will place it on the ground flush		-- SIZING CIRCLE |  x    y    z | R   G    B   alpha| *more alpha more transparent*
--	 	--	DrawMarker(1, zones[closestZone].x, zones[closestZone].y, zones[closestZone].z-1.0001, 0, 0, 0, 0, 0, 0, 100.0, 100.0, 2.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0) -- heres what all these numbers are. Honestly you dont really need to mess with any other than what isnt 0.
--	 	--	--DrawMarker(type, float posX, float posY, float posZ, float dirX, float dirY, float dirZ, float rotX, float rotY, float rotZ, float scaleX, float scaleY, float scaleZ, int red, int green, int blue, int alpha, BOOL bobUpAndDown, BOOL faceCamera, int p19(LEAVE AS 2), BOOL rotate, char* textureDict, char* textureName, BOOL drawOnEnts)
--	 	--end
--	end
--end)