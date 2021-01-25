function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())

    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 20, 20, 20, 150)
end


Citizen.CreateThread(function()
  while true do
    Citizen.Wait(100)
    local coords = GetEntityCoords(PlayerPedId(),true)
    local x,y,z = table.unpack(coords)
    local ball = GetClosestObjectOfType(x, y, z, 1.7, "w_am_baseball", false, false, false)
    if ball ~= 0 then
      if DoesObjectOfTypeExistAtCoords(x, y, z, 0.9, GetHashKey("w_am_baseball"), true) then
        if not (GetSelectedPedWeapon(PlayerPedId()) == GetHashKey('WEAPON_BALL')) then
        local bcoords = GetEntityCoords(ball, true)
        DrawText3Ds(bcoords["x"],bcoords["y"],bcoords["z"]+0.75,"Tryk ~g~Page Down ~w~for at samle bolden op")
          if IsControlJustPressed(1, 207) then

          RequestAnimDict('anim@mp_snowball')
          TaskPlayAnim(PlayerPedId(), 'anim@mp_snowball', 'pickup_snowball', 8.0, -1, -1, 0, 1, 0, 0, 0)
              removeBall()
              Citizen.Wait(1950)
              GiveWeaponToPed(GetPlayerPed(-1), GetHashKey('WEAPON_BALL'), 1, false, true)
            end
        end
      end
    end
  end
end)

function removeBall()
  local coords = GetEntityCoords(PlayerPedId(),true)
  local x,y,z = table.unpack(coords)
  local ball = GetClosestObjectOfType(x, y, z, 1.7, "w_am_baseball", false, false, false)
  SetEntityAsMissionEntity(ball, true, true)
  DeleteObject(ball)
end

---383950123
