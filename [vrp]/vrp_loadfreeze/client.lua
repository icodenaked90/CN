local frozen = true
local loading = false

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if frozen == true then
			SetEntityInvincible(GetPlayerPed(-1),true)
			SetEntityVisible(GetPlayerPed(-1),false)
			FreezeEntityPosition(GetPlayerPed(-1),true)
		end
	end
end)

AddEventHandler("playerSpawned",function()
    loading = true
		DoSelectionCamera()
    Wait(15000)
    loading = false
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		if loading then
			local i = 0
	    while i < 237473 do
				LoadInterior(i)
				RefreshInterior(i)
	      Citizen.Wait(1)
	      i = i+1
	    end
		end
	end
end)

RegisterNetEvent("movebitch")
AddEventHandler("movebitch", function()
    -- InitialSetups()
		ResetCamera()
end)

RegisterCommand("fakejoin", function()
	TriggerEvent("playerSpawned")
end)

RegisterCommand("test", function()
  DoSelectionCamera()
end)

RegisterCommand("123", function()
DoScreenFadeOut(500)
end)

RegisterCommand("fix", function()
	frozen = false
	SetEntityInvincible(GetPlayerPed(-1), false)
	SetEntityVisible(GetPlayerPed(-1), true, false)
	FreezeEntityPosition(GetPlayerPed(-1),false)
end)



function ResetCamera()
    local pos = GetEntityCoords(GetPlayerPed(-1))
		DoScreenFadeIn(500)
		SetTimecycleModifier('default')
     SetEntityCoords(GetPlayerPed(-1), pos.x, pos.y, pos.z)
     DoScreenFadeIn(500)
     Citizen.Wait(1)
     cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", -1355.93, -1487.78, 520.75, 300.00, 0.00, 0.00, 100.00, false, 0)
     PointCamAtCoord(cam2, pos.x,pos.y,pos.z+200)
     SetCamActiveWithInterp(cam2, cam, 5900, true, true)
     Citizen.Wait(5000)

     cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", pos.x,pos.y,pos.z+200, 300.00,0.00,0.00, 100.00, false, 0)
     PointCamAtCoord(cam, pos.x,pos.y,pos.z+2)
     SetCamActiveWithInterp(cam, cam2, 3700, true, true)
     Citizen.Wait(5700)
     PlaySoundFrontend(-1, "Zoom_Out", "DLC_HEIST_PLANNING_BOARD_SOUNDS", 1)
     RenderScriptCams(false, true, 500, true, true)
     PlaySoundFrontend(-1, "CAR_BIKE_WHOOSH", "MP_LOBBY_SOUNDS", 1)
     FreezeEntityPosition(GetPlayerPed(-1), false)
     Citizen.Wait(1500)
     SetCamActive(cam, false)
     DestroyCam(cam, true)
     DisplayHud(true)
     DisplayRadar(true)

		frozen = false
    SetEntityInvincible(GetPlayerPed(-1), false)
    SetEntityVisible(GetPlayerPed(-1), true, false)
    FreezeEntityPosition(GetPlayerPed(-1),false)
end

function DoSelectionCamera()
	DoScreenFadeOut(500)
    DisplayHud(false)
    DisplayRadar(false)
    while not IsScreenFadedOut() do
        Citizen.Wait(10)
    end
    SetTimecycleModifier("hud_def_blur")
    FreezeEntityPosition(GetPlayerPed(-1), true)
    local cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", -1355.93, -1487.78, 520.75, 300.00, 0.00, 0.00, 100.00, false, 0)
    SetCamActive(cam, true)
    RenderScriptCams(true, false, 1, true, true)
		DoScreenFadeIn(500)
		Wait(30000)
		DoScreenFadeOut(500)

    -- DoScreenFadeIn(500)

end
