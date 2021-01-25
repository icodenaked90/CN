local noqueado = false

RegisterNetEvent("oc:noqueado")
AddEventHandler('oc:noqueado', function()
   noqueado = true	
end)

RegisterNetEvent("oc:noqueadooff")
AddEventHandler('oc:noqueadooff', function()
   noqueado = false	
end)

Citizen.CreateThread(function()
 	while true do
 		Citizen.Wait(0)
		if noqueado == true then
			 SetPedToRagdoll(GetPlayerPed(-1), 1000, 1000, 0, 0, 0, 0)
			 vRP.notify({"~r~Du er blevet slået ud"})							     
		end
 	end
end)
