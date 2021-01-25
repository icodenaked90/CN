vRPpm = {}
Tunnel.bindInterface("vrp_power",vRPpm)
Proxy.addInterface("vrp_power",vRPpm)
PMserver = Tunnel.getInterface("vrp_power","vrp_barrier")
vRPserver = Tunnel.getInterface("vRP","vrp_power")
vRP = Proxy.getInterface("vRP")

function vRPpm.setLamppostOnGround()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	h = GetEntityHeading(ped)
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
	cone = GetHashKey("prop_ind_light_04")

    RequestModel(cone)
    while not HasModelLoaded(cone) do
      Citizen.Wait(1)
    end

    local object = CreateObject(cone, ox, oy, oz, true, true, false)
    PlaceObjectOnGroundProperly(object)
    FreezeEntityPosition(object,false)
	SetEntityHeading(object, h+90)
end


function vRPpm.isCloseToLamppost()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, 0.0, 1.0, -2.0))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 2.9, GetHashKey("prop_ind_light_04"), true) then
	  return true
	else
	  return false
	end
end


function vRPpm.removeLamppost()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 2.9, GetHashKey("prop_ind_light_04"), true) then
        spike = GetClosestObjectOfType(ox, oy, oz, 2.9, GetHashKey("prop_ind_light_04"), false, false, false)
        SetEntityAsMissionEntity(spike, true, true)
        DeleteObject(spike)
	end
end




function vRPpm.setWorklightOnGround()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	h = GetEntityHeading(ped)
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
	cone = GetHashKey("prop_worklight_03b")

    RequestModel(cone)
    while not HasModelLoaded(cone) do
      Citizen.Wait(1)
    end

    local object = CreateObject(cone, ox, oy, oz, true, true, false)
    PlaceObjectOnGroundProperly(object)
    FreezeEntityPosition(object,false)
	SetEntityHeading(object, h+90)
end


function vRPpm.isCloseToWorklight()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, 0.0, 1.0, -2.0))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 2.9, GetHashKey("prop_worklight_03b"), true) then
	  return true
	else
	  return false
	end
end


function vRPpm.removeWorklight()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 2.9, GetHashKey("prop_worklight_03b"), true) then
        spike = GetClosestObjectOfType(ox, oy, oz, 2.9, GetHashKey("prop_worklight_03b"), false, false, false)
        SetEntityAsMissionEntity(spike, true, true)
        DeleteObject(spike)
	end
end





function vRPpm.setLightbarrierOnGround()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	h = GetEntityHeading(ped)
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
	cone = GetHashKey("prop_mp_arrow_barrier_01")

    RequestModel(cone)
    while not HasModelLoaded(cone) do
      Citizen.Wait(1)
    end

    local object = CreateObject(cone, ox, oy, oz, true, true, false)
    PlaceObjectOnGroundProperly(object)
    FreezeEntityPosition(object,true)
	SetEntityHeading(object, h+90)
end


function vRPpm.isCloseToLightbarrier()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, 0.0, 1.0, -2.0))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 2.9, GetHashKey("prop_mp_arrow_barrier_01"), true) then
	  return true
	else
	  return false
	end
end


function vRPpm.removeLightbarrier()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 2.9, GetHashKey("prop_mp_arrow_barrier_01"), true) then
        spike = GetClosestObjectOfType(ox, oy, oz, 2.9, GetHashKey("prop_mp_arrow_barrier_01"), false, false, false)
        SetEntityAsMissionEntity(spike, true, true)
        DeleteObject(spike)
	end
end



function vRPpm.setTerrorbarrierOnGround()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	h = GetEntityHeading(ped)
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
	cone = GetHashKey("prop_mp_barrier_01")

    RequestModel(cone)
    while not HasModelLoaded(cone) do
      Citizen.Wait(1)
    end

    local object = CreateObject(cone, ox, oy, oz, true, true, false)
    PlaceObjectOnGroundProperly(object)
    FreezeEntityPosition(object,true)
	SetEntityHeading(object, h+90)
end


function vRPpm.isCloseToTerrorbarrier()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, 0.0, 1.0, -2.0))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 2.9, GetHashKey("prop_mp_barrier_01"), true) then
	  return true
	else
	  return false
	end
end


function vRPpm.removeTerrorbarrier()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 2.9, GetHashKey("prop_mp_barrier_01"), true) then
        spike = GetClosestObjectOfType(ox, oy, oz, 2.9, GetHashKey("prop_mp_barrier_01"), false, false, false)
        SetEntityAsMissionEntity(spike, true, true)
        DeleteObject(spike)
	end
end



function vRPpm.setGeneratorOnGround()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	h = GetEntityHeading(ped)
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
	cone = GetHashKey("prop_set_generator_01_cr")

    RequestModel(cone)
    while not HasModelLoaded(cone) do
      Citizen.Wait(1)
    end

    local object = CreateObject(cone, ox, oy, oz, true, true, false)
    PlaceObjectOnGroundProperly(object)
    FreezeEntityPosition(object,true)
	SetEntityHeading(object, h+90)
end


function vRPpm.isCloseToGenerator()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, 0.0, 1.0, -2.0))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 2.9, GetHashKey("prop_set_generator_01_cr"), true) then
	  return true
	else
	  return false
	end
end


function vRPpm.removeGenerator()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 2.9, GetHashKey("prop_set_generator_01_cr"), true) then
        spike = GetClosestObjectOfType(ox, oy, oz, 2.9, GetHashKey("prop_set_generator_01_cr"), false, false, false)
        SetEntityAsMissionEntity(spike, true, true)
        DeleteObject(spike)
	end
end
