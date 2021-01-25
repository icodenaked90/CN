--
-- Created by IntelliJ IDEA.
-- User: Sling
-- Date: 21-03-2019
-- Time: 17:35
-- Made for CiviliansNetwork
--

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")


vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_revive")


--RegisterCommand('comp', function(source)
--  local user_id = vRP.getUserId({source})
--  local player = vRP.getUserSource({user_id})
--  if vRP.hasPermission({user_id,"admin.revive"}) then
--    local ped = GetPlayerPed(source)
--    if vRP.hasInventoryItem({user_id, "components_smg"}) then
--      local weapon = "WEAPON_SMG"
--      local type = "standart"
--      TriggerClientEvent("loadComp",-1,weapon,type,player)
--    end
--    if vRP.hasInventoryItem({user_id, "components_carbinerifle"}) then
--      local weapon = "WEAPON_CARBINERIFLE"
--      local type = "standart"
--      TriggerClientEvent("loadComp",-1,weapon,type,player)
--    end
--    if vRP.hasInventoryItem({user_id, "components_sniperrifle"}) then
--      local weapon = "WEAPON_SNIPERRIFLE"
--      local type = "standart"
--      TriggerClientEvent("loadComp",-1,weapon,type,player)
--    end
--    if vRP.hasInventoryItem({user_id, "components_combatpistol"}) then
--      local weapon = "WEAPON_COMBATPISTOL"
--      local type = "standart"
--      TriggerClientEvent("loadComp",-1,weapon,type,player)
--    end
--    if vRP.hasInventoryItem({user_id, "components_vintagepistol"}) then
--      local weapon = "WEAPON_VINTAGEPISTOL"
--      local type = "standart"
--      TriggerClientEvent("loadComp",-1,weapon,type,player)
--    end
--    if vRP.hasInventoryItem({user_id, "components_snsmk2"}) then
--      local weapon = "WEAPON_SNSPISTOL_MK2"
--      local type = "standart"
--      TriggerClientEvent("loadComp",-1,weapon,type,player)
--    end
--    if vRP.hasInventoryItem({user_id, "components_snsmk2"}) then
--      local weapon = "WEAPON_SMG_MK2"
--      local type = "standart"
--      TriggerClientEvent("loadComp",-1,weapon,type,player)
--    end
--
--    --Bruger våben
--
--    if vRP.hasInventoryItem({user_id, "components_pistol"}) then
--      local weapon = "WEAPON_PISTOL"
--      local type = "standart"
--      TriggerClientEvent("loadComp",-1,weapon,type,player)
--    end
--    if vRP.hasInventoryItem({user_id, "components_pistol50"}) then
--      local weapon = "WEAPON_PISTOL50"
--      local type = "standart"
--      TriggerClientEvent("loadComp",-1,weapon,type,player)
--    end
--    if vRP.hasInventoryItem({user_id, "components_snspistol"}) then
--      local weapon = "WEAPON_SNSPISTOL"
--      local type = "standart"
--      TriggerClientEvent("loadComp",-1,weapon,type,player)
--    end
--    if vRP.hasInventoryItem({user_id, "components_pistolheavy"}) then
--      local weapon = "WEAPON_HEAVYPISTOL"
--      local type = "standart"
--      TriggerClientEvent("loadComp",-1,weapon,type,player)
--    end
--
--
--  end
--end)

RegisterServerEvent('giveback')
AddEventHandler('giveback', function(item)
  local user_id = vRP.getUserId({source})
  vRP.giveInventoryItem({user_id, item, 1, true})

end)
