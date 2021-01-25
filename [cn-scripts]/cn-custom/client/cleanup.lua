--------------------------------
-- CleanUp --
--------------------------------

--GetClosestObjectOfType(x, y, z, radius, modelHash, false, p6, p7)
local objectslist = {
	-1184516519,
	-136782495,
	307771752,
	627816582,
	1046551856,
}

Citizen.CreateThread(function()
	while true do
		local player = GetPlayerPed(-1)
		local pos = GetEntityCoords(player)

		local handle, object = FindFirstObject()
		local success


		if has_value(objectslist, GetEntityModel(object)) then
			RemoveObject(object)
		end
		repeat
			success, object = FindNextObject(handle)

			if has_value(objectslist, GetEntityModel(object)) then
				RemoveObject(object)
			end
		until not success

		EndFindObject(handle)

		Citizen.Wait(500)
	end
end)

function RemoveObject(object)
	SetEntityAsMissionEntity(object,  false,  true)
	DeleteObject(object)
end

function has_value (tab, val)
	for index, value in ipairs(tab) do
		if value == val then
			return true
		end
	end

	return false
end
