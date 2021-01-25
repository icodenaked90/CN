local LastVehicle = nil
local LicencePlate = {}
LicencePlate.Index = false
LicencePlate.Number = false

RegisterCommand("fjernplade", function()
    -- Check if the player has plates stored
    if not LicencePlate.Index and not LicencePlate.Number then
        -- Client's ped
        local PlayerPed = PlayerPedId()
        -- Client's coords
        local Coords = GetEntityCoords(PlayerPed)
        -- Closest vehicle
        local Vehicle = GetClosestVehicle(Coords.x, Coords.y, Coords.z, 3.5, 0, 70)
        -- Client's coords
        local VehicleCoords = GetEntityCoords(Vehicle)
        -- Distance between client's ped and closest vehicle
        local Distance = Vdist(VehicleCoords.x, VehicleCoords.y, VehicleCoords.z, Coords.x, Coords.y, Coords.z)
        -- If within range and Ped is in a vehicle
        if Distance < 3.5 and not IsPedInAnyVehicle(PlayerPed, false) then
            --Saves the last vehicle
			LastVehicle = Vehicle
			-- Notification and animation
            Animation()
			SendNUIMessage({type = "ui",display = true,time = 6000,text = "Fjerner nummerplade..."}) --PROGRESSBAR
			StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_player", 1.0)
            -- Wait 6 seconds
            Citizen.Wait(6000)
            -- Store plate index
            LicencePlate.Index = GetVehicleNumberPlateTextIndex(Vehicle)
            -- Store plate number
            LicencePlate.Number = GetVehicleNumberPlateText(Vehicle)
            -- Set the plate to nothing
            SetVehicleNumberPlateText(Vehicle, " ")
        else
            -- Notification
            TriggerEvent("pNotify:SendNotification", {text = "Ingen bil tæt på", type = "error", timeout = 2000, layout = "bottomCenter"})
			--TriggerEvent('esx:showNotification', '~r~ No vehicle nearby.')
        end
    else
        -- Notification
        TriggerEvent("pNotify:SendNotification", {text = "Du har allerede en nummerplade på dig", type = "error", timeout = 2000, layout = "bottomCenter"})
		--exports["mythic_notify"]:SendAlert("error", "Du har allerede en nummerplade på dig.")
		--.TriggerEvent('esx:showNotification', '~r~ You do not have a licence plate on you.')
    end
end)

-- Command to put plate back
RegisterCommand("sætplade", function()
    -- Check if the player has plates stored
    if LicencePlate.Index and LicencePlate.Number then
        -- Client's ped
        local PlayerPed = PlayerPedId()
        -- Client's coords
        local Coords = GetEntityCoords(PlayerPed)
        -- Closest vehicle
        local Vehicle = GetClosestVehicle(Coords.x, Coords.y, Coords.z, 3.5, 0, 70)
        -- Client's coords
        local VehicleCoords = GetEntityCoords(Vehicle)
        -- Distance between client's ped and closest vehicle
        local Distance = Vdist(VehicleCoords.x, VehicleCoords.y, VehicleCoords.z, Coords.x, Coords.y, Coords.z)
        -- If within range and Ped is in a vehicle
        if ( (Distance < 3.5) and not IsPedInAnyVehicle(PlayerPed, false) ) then
		if (Vehicle == LastVehicle) then
			--Cleans variable
				LastVehicle = nil
				-- Notification and animation
				Animation()
				SendNUIMessage({type = "ui",display = true,time = 6000,text = "Sætter nummerplade på..."}) --PROGRESSBAR
				StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_player", 1.0)
			-- Wait 6 seconds
			Citizen.Wait(6000)
			-- Set plate index to stored index
			SetVehicleNumberPlateTextIndex(Vehicle, LicencePlate.Index)
			-- Set plate number to stored number
			SetVehicleNumberPlateText(Vehicle, LicencePlate.Number)
			-- Reset stored values
			LicencePlate.Index = false
			LicencePlate.Number = false
		else
            -- Notification
            TriggerEvent("pNotify:SendNotification", {text = "Denne nummerplade passer ikke på bilen", type = "error", timeout = 2000, layout = "bottomCenter"})
		--	exports["mythic_notify"]:SendAlert("error", "Denne nummerplade passer ikke på bilen")
		--	TriggerEvent('esx:showNotification', '~r~ This plate does not belong here')
		end
        else
            -- Notification
            TriggerEvent("pNotify:SendNotification", {text = "Ingen bil tæt på", type = "error", timeout = 2000, layout = "bottomCenter"})
			--TriggerEvent('esx:showNotification', '~r~ No vehicle nearby.')
        end
    else
        -- Notification
        TriggerEvent("pNotify:SendNotification", {text = "Du har ikke en nummerplade på dig", type = "error", timeout = 2000, layout = "bottomCenter"})
		-- exports["mythic_notify"]:SendAlert("error", "Du har ikke en nummerplade på dig.")
		--TriggerEvent('esx:showNotification', '~r~ You do not have a licence plate on you.')
    end
end)

--ANIMATION
function Animation()
    local pid = PlayerPedId()
    RequestAnimDict("mini")
    RequestAnimDict("mini@repair")
    while (not HasAnimDictLoaded("mini@repair")) do
		Citizen.Wait(10)
	end
    TaskPlayAnim(pid,"mini@repair","fixing_a_player",1.0,-1.0, 5000, 0, 1, true, true, true)
end
