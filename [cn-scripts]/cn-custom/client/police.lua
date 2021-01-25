vRP = Proxy.getInterface("vRP")

function Draw3DText(x, y, z, text)
	local onScreen, _x, _y = World3dToScreen2d(x, y, z)
	local px, py, pz = table.unpack(GetGameplayCamCoords())

	SetTextScale(0.35, 0.35)
	SetTextFont(4)
	SetTextProportional(1)
	SetTextColour(255, 255, 255, 215)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x, _y)
	local factor = (string.len(text)) / 370
	DrawRect(_x, _y + 0.0125, 0.015 + factor, 0.03, 20,20,20,150)
end

local weapons = {
	"WEAPON_SMG",
	"WEAPON_CARBINERIFLE",
	"WEAPON_SNIPERRIFLE",
	"WEAPON_PUMPSHOTGUN",
	"WEAPON_GRENADELAUNCHER",
	"WEAPON_BZGAS"
}

cords = {
	{461.34777832031,-982.65710449219,29.689336776733},--midtby
	{1844.3022460938,3690.9816894531,33.267044067383},--sandy
	{-435.82214355469,5990.181640625,30.716173171997}, -- paleto
	--{816.3388671875,-2161.939453125,29.619028091431},-- våben butik
}


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local player = GetPlayerPed(-1)
		local coords = GetEntityCoords(PlayerPedId(),true)
		for k,v in pairs(cords) do
			local x,y,z = table.unpack(v)

			if (Vdist(coords["x"], coords["y"], coords["z"], x,y,z) < 1.2) then
				DrawMarker(27, x,y,z+0.03, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.5001, 255, 25, 0, 200, 0, 0, 0, 50)
				Draw3DText(x,y,(z+0.03), "Tryk ~g~H~w~ for at smide dine større våben")
				if IsControlPressed(0, 74) then
					for k,v in pairs(weapons) do
						if HasPedGotWeapon(player, v, false) then
							local hash = GetHashKey(v)
							RemoveWeaponFromPed(player, hash)
						end
					end
					Wait(1000)
					TriggerEvent("pNotify:SendNotification",{text = "Du har lagt dine større våben!",type = "error", timeout = (3000),layout = "centerLeft"})
				end
			end
		end
	end
end)
