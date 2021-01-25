local chairs = {}

AddEventHandler("vRP:playerSpawn", function(user_id, source, first_spawn)
    if first_spawn then
        TriggerClientEvent("vrp_chairs:place", source)
    end
    TriggerClientEvent('cn-chairs:load', source, chairs)
end)

AddEventHandler("vRP:playerLeave",function(user_id,source)
    for k,v in pairs(chairs) do
        if v == source then
            chairs[k] = nil
            TriggerClientEvent('cn-chairs:status', -1,k,nil)
        end
    end
end)

RegisterServerEvent('cn-chairs:sendstatus')
AddEventHandler('cn-chairs:sendstatus', function(id,used)
    chairs[id] = (used) and source or nil
    TriggerClientEvent('cn-chairs:status', -1, id,chairs[id])
end)
