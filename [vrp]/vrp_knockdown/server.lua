local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local htmlEntities = module("vrp", "lib/htmlEntities")
vRPhk = {}
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_knockdown")
HKclient = Tunnel.getInterface("vrp_knockdown","vrp_knockdown")
Tunnel.bindInterface("vrp_knockdown",vRPhk)

function vRPhk.nockout()
  local user_id = vRP.getUserId({source})
  if vRP.hasPermission({user_id,"player.phone"}) then
    vRPclient.getNearestPlayer(source,{1},function(nplayer)
      local nuser_id = vRP.getUserId({nplayer})
      if nuser_id ~= nil then  
        vRPclient.playAnim(source,{true,{{"melee@hatchet@streamed_core","plyr_front_takedown_b",1 }},false})
        vRPclient.playAnim(nplayer,{false,{{"melee@pistol@streamed_core","victim_rear_takedown_kill",1}},false})
        Citizen.Wait(1000)
        TriggerClientEvent("oc:noqueado",nplayer)
        Citizen.Wait(29000)
        TriggerClientEvent("oc:noqueadooff",nplayer)      
        vRP.closeMenu({nplayer})                
      else
        vRPclient.stopAnim(source,{false})
        vRPclient.stopAnim(nplayer,{false})
        vRPclient.notify(source,"Du har rejst dig")
      end
    end)
  end
end
