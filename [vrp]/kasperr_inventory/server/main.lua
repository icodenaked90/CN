--[[
  __  __           _            _                 _  __                         _____
 |  \/  |         | |          | |               | |/ /                        |  __ \
 | \  / | __ _  __| | ___      | |__  _   _      | ' / __ _ ___ _ __   ___ _ __| |__) |
 | |\/| |/ _` |/ _` |/ _ \     | '_ \| | | |     |  < / _` / __| '_ \ / _ \ '__|  _  /
 | |  | | (_| | (_| |  __/     | |_) | |_| |     | . \ (_| \__ \ |_) |  __/ |  | | \ \
 |_|  |_|\__,_|\__,_|\___|     |_.__/ \__, |     |_|\_\__,_|___/ .__/ \___|_|  |_|  \_\
                                       __/ |                   | |
                                      |___/                    |_|

  Author: Kasper Rasmussen
  Steam: https://steamcommunity.com/id/kasperrasmussen
]]
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRPanim = Tunnel.getInterface("cn-animation","vRP") -- server -> client tunnel

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "kasperr_inventory")

RegisterServerEvent("kasperr_inventory:openGui")
AddEventHandler(
    "kasperr_inventory:openGui",
    function()
        local user_id = vRP.getUserId({source})
        local player = vRP.getUserSource({user_id})
        local data = vRP.getUserDataTable({user_id})
        if data and data.inventory then
            local inventory = {}
            for data_k, data_v in pairs(data.inventory) do
                for items_k, items_v in pairs(items) do
                    if data_k == items_k then
                        local item_name = vRP.getItemName({data_k})
                        local item_weight = vRP.getItemWeight({data_k})
                        if item_name then
                            table.insert(
                                inventory,
                                {
                                    name = item_name,
                                    weight = item_weight,
                                    amount = data_v.amount,
                                    idname = data_k,
                                    icon = items_v[3]
                                }
                            )
                        end
                    end
                end
            end
            local weight = vRP.getInventoryWeight({user_id})
            local maxWeight = vRP.getInventoryMaxWeight({user_id})
            TriggerClientEvent("kasperr_inventory:updateInventory", source, inventory, weight, maxWeight)
        end
    end
)

RegisterServerEvent("kasperr_inventory:useItem")
AddEventHandler(
    "kasperr_inventory:useItem",
    function(args)
        local data = args[1]
        local user_id = vRP.getUserId({source})
        local player = vRP.getUserSource({user_id})

        if data.idname then
            for k, v in pairs(items) do
                if data.idname == k then
                    useItem(user_id, player, k, v[1], v[2], data.amount)
                end
            end
        end
    end
)

RegisterServerEvent("kasperr_inventory:dropItem")
AddEventHandler(
    "kasperr_inventory:dropItem",
    function(data)
        local user_id = vRP.getUserId({source})
        local player = vRP.getUserSource({user_id})
        local amount = parseInt(data.amount)
        if vRP.tryGetInventoryItem({user_id, data.idname, amount, false}) then
            TriggerClientEvent("kasperr_inventory:closeGui", player)
            vRPclient.playAnim(player, {true, {{"pickup_object", "pickup_low", 1}}, false})
            TriggerEvent("cn-itemdrop:drop", player, data.idname, amount)
        else
            TriggerClientEvent(
                "kasperr_inventory:UINotification",
                player,
                "warning",
                Config.Language.WarningTitle,
                Config.Language.Error
            )
        end
    end
)


function split(str, sep)
    local array = {}
    local reg = string.format("([^%s]+)", sep)
    for mem in string.gmatch(str, reg) do
        table.insert(array, mem)
    end
    return array
end

