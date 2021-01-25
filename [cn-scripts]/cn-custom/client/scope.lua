local time = 0

Citizen.CreateThread(function()
	local isSniper = false
	while true do
		Citizen.Wait(0)

    	local ped = GetPlayerPed(-1)


		local currentWeaponHash = GetSelectedPedWeapon(ped)

		if currentWeaponHash == 100416529 then
			isSniper = true
		elseif currentWeaponHash == 205991906 then
			isSniper = true
		elseif currentWeaponHash == -952879014 then
			isSniper = true
		elseif currentWeaponHash == GetHashKey('WEAPON_HEAVYSNIPER_MK2') then
			isSniper = true
		else
			isSniper = false
		end

		 if not isSniper then
			 HideHudComponentThisFrame(14)
			 local player = GetPlayerPed(-1)
			if time >= 1 then
				ShowHudComponentThisFrame(14)
			end
		 end
	end
end)

Citizen.CreateThread(function()
	local isSniper = false
	while true do
		Citizen.Wait(0)
		local player = GetPlayerPed(-1)
	 if IsPedShooting(player) then
		 time = 3000
	 end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		 time = time - 1000
	end
end)

-- Citizen.CreateThread(function()
-- 	while true do
-- 		Citizen.Wait(0)
--
-- 		local player = GetPlayerPed(-1)
-- 		local currenthealth = GetEntityHealth(player)
-- 		if HasEntityBeenDamagedByWeapon(player,0,2) then
-- 			Citizen.Wait(150)
-- 			local health2 = GetEntityHealth(player)
-- 			local damage = currenthealth - health2
-- 			if damage > 0 then
-- 			TriggerServerEvent('sendtildiscord', damage )
-- 			end
-- 		end
--
-- 	end
-- end)
