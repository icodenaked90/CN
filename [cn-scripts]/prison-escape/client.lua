-- Script made by TakenDK --
-- Made for Civilians Network --
-- Date and time 11/9/2019 --
-- This script shall not be shared with out my permission --

--coords1 = {
--  { custom1 = {['x']=1801.2193603516, ['y']=2480.6049804688, ['z']=45.565155029297}}
--}
--1801.2193603516,2480.6049804688,45.565155029297
coords2 = {
  { custom2 = {['x']=-290.10296630859, ['y']=2542.9758300781, ['z']=74.315451049805}}
}

rgb = {r = 202, g = 237, b = 150}
alpha = 255

Citizen.CreateThread(function()
    while true do
      Citizen.Wait(0)
        for k,v in pairs (coords1) do
          local pos = v.custom1
          local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
          local ped = GetPlayerPed(-1)
        DrawMarker(1, pos.x, pos.y, pos.z, 0, 0, 0, 0, 0, 0, 5.0, 5.0, 0.6, rgb.r, rgb.g, rgb.b, alpha, 1, 1, 0, 1, 0, 0, 0) -- WILL DRAW MARKERS IN THE COORDS YOU SET IN "coords1" lane 1

        RequestModel("prop_boxpile_06a")
        while not HasModelLoaded("prop_boxpile_06a") do
           Wait(1)
        end

        if (Vdist(pos.x, pos.y, pos.z, x, y, z, true) < 3) then
            helptext("Tryk ~INPUT_CONTEXT~ for at arbejde.")
            if IsControlJustPressed(0, 86) then -- E
                Wait(1000)
              local objectS = CreateObject(GetHashKey("prop_boxpile_06a"), x, y, z, true, true, true)
              PlaceObjectOnGroundProperly(objectS)
			  Wait(3*60000)
            end
        end
      end
    end
end)


Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
      for k,v in pairs (coords2) do
        local pos = v.custom2
        local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        local ped = PlayerPedId()
      DrawMarker(27, pos.x, pos.y, pos.z, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.6, rgb.r, rgb.g, rgb.b, alpha, 0, 1, 0, 1, 0, 0, 0) -- WILL DRAW MARKERS IN THE COORDS YOU SET IN "coords2" lane 1
      if (Vdist(pos.x, pos.y, pos.z, x, y, z, true) < 1.3)  then
          helptext("Tryk ~INPUT_CONTEXT~ for at gennemføre dit prisonbreak")
          if IsControlJustPressed(0, 86) then -- E
            --local objectId = GetClosestObjectOfType(x, y, z, 2.0, GetHashKey(""), true)
            --  if objectId ~= 0 then
            --      DeleteObject(objectId)
                  TriggerServerEvent("prisonescape",ped)
                  Wait(3*60000)
            --  else
             --     helptext("Kassen skal være i cirklen")
              end
          --end
      end
    end
  end
end)


function helptext(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)								
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

