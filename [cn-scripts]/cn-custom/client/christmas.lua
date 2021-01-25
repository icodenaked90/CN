local places = {
    {prop="prop_xmas_ext",coords={163.69,-981.38,28.00}}, --Midtby ved banken
    {prop="prop_xmas_ext",coords={222.13494873047,-900.73248291016,28.69229888916}}, -- Midtby ved CP
    {prop="prop_xmas_ext",coords={334.30944824219,-623.05279541016,27.293031692505}}, -- Hospital parkeringsplads
    {prop="prop_prlg_snowpile",coords={-37.20779800415,-1110.1833496094,24.437734603882}}, -- Bilforhandleren
    {prop="prop_prlg_snowpile",coords={-60.552509307861,-1092.4389648438,24.450848007202}}, -- Bilforhandleren
    {prop="prop_prlg_snowpile",coords={433.99209594727,-979.68890380859,28.709625244141}}, -- PD centrum
    {prop="prop_prlg_snowpile",coords={434.13125610352,-984.08032226563,28.709362030029}}, -- PD centrum
}

RegisterCommand("hemmeligkommandotilatplacerejuletræer",function()
	setTree()
end)

RegisterCommand("hemmeligkommandotilatfjernejuletræer",function()
	removeTree()
end)

RegisterNetEvent("lmc_snow:place")
AddEventHandler("lmc_snow:place", function()

  for k,v in pairs(places) do
    local xmas = GetHashKey(v.prop)
    local x,y,z,h = table.unpack(v.coords)
    local prop = CreateObject(xmas, x,y,z, false, false, false)
    PlaceObjectOnGroundProperly(prop)
  end

end, false)




function setTree()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	h = GetEntityHeading(ped)
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
	cone = GetHashKey("prop_xmas_ext")

    RequestModel(cone)
    while not HasModelLoaded(cone) do
      Citizen.Wait(1)
    end

    local object = CreateObject(cone, ox, oy, oz, true, true, false)
    PlaceObjectOnGroundProperly(object)
    FreezeEntityPosition(object,false)
	SetEntityHeading(object, h+90)
end



function removeTree()
    local ped = GetPlayerPed(-1)
    x, y, z = table.unpack(GetEntityCoords(ped, true))
	ox, oy, oz = table.unpack(GetOffsetFromEntityInWorldCoords(ped, -1.0, 1.0, -1.65))
    if DoesObjectOfTypeExistAtCoords(ox, oy, oz, 0.9, GetHashKey("prop_xmas_ext"), true) then
        spike = GetClosestObjectOfType(ox, oy, oz, 0.9, GetHashKey("prop_xmas_ext"), false, false, false)
        SetEntityAsMissionEntity(spike, true, true)
        DeleteObject(spike)
	end
end
