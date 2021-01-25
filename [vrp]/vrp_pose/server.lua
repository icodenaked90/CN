local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_headbag")

  vRP.defInventoryItem({"pose","Pap Pose","Bruges ofte til at lægge dine varer i fra indkøb",
    function(args)
        local choices = {}
        choices["> Brug"] = {function(player,choice)
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                vRPclient.getNearestPlayer(player,{1},function(nplayer)
                    vRPclient.canBeDragged(nplayer,{}, function(handcuffed)  -- check handcuffed
                    local nuser_id = vRP.getUserId({nplayer})
                    if nuser_id ~= nil then
                        if handcuffed then
                         if vRP.tryGetInventoryItem({user_id, "pose", 1, true}) then
                            TriggerClientEvent("pNotify:SendNotification", player,{text = "<center>Bruger pose på den nærmeste person. <br> Vent 5 sekunder til du har spændt posen!</center>", type = "error", queue = "global", timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
                            Wait(5000)
                            TriggerClientEvent('pose_on', nplayer)
                          end
                        else
                            TriggerClientEvent("pNotify:SendNotification", player,{text = "Personen er ikke i håndjern!", type = "error", queue = "global", timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
                        end
                else
                    TriggerClientEvent("pNotify:SendNotification", player,{text = "Ingen person nær dig!", type = "error", queue = "global", timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
                        end
                end)
            end)
                vRP.closeMenu({player})
            end
        end,"Indkøbspose"}

        return choices
    end, 0.05})
