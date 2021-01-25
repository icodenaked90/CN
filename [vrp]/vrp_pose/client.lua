can_putbag = true

local a = 0

function closeGui()
	SetNuiFocus(false)
	SendNUIMessage({openNUI = false})
end
function openGui()
    SetNuiFocus(false)
    SendNUIMessage({openNUI = true})
end


RegisterNetEvent('pose_on')
AddEventHandler('pose_on', function()
  a= a + 1
  if a % 2 ~= 0 and not IsPedInAnyVehicle(GetPlayerPed(-1),false) then
    local playerPed = GetPlayerPed(-1)
    bag = CreateObject(GetHashKey("prop_money_bag_01"), 0, 0, 0, true, true, true)
    AttachEntityToEntity(bag, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 12844), 0.2, 0.04, 0, 0, 270.0, 60.0, true, true, false, true, 1, true)
    openGui()
    can_putbag = false
  end
end)

RegisterNetEvent('pose_off')
AddEventHandler('pose_off', function()
        DeleteEntity(bag)
        closeGui()
        can_putbag = true
end)