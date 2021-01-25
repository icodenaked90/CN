local thermite

RegisterNetEvent('vrp_breakin:effects')
AddEventHandler('vrp_breakin:effects', function(k, coords, closeDoor)
local player2 = GetPlayerPed(-1)


RequestAnimDict("anim@heists@ornate_bank@thermal_charge")
while not HasAnimDictLoaded("anim@heists@ornate_bank@thermal_charge") do
  Wait(50)
end
local thermite = CreateObject(GetHashKey("prop_c4_final"), GetEntityCoords(player2),  true,  true, true)
AttachEntityToEntity(thermite, player2, GetPedBoneIndex(GetPlayerPed(-1), 28422), 0, 0, 0, -90.0, 0, 0, true, true, false, true, 1, true)
TaskPlayAnim(player2,"anim@heists@ornate_bank@thermal_charge","thermal_charge", 0.8, 0.0, -1,0, 0, 0, 0, 0)
blockKeys = true
Citizen.Wait(5000)
DetachEntity(thermite)
-- AttachEntityToEntity(thermite, closeDoor, 0, 0, 0, 175, 0, 0, 0.0, true, true, false, true, 1, true)
-- AttachEntityToEntity(thermite, closeDoor, 20, 0.0, coords[1], coords[2], 0.0, 0.0, 0.0, false, false, false, false, 20, true)
-- AttachEntityToEntity(thermite, closeDoor, 20, -0.5, -5.0, 1.0, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
FreezeEntityPosition(thermite,true)
blockKeys = false
ClearPedTasksImmediately(player2)

for i=1,5 do
  -- PlaySound(-1, "Out_Of_Bounds_Timer", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 0, 0, 1)
  PlaySound(player, "BOATS_PLANES_HELIS_BOOM", "MP_LOBBY_SOUNDS", 0, 0, 1)
  Wait(1000)
end

DeleteEntity(thermite)

end)

RegisterNetEvent('vrp_breakin:sounds')
AddEventHandler('vrp_breakin:sounds', function(k, coords)
  -- for i=1,5 do
  --   -- PlaySound(-1, "Out_Of_Bounds_Timer", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS", 0, 0, 1)
  --   PlaySound(player, "BOATS_PLANES_HELIS_BOOM", "MP_LOBBY_SOUNDS", 0, 0, 1)
  --   Wait(1000)
  -- end
  --
  -- DeleteEntity(thermite)
end)