function useItem(user_id, player, idname, type, variation, amount)
    --if type == "drink" or type == "alkohol" or type == "food" or type == "heal" or type == "weapon" or type == "extended" or type == "silencer" or type == "skin" or type == "ammo" or type =="armor1" or type == "armor2" or type == "repairkit" or type == "hotwing" or type == "attachment" or type == "box" or type == "kasse1" or type == "kasse2" or type == "kasse3" or type == "kasse4" then
        if type == "drink" then
            if vRP.tryGetInventoryItem({user_id, idname, tonumber(amount), false}) then
                TriggerClientEvent("kasperr_inventory:objectForAnimation", player, "prop_ld_flow_bottle")
                play_drink(player)
                for i = 1, tonumber(amount) do
                    if vary_thirst ~= 0 then vRP.varyThirst({user_id,variation}) end
                    local piss = math.abs(variation/3)
                    if piss ~= 0 then vRP.varyPiss({user_id,math.floor(piss)}) end
                end
            end
        end
        if type == "alkohol" then
            if vRP.tryGetInventoryItem({user_id, idname, tonumber(amount), false}) then
                TriggerClientEvent("kasperr_inventory:objectForAnimation", player, "prop_ld_flow_bottle")
                play_drink(player)
                for i = 1, tonumber(amount) do
                    if vary_thirst ~= 0 then vRP.varyThirst({user_id,variation}) end
                    if vary_promille ~= 0 then vRP.varyPromille({user_id,variation}) end
                    local piss = math.abs(variation/3)
                    if piss ~= 0 then vRP.varyPiss({user_id,math.floor(piss)}) end
                end
            end
        end
        if type == "food" then
            if vRP.tryGetInventoryItem({user_id, idname, tonumber(amount), false}) then
                TriggerClientEvent("kasperr_inventory:objectForAnimation", player, "prop_cs_burger_01")
                play_eat(player)
                for i = 1, tonumber(amount) do
                    --vRP.varyHunger({user_id, variation})
                    if vary_hunger ~= 0 then vRP.varyHunger({user_id,variation}) end
                end
            end
        end
        if type == "heal" then
            if vRP.tryGetInventoryItem({user_id, idname, tonumber(amount), false}) then
                for i = 1, tonumber(amount) do
                    vRPclient.varyHealth(player, {25})
                end
            end
        end
        if type == "weapon" then
            if vRP.tryGetInventoryItem({user_id, idname, tonumber(amount), false}) then
                local fullidname = split(idname, "|")
                vRPclient.giveWeapons(
                        player,
                        {
                            {
                                [fullidname[2]] = {ammo = 0}
                            },
                            false
                        }
                )
                local message = "ID: **"..user_id.." ".."**Equiper**".." "..amount.." ".."**Stk**".." "..idname.." ".."**på kroppen**"
                PerformHttpRequest('https://discordapp.com/api/webhooks/663074716290121748/u_LVvH1uSx_ovZ5BLS9v6IN6rSlKMwTd4Ak72LdkBfisV-gyFlMGuOjb_kDbO6q9RJTB', function(err, text, headers) end, 'POST', json.encode({username = "Server " .. GetConvar("servernumber","0") .." - Equip ", content = message}), { ['Content-Type'] = 'application/json' })
            end
        end

        if type == "ammo" then
            local fullidname = split(idname, "|")
            local exists = false
            vRPclient.getWeapons(
                    player,
                    {},
                    function(weapons)
                        for k, v in pairs(weapons) do
                            if k == fullidname[2] then
                                exists = true
                            end
                        end
                        if exists == true then
                            if vRP.tryGetInventoryItem({user_id, idname, tonumber(amount), false}) then
                                vRPclient.giveWeapons(
                                        player,
                                        {
                                            {
                                                [fullidname[2]] = {ammo = tonumber(amount)}
                                            },
                                            false
                                        }
                                )
                                local message = "ID: **"..user_id.." ".."**Equiper**".." "..amount.." ".."**Stk**".." "..idname.." ".."**på kroppen**"
                                PerformHttpRequest('https://discordapp.com/api/webhooks/663074716290121748/u_LVvH1uSx_ovZ5BLS9v6IN6rSlKMwTd4Ak72LdkBfisV-gyFlMGuOjb_kDbO6q9RJTB', function(err, text, headers) end, 'POST', json.encode({username = "Server " .. GetConvar("servernumber","0") .." - Equip ", content = message}), { ['Content-Type'] = 'application/json' })
                            end
                        else
                            TriggerClientEvent(
                                    "kasperr_inventory:UINotification",
                                    player,
                                    "warning",
                                    Config.Language.WarningTitle,
                                    Config.Language.WeaponNotEquipped
                            )
                        end
                    end
            )
        end
        if type == "extended" then
            local fullidname = split(idname, "|")
            local exists = false
            vRPclient.getWeapons(
                    player,
                    {},
                    function(weapons)
                        for k, v in pairs(weapons) do
                            if k == fullidname[2] then
                                exists = true
                            end
                        end
                        if exists == true then
                            if vRP.tryGetInventoryItem({user_id, idname, tonumber(amount), false}) then
                                local attachment = "extended"
                                TriggerClientEvent("loadComp",player,fullidname[2],attachment)
                                local message = "ID: **"..user_id.." ".."**Equiper**".." "..amount.." ".."**Stk**".." "..idname.." ".."**på kroppen**"
                                PerformHttpRequest('https://discordapp.com/api/webhooks/663074716290121748/u_LVvH1uSx_ovZ5BLS9v6IN6rSlKMwTd4Ak72LdkBfisV-gyFlMGuOjb_kDbO6q9RJTB', function(err, text, headers) end, 'POST', json.encode({username = "Server " .. GetConvar("servernumber","0") .." - Equip ", content = message}), { ['Content-Type'] = 'application/json' })
                            end
                        else
                            TriggerClientEvent(
                                    "kasperr_inventory:UINotification",
                                    player,
                                    "warning",
                                    Config.Language.WarningTitle,
                                    Config.Language.WeaponNotEquipped
                            )
                        end
                    end
            )
        end
        if type == "silencer" then
            local fullidname = split(idname, "|")
            local exists = false
            vRPclient.getWeapons(
                    player,
                    {},
                    function(weapons)
                        for k, v in pairs(weapons) do
                            if k == fullidname[2] then
                                exists = true
                            end
                        end
                        if exists == true then
                            if vRP.tryGetInventoryItem({user_id, idname, tonumber(amount), false}) then
                                local attachment = "silencer"
                                TriggerClientEvent("loadComp",player,fullidname[2],attachment)
                                local message = "ID: **"..user_id.." ".."**Equiper**".." "..amount.." ".."**Stk**".." "..idname.." ".."**på kroppen**"
                                PerformHttpRequest('https://discordapp.com/api/webhooks/663074716290121748/u_LVvH1uSx_ovZ5BLS9v6IN6rSlKMwTd4Ak72LdkBfisV-gyFlMGuOjb_kDbO6q9RJTB', function(err, text, headers) end, 'POST', json.encode({username = "Server " .. GetConvar("servernumber","0") .." - Equip ", content = message}), { ['Content-Type'] = 'application/json' })
                            end
                        else
                            TriggerClientEvent(
                                    "kasperr_inventory:UINotification",
                                    player,
                                    "warning",
                                    Config.Language.WarningTitle,
                                    Config.Language.WeaponNotEquipped
                            )
                        end
                    end
            )
        end
        if type == "skin" then
            local fullidname = split(idname, "|")
            local exists = false
            vRPclient.getWeapons(
                    player,
                    {},
                    function(weapons)
                        for k, v in pairs(weapons) do
                            if k == fullidname[2] then
                                exists = true
                            end
                        end
                        if exists == true then
                            if vRP.tryGetInventoryItem({user_id, idname, tonumber(amount), false}) then
                                local attachment = "skin"
                                TriggerClientEvent("loadComp",player,fullidname[2],attachment)
                                local message = "ID: **"..user_id.." ".."**Equiper**".." "..amount.." ".."**Stk**".." "..idname.." ".."**på kroppen**"
                                PerformHttpRequest('https://discordapp.com/api/webhooks/663074716290121748/u_LVvH1uSx_ovZ5BLS9v6IN6rSlKMwTd4Ak72LdkBfisV-gyFlMGuOjb_kDbO6q9RJTB', function(err, text, headers) end, 'POST', json.encode({username = "Server " .. GetConvar("servernumber","0") .." - Equip ", content = message}), { ['Content-Type'] = 'application/json' })
                            end
                        else
                            TriggerClientEvent(
                                    "kasperr_inventory:UINotification",
                                    player,
                                    "warning",
                                    Config.Language.WarningTitle,
                                    Config.Language.WeaponNotEquipped
                            )
                        end
                    end
            )
        end
        if type == "none" then
            TriggerClientEvent(
                    "kasperr_inventory:UINotification",
                    player,
                    "warning",
                    Config.Language.WarningTitle,
                    Config.Language.CannotBeUsed
            )
        end
        if type == "skaere" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                local amount = vRP.getInventoryItemAmount({user_id, idname})
                TriggerClientEvent("cn-animation:start", player, "weld")
                vRP.tryGetInventoryItem({user_id, "skaerebraender", 1, true})
                Wait(60000)
                vRPanim.getCurrentAnim(player,{},function(anim)
                    if anim == "weld" then
                        vRPclient.getNearestPlayer(player,{10},function(nplayer)
                            local nuser_id = vRP.getUserId({nplayer})
                            if nuser_id ~= nil then
                                vRPclient.ejectVehicle(nplayer, {})
                            end

                        end)
                        TriggerClientEvent("cn-animation:stopAnim", player)

                    else
                        TriggerClientEvent("pNotify:SendNotification", player,{text = "Du afbrød handlingen, og kom ikke ind i bilen!", type = "error", queue = "global", timeout = 3000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
                    end
                end)
            end
        end
        if type == "strips" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                vRPclient.getNearestPlayer(player,{1},function(nplayer)
                    local nuser_id = vRP.getUserId({nplayer})
                    if nuser_id ~= nil then
                        if vRP.tryGetInventoryItem({user_id, "strip", 1, true}) then
                            TriggerClientEvent('3dme:triggerDisplay', -1, "Binder hænder sammen", player)
                            TriggerClientEvent("emote:startWithoutNotify", player, "høst")
                            Wait(1000)
                            vRPclient.setStriped(nplayer,{true})
                            TriggerClientEvent("emote:stop", player)
                        end
                    else
                        TriggerClientEvent("pNotify:SendNotification", player,{text = "Ingen personer nær dig", type = "error", queue = "global", timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
                    end
                end)
            end
        end

        local function play_lighter(player)
            local seq2 = {
                {"bar_1_rcm_p2-1","cs_mich1_lighter_sparks-1",1},
                {"bar_1_rcm_p2-2","cs_mich1_lighter_sparks-2",1},
                {"bar_1_rcm_p2-3","cs_mich1_lighter_sparks-3",1},
                {"bar_1_rcm_p2-0","cs_mich1_lighter_flame-0",1},
                {"bar_1_rcm_p2-5","cs_mich1_lighter_flame-5",1},
                {"bar_1_rcm_p2-10","cs_mich1_lighter_flame-10",1},
            }

            vRPclient.playAnim(player,{true,seq2,false})
        end
        if type == "ristcig" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.tryGetInventoryItem({user_id,"cigaret", 1}) and vRP.tryGetInventoryItem({user_id,"lighter", 1})  then
                    play_lighter(player)
                    vRP.giveInventoryItem({user_id,"ristetcigaret",1})
                end
            end
        end
        if type == "ruljoint" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.hasInventoryItem({user_id, "paper"}) and
                        vRP.hasInventoryItem({user_id, "ristetcigaret"}) and
                        vRP.hasInventoryItem({user_id, "skunk"})
                then

                    vRP.tryGetInventoryItem({user_id,"paper", 1})
                    vRP.tryGetInventoryItem({user_id,"ristetcigaret", 1})
                    vRP.tryGetInventoryItem({user_id,"skunk", 1})
                    TriggerClientEvent("cn-animation:start", player, "farm")
                    vRP.giveInventoryItem({user_id,"joint",1})
                else
                    TriggerClientEvent("pNotify:SendNotification", player,{text = "NOPE", type = "error", queue = "global", timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
                end

            end
        end
        if type == "rygcig" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.tryGetInventoryItem({user_id,"cigaret",1}) then
                    vRPclient.playAnim(player,{false,{task="WORLD_HUMAN_SMOKING"},false})
                end
            end
        end
        if type == "cigpakke" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.tryGetInventoryItem({user_id,"cigaretpakke",1}) then
                    vRP.giveInventoryItem({user_id,"cigaret",20,true})
                end
            end
        end
        if type == "hotwing" then
            local user_id = vRP.getUserId(player)

            if user_id ~= nil then
                if vRP.tryGetInventoryItem({user_id, "hotwingsb", 1}) then
                    vRP.giveInventoryItem({user_id, "hotwings", 14, true})
                end
            end
        end
        if type == "smokejoint" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.tryGetInventoryItem({user_id,"joint", 1}) then
                    TriggerClientEvent("cn-animation:start", player, "joint")
                    vRPclient.notify(player,{"~g~ Ryger joint"})
                end
            end
        end
        if type == "snifcoke" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.tryGetInventoryItem({user_id,"kokain",1}) then
                    vRP.varyThirst({user_id,(20)})
                    vRPclient.notify(player,{"~g~ Snif kokain"})
                    vRPclient.playMovement(player,{"MOVE_M@DRUNK@SLIGHTLYDRUNK",true,true,false,false})
                    vRPclient.playScreenEffect(player, {"DMT_flight", 60})
                end
            end
        end
        if type == "taglsd" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.tryGetInventoryItem({user_id,"lsd",1}) then
                    vRP.varyThirst({user_id,(20)})
                    vRPclient.notify(player,{"~g~ Tag lsd"})
                    vRPclient.playMovement(player,{"MOVE_M@DRUNK@SLIGHTLYDRUNK",true,true,false,false})
                    vRPclient.playScreenEffect(player, {"DMT_flight", 120})
                end
            end
        end
        if type == "armor1" then
            if vRP.tryGetInventoryItem({user_id, idname, tonumber(amount), false}) then
                for i = 1, tonumber(amount) do
                    TriggerClientEvent("emote:startWithoutNotify", player, "bodyarmor")
                    vRPclient.toggleFreeze(player, {})
                    Wait(5000)
                    vRPclient.setArmour(player,{100,true})
                    vRP.updateArmor({100})
                    vRPclient.toggleFreeze(player, {})
                    TriggerClientEvent("emote:stop", player)
                end
            end
        end
        if type == "armor2" then
            if vRP.tryGetInventoryItem({user_id, idname, tonumber(amount), false}) then
                for i = 1, tonumber(amount) do
                    vRPclient.getArmour(player,{},function(armor)
                        if armor < 100 then
                            TriggerClientEvent("emote:startWithoutNotify", player, "bodyarmor")
                            vRPclient.toggleFreeze(player, {})
                            Wait(5000)
                            vRPclient.setArmour(player,{armor + 25,true})
                            vRP.updateArmor({armor + 25})
                            vRPclient.toggleFreeze(player, {})
                            TriggerClientEvent("emote:stop", player)
                            --TriggerClientEvent("pNotify:SendNotification", player,{text = {lang.money.paid({price})}, type = "success", queue = "global", timeout = 4000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
                        else
                            TriggerClientEvent("pNotify:SendNotification", player,{text = {"Du har allerede en skudsikker vest på"}, type = "error", queue = "global", timeout = 4000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
                        end
                    end)
                end
            end
        end
        if type == "kikkert" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.hasInventoryItem({user_id, "kikkert", 1, false}) then
                    TriggerClientEvent("pNotify:SendNotification", player,{text = "Brug<b style='color: #72AEE5'> musehjulet </b>til at zoome ind!", type = "warning", queue = "global", timeout = 5000, layout = "centerLeft",animation = {open = "gta_effects_open", close = "gta_effects_close"}})
                    TriggerClientEvent('kikkert:Aktiver', player)
                end
            end
        end
        if type == "faxekondi" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.tryGetInventoryItem({user_id, "faxekondi", 1, true}) then
                  TriggerClientEvent("cn-animation:startWithItem", player, "faxekondi")
                end
            end
        end
        if type == "pengepose" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.tryGetInventoryItem({user_id, "pengepose", 1, true}) then
                    vRP.giveInventoryItem({user_id, "dirty_money", 50000, true})
                end
            end
        end
        if type == "kasse1" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.tryGetInventoryItem({user_id, "kasse1", 1, true}) then
                    vRP.giveInventoryItem({user_id, "skunk", 500, true})
                end
            end
        end
        if type == "kasse2" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.tryGetInventoryItem({user_id, "kasse2", 1, true}) then
                    vRP.giveInventoryItem({user_id, "kokain", 500, true})
                end
            end
        end
        if type == "kasse3" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.tryGetInventoryItem({user_id, "kasse3", 1, true}) then
                    vRP.giveInventoryItem({user_id, "lsd", 500, true})
                end
            end
        end
        if type == "kasse4" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.tryGetInventoryItem({user_id, "kasse4", 1, true}) then
                    vRP.giveInventoryItem({user_id, "amfetamin", 200, true})
                end
            end
        end
        if type == "kasse5" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.tryGetInventoryItem({user_id, "kasse5", 1, true}) then
                    vRP.giveInventoryItem({user_id, "wbody|WEAPON_PISTOL", 5, true})
                end
            end
        end
        if type == "kasse6" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.tryGetInventoryItem({user_id, "kasse6", 1, true}) then
                    vRP.giveInventoryItem({user_id, "wbody|WEAPON_PISTOL50", 5, true})
                end
            end
        end
        if type == "kasse7" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.tryGetInventoryItem({user_id, "kasse7", 1, true}) then
                    vRP.giveInventoryItem({user_id, "wammo|WEAPON_PISTOL", 500, true})
                end
            end
        end
        if type == "kasse8" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.tryGetInventoryItem({user_id, "kasse8", 1, true}) then
                    vRP.giveInventoryItem({user_id, "wammo|WEAPON_PISTOL50", 500, true})
                end
            end
        end
        if type == "kasse9" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.tryGetInventoryItem({user_id, "kasse9", 1, true}) then
                    vRP.giveInventoryItem({user_id, "wbody|WEAPON_HEAVYPISTOL", 5, true})
                end
            end
        end
        if type == "kasse10" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.tryGetInventoryItem({user_id, "kasse10", 1, true}) then
                    vRP.giveInventoryItem({user_id, "wammo|WEAPON_HEAVYPISTOL", 500, true})
                end
            end
        end
        if type == "kasse11" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.tryGetInventoryItem({user_id, "kasse11", 1, true}) then
                    vRP.giveInventoryItem({user_id, "wbody|WEAPON_SNSPISTOL", 5, true})
                end
            end
        end
        if type == "kasse12" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.tryGetInventoryItem({user_id, "kasse12", 1, true}) then
                    vRP.giveInventoryItem({user_id, "wammo|WEAPON_SNSPISTOL", 500, true})
                end
            end
        end
        if type == "box" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                if vRP.tryGetInventoryItem({user_id, "skunk",500, true}) and vRP.tryGetInventoryItem({user_id,"box",1}) then
                    vRP.giveInventoryItem({user_id, "kasse1", 1, true})
                elseif vRP.tryGetInventoryItem({user_id, "kokain",500, true}) and vRP.tryGetInventoryItem({user_id,"box",1}) then
                    vRP.giveInventoryItem({user_id, "kasse2", 1, true})
                elseif vRP.tryGetInventoryItem({user_id, "lsd",500, true}) and vRP.tryGetInventoryItem({user_id,"box",1}) then
                    vRP.giveInventoryItem({user_id, "kasse3", 1, true})
                elseif vRP.tryGetInventoryItem({user_id, "amfetamin",200, true})and vRP.tryGetInventoryItem({user_id,"box",1}) then
                    vRP.giveInventoryItem({user_id, "kasse4", 1, true})
                elseif vRP.tryGetInventoryItem({user_id, "wbody|WEAPON_PISTOL",5, true})and vRP.tryGetInventoryItem({user_id,"box",1}) then
                    vRP.giveInventoryItem({user_id, "kasse5", 1, true})
                elseif vRP.tryGetInventoryItem({user_id, "wbody|WEAPON_PISTOL50",5, true})and vRP.tryGetInventoryItem({user_id,"box",1}) then
                    vRP.giveInventoryItem({user_id, "kasse6", 1, true})
                elseif vRP.tryGetInventoryItem({user_id, "wammo|WEAPON_PISTOL",500, true})and vRP.tryGetInventoryItem({user_id,"box",1}) then
                    vRP.giveInventoryItem({user_id, "kasse7", 1, true})
                elseif vRP.tryGetInventoryItem({user_id, "wammo|WEAPON_PISTOL50",500, true})and vRP.tryGetInventoryItem({user_id,"box",1}) then
                    vRP.giveInventoryItem({user_id, "kasse8", 1, true})
                elseif vRP.tryGetInventoryItem({user_id, "wbody|WEAPON_HEAVYPISTOL",5, true})and vRP.tryGetInventoryItem({user_id,"box",1}) then
                    vRP.giveInventoryItem({user_id, "kasse9", 1, true})
                elseif vRP.tryGetInventoryItem({user_id, "wammo|WEAPON_HEAVYPISTOL",500, true})and vRP.tryGetInventoryItem({user_id,"box",1}) then
                    vRP.giveInventoryItem({user_id, "kasse10", 1, true})
                elseif vRP.tryGetInventoryItem({user_id, "wbody|WEAPON_SNSPISTOL",5, true})and vRP.tryGetInventoryItem({user_id,"box",1}) then
                    vRP.giveInventoryItem({user_id, "kasse11", 1, true})
                elseif vRP.tryGetInventoryItem({user_id, "wammo|WEAPON_SNSPISTOL",500, true})and vRP.tryGetInventoryItem({user_id,"box",1}) then
                    vRP.giveInventoryItem({user_id, "kasse12", 1, true})
                end
            end
        end
        if type == "money" then
            local user_id = vRP.getUserId({player})
            if user_id ~= nil then
                local amount = vRP.getInventoryItemAmount({user_id, idname})
                vRP.prompt({player, "Beløb du ønsker at udpakke ? (maks "..amount..")", "", function(player,ramount)
                    ramount = parseInt(ramount)
                    if vRP.tryGetInventoryItem({user_id, idname, ramount, true}) then -- unpack the money
                        vRP.giveMoney({user_id, ramount})
                    end
                end})
            end
        end

        if type == "repairkit" then
            local user_id = vRP.getUserId({player})
            local mechlvl = math.floor(vRP.expToLevel({vRP.getExp({user_id,"science","mechanic"})}))
            if mechlvl > 0 then
                vRPclient.getNearestVehicleHealth(player,{3},function(vehicle)
                    if vehicle.veh ~= 0 and vehicle.health < 200 then
                        if vRP.tryGetInventoryItem({user_id,"repairkit",1,true}) then
                            TriggerClientEvent("3dme:remoteDisplay",player,"Reparer køretøj",3,(180/mechlvl),180)
                            vRPclient.playAnim(player,{false,{task="WORLD_HUMAN_VEHICLE_MECHANIC"},false})
                            SetTimeout((180000/mechlvl), function()
                                vRPclient.stopAnim(player,{false})
                                vRPclient.lowfixNearestVehicle(player,{vehicle.veh})
                            end)
                        end
                    elseif vehicle.veh == 0 then
                        TriggerClientEvent("pNotify:SendNotification", player,{text = {"Kunne ikke finde noget køretøj"}, type = "error", queue = "global", timeout = 4000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
                    elseif vehicle.health >= 200 then
                        TriggerClientEvent("pNotify:SendNotification", player,{text = {"Køretøjet kan ikke repareres"}, type = "error", queue = "global", timeout = 4000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
                    end
                end)
            else
                TriggerClientEvent("pNotify:SendNotification", player,{text = {"Du skal have lært og lave køretøjer først!"}, type = "error", queue = "global", timeout = 4000, layout = "centerLeft",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
            end
        end
    --end
end

RegisterServerEvent("kasperr_inventory:giveItem")
AddEventHandler(
    "kasperr_inventory:giveItem",
    function(data)
        local user_id = vRP.getUserId({source})
        local player = vRP.getUserSource({user_id})
        if user_id ~= nil then
            vRPclient.getNearestPlayer(
                player,
                {10},
                function(nplayer)
                    if nplayer ~= nil then
                        local nuser_id = vRP.getUserId({nplayer})
                        if nuser_id ~= nil then
                            local amount = parseInt(data.amount)
                            local new_weight = vRP.getInventoryWeight({nuser_id}) + vRP.getItemWeight({data.idname}) * amount

                            if new_weight <= vRP.getInventoryMaxWeight({nuser_id}) then
                                if vRP.tryGetInventoryItem({user_id, data.idname, amount, false}) then
                                    vRP.giveInventoryItem({nuser_id, data.idname, amount, true})
                                    vRPclient.playAnim(player, {true, {{"mp_common", "givetake1_a", 1}}, false})
                                    vRPclient.playAnim(nplayer, {true, {{"mp_common", "givetake2_a", 1}}, false})
                                    local message = "ID: **"..user_id.." ".."**Giver**".." "..amount.." ".."**Stk**".." "..data.idname.." ".."**til**".." "..nuser_id.. "**"
                                    PerformHttpRequest('https://discordapp.com/api/webhooks/632217440637681664/0vJ_Z-P2PKg53HiC-rR-baKyN85or__VM9nPMHDHInUs5-KHqKnLUujy_EOhDz42YfPf', function(err, text, headers) end, 'POST', json.encode({username = "Server " .. GetConvar("servernumber","0") .." - Give item", content = message}), { ['Content-Type'] = 'application/json' })
                                else
                                    vRPclient.notify(player, {Config.Language.Error})
                                end
                            else
                                vRPclient.notify(player, {Config.Language.NotEnoughtSpace})
                            end
                        else
                            vRPclient.notify(player, {Config.Language.NoNearby})
                        end
                    else
                        vRPclient.notify(player, {Config.Language.NoNearby})
                    end
                end
            )
        end
    end
)

function play_eat(player)
    local seq = {
        {"mp_player_inteat@burger", "mp_player_int_eat_burger_enter",1},
        {"mp_player_inteat@burger", "mp_player_int_eat_burger",1},
        {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp",1},
        {"mp_player_inteat@burger", "mp_player_int_eat_exit_burger",1}
    }

    vRPclient.playAnim(player,{true,seq,false})
end

function play_drink(player)
    local seq = {
        {"mp_player_intdrink","intro_bottle",1},
        {"mp_player_intdrink","loop_bottle",1},
        {"mp_player_intdrink","outro_bottle",1}
    }

    vRPclient.playAnim(player,{true,seq,false})
end

local cloths =  {
    ["jakke"] = {
        status = false,
        comp = 11,
        offdict = "clothingshirt",
        offanim = "try_shirt_negative_a",
        ondict = "clothingshirt",
        onanim = "try_shirt_positive_a",
        start = 2500,
        stop = 2500,
        savevar = {comp=3,text="arms"}
    },

}
