dead = false

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local ped = GetPlayerPed(-1)
    playerHealth = GetEntityHealth(ped)
		if HasEntityBeenDamagedByAnyPed(ped) then
			local bone, hit = GetPedLastDamageBone(ped)
      if not bone == false then
			  -- print(bone, hit)
        if playerHealth <= 100 then
          -- print(hit)
          -- print(hit)
          local stringHit = tostring(hit)
          -- print(playerHealth)
          -- print("Du er død")
          if not dead then
            TriggerServerEvent('deathcause:getcause', -1, hit, ped)
            dead = true
          end
        else
          dead = false
        end
      end
		end
	end
end)
