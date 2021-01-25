--
-- Created by IntelliJ IDEA.
-- User: Sling
-- Date: 31-03-2019
-- Time: 01:13
-- Made for CiviliansNetwork
--
local isReady = false

--[[AddEventHandler("playerSpawned",function() -- delay state recording
    Citizen.CreateThread(function()
        Citizen.Wait(30000)
        isReady = true
    end)
end)]]

local warnings = 0

RegisterNetEvent('cn-nosolo:check')
AddEventHandler('cn-nosolo:check', function(amount)

    if GetNumberOfPlayers() ~= amount and isReady then
        warnings = warnings+1
        if warnings == 3 then
            TriggerServerEvent("cn-nosolo:kick")
        end
    else
        if warnings ~= 0 then warnings = 0 end
    end
end)

RegisterNetEvent("movebitch")
AddEventHandler('movebitch', function()
    SetTimeout(30000, function()
        isReady = true
    end)
end)