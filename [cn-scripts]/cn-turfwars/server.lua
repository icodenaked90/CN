-- Remember to use the cop group or this won't work
-- K > Admin > Add Group > User ID > cop

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_turf")

local turfs = {
    ["grovestreet"] = {
        position = { ['x'] = 105.72296142578, ['y'] = -1939.0783691406, ['z'] = 20.803712844849 },
        reward = 20000 + math.random(1000,4000),
        nameofturf = "grovestreet",
        lastrobbed = 0
    },
    ["families"] = {
        position = { ['x'] = -155.28141784668, ['y'] = -1656.2554931641, ['z'] = 32.789909362793 },
        reward = 17000 + math.random(1000,4000),
        nameofturf = "Families Turf",
        lastrobbed = 0
    },
    ["vagos"] = {
        position = { ['x'] = 320.38580322266, ['y'] = -2027.7858886719, ['z'] = 20.726119995117 },
        reward = 28000 + math.random(1000,4000),
        nameofturf = "Vagos Turf",
        lastrobbed = 0
    },
    ["armenian"] = {
        position = { ['x'] = -455.43521118164, ['y'] = -1704.2645263672, ['z'] = 18.84493637085 },
        reward = 9000 + math.random(1000,4000),
        nameofturf = "Armenian Turf",
        lastrobbed = 0
    },
    ["lostmc"] = {
        position = { ['x'] = 61.123699188232, ['y'] = 3713.6315917969, ['z'] = 39.754940032959 },
        reward = 18000 + math.random(1000,4000),
        nameofturf = "LostMC HQ",
        lastrobbed = 0
    },
    ["canibal"] = {
        position = { ['x'] = -1125.9798583984, ['y'] = 4927.5756835938, ['z'] = 219.11138916016 },
        reward = 16000 + math.random(1000,4000),
        nameofturf = "Altruist Camp",
        lastrobbed = 0
    },
    ["lostmc2"] = {
        position = { ['x'] = 966.73254394531, ['y'] = -125.13793945313, ['z'] = 74.353073120117 },
        reward = 29000 + math.random(1000,4000),
        nameofturf = "LostMC Turf",
        lastrobbed = 0
    },
    ["vagos2"] = {
        position = { ['x'] = 979.25018310547, ['y'] = -1823.1961669922, ['z'] = 31.181226730347 },
        reward = 27000 + math.random(1000,4000),
        nameofturf = "Vagos Warehouse",
        lastrobbed = 0
    },
    ["marabunta"] = {
        position = { ['x'] = 1255.1652832031, ['y'] = -1600.2349853516, ['z'] = 53.081687927246 },
        reward = 12000 + math.random(1000,4000),
        nameofturf = "Marabunta Turf",
        lastrobbed = 0
    },
    ["triads"] = {
        position = { ['x'] = -780.54119873047, ['y'] = -922.88250732422, ['z'] = 18.787780761719 },
        reward = 10000 + math.random(1000,4000),
        nameofturf = "Triads Turf",
        lastrobbed = 0
    }
}

local robbers = {}

function get3DDistance(x1, y1, z1, x2, y2, z2)
    return math.sqrt(math.pow(x1 - x2, 2) + math.pow(y1 - y2, 2) + math.pow(z1 - z2, 2))
end

RegisterServerEvent('es_turf:toofar')
AddEventHandler('es_turf:toofar', function(robb)
    if(robbers[source])then
        TriggerClientEvent('es_turf:toofarlocal', source)
        robbers[source] = nil
        TriggerClientEvent('chatMessage', source, 'INFO', {134, 244, 0}, "Turf Cap was cancelled at: ^2" .. turfs[robb].nameofturf)
    end
end)

RegisterServerEvent('es_turf:playerdied')
AddEventHandler('es_turf:playerdied', function(robb)
    if(robbers[source])then
        TriggerClientEvent('es_turf:playerdiedlocal', source)
        robbers[source] = nil
        TriggerClientEvent('chatMessage', source, 'INFO', {134, 244, 0}, "Turf Cap was cancelled at: ^2" .. turfs[robb].nameofturf)
    end
end)

RegisterServerEvent('es_turf:rob')
AddEventHandler('es_turf:rob', function(robb)
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    local cops = vRP.getUsersByGroup({"Politi-Job"}) -- remember to use the cop group or this won't work - K > Admin > Add Group > User ID > cop
    if vRP.hasGroup({user_id,"Politi-Job"}) then
        vRPclient.notify(player,{"~r~Cops can't cap turfs."})
    else
        if #cops >= 0 then -- change 2 to the minimum amount online necessary
            if turfs[robb] then
                local turf = turfs[robb]

                if (os.time() - turf.lastrobbed) < 600 and turf.lastrobbed ~= 0 then
                    TriggerClientEvent('chatMessage', player, 'TURF WARS', {255, 0, 0}, "This turf has already been capped recently. Please wait another: ^2" .. (1800 - (os.time() - turf.lastrobbed)) .. "^0 seconds.")
                    return
                end
                TriggerClientEvent('chatMessage', player, 'INFO', {134, 244, 0}, "Turf Cap in progress at ^2" .. turf.nameofturf)
                TriggerClientEvent('chatMessage', player, 'SYSTEM', {174, 0, 255}, "You started a turf cap at: ^2" .. turf.nameofturf .. "^0, do not get too far away from this point!")
                TriggerClientEvent('chatMessage', player, 'SYSTEM', {174, 0, 255}, "Defend the area for ^1 45 ^0minutes and the turf is yours!")
                TriggerClientEvent('es_turf:currentlyrobbing', player, robb)
                turfs[robb].lastrobbed = os.time()
                robbers[player] = robb
                local savedSource = player
                SetTimeout(10000, function()
                    if(robbers[savedSource])then
                        if(user_id)then
                            --vRP.prompt({source,"Bandens navn","",function(name)
                            if vRP.hasGroup({user_id,"Ballas"}) then
                                local name = turf.nameofturf
                                MySQL.Async.execute("UPDATE turf SET color = (50) WHERE name = @name", {name = name})
                            end
                            TriggerClientEvent('chatMessage', player, 'INFO', {134, 244, 0}, "Turf Cap is over at: ^2" .. turf.nameofturf .. "^0!")
                            TriggerClientEvent('es_turf:robberycomplete', savedSource, turf.nameofturf)
                            TriggerClientEvent('es_turf:status',savedSource)
                        end
                    end
                end)
            end
        else
            vRPclient.notify(player,{"~r~Not enough cops online."})
        end
    end
end)

RegisterServerEvent('es_turf:color')
AddEventHandler('es_turf:color', function(turf)
        MySQL.Async.fetchAll("SELECT color FROM turf WHERE name = @name", {name = turf}, function(rows, affected)
            if #rows > 0 then
                for k,v in pairs(rows) do
                    print(v.color)

                    TriggerClientEvent('es_turf:dbcolor', -1, v.color, turf)
                end
            end
        end)
end)

