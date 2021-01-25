eventStatus = false

radius = 150



RegisterNetEvent("event:makeTheMarker")
AddEventHandler('event:makeTheMarker', function()
	eventStatus = true
end)

local time = 15

Citizen.CreateThread(function()
	while true do
	Citizen.Wait(0)
		if eventStatus and time >= 0 then
				Citizen.CreateThread(function()
    local scaleform = RequestScaleformMovie("mp_big_message_freemode")
    while not HasScaleformMovieLoaded(scaleform) do
        Citizen.Wait(0)
    end
    
    BeginScaleformMovieMethod(scaleform, "SHOW_SHARD_WASTED_MP_MESSAGE")
    PushScaleformMovieMethodParameterString(time .. " sekunder")
    PushScaleformMovieMethodParameterString("NEDTÆLLING")
    PushScaleformMovieMethodParameterInt(5)
    EndScaleformMovieMethod()

    while true do
        Citizen.Wait(0)
        DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255)
    end
end)
		end
	end
end)

