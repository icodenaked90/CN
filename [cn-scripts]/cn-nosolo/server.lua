--
-- Created by IntelliJ IDEA.
-- User: Sling
-- Date: 31-03-2019
-- Time: 01:13
-- Made for CiviliansNetwork
--

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10000)
        TriggerClientEvent("cn-nosolo:check",-1,#GetPlayers())
    end
end)

RegisterServerEvent('cn-nosolo:kick')
AddEventHandler('cn-nosolo:kick', function()
    print("[SOLO] "..GetPlayerName(source).." blev kicket for solo session")
    DropPlayer(source,"Du er blevet kicket, da du var i solo session")
end)