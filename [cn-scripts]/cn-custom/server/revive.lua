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

RegisterServerEvent("fuckingmetagamer")
AddEventHandler("fuckingmetagamer", function(timer, type)
  if timer == 0 then
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    vRP.getUserIdentity({user_id, function(identity)
    TriggerClientEvent('proximityMessage', -1, player, "", {255, 153, 0}, 20, "["..type.."]["..user_id.."]** Du føler, at du blev kigget på **")
    end})
  end
end)

RegisterCommand('revive', function(source)
  local user_id = vRP.getUserId({source})
  local player = vRP.getUserSource({user_id})
  if vRP.hasPermission({user_id,"admin.revive"}) then
      vRPclient.setHealth(player, {200})
      vRP.setHunger({user_id,0})
      vRP.setThirst({user_id,0})

      PerformHttpRequest('https://discordapp.com/api/webhooks/686990773341651066/9iTEtGqp_8VvUCZc_ME_EPrRW_1_yxTcRiHS7Wdmlbv4O2bAkRmtVLPFwxgwzn1KVxhz', function(err, text, headers) end, 'POST', json.encode({username = "slash revive", content = "```\nID: "..user_id.." \n brugte revive".."(**"..os.date("%H:%M:%S %d/%m/%Y") .. "```"}), { ['Content-Type'] = 'application/json' })

  end
end)


RegisterServerEvent("gcphonePicture")
AddEventHandler("gcphonePicture", function(data)
  PerformHttpRequest('https://discordapp.com/api/webhooks/686990773341651066/9iTEtGqp_8VvUCZc_ME_EPrRW_1_yxTcRiHS7Wdmlbv4O2bAkRmtVLPFwxgwzn1KVxhz', function(err, text, headers) end, 'POST', json.encode({username = "slash sadsa", content = data}), { ['Content-Type'] = 'application/json' })
end)


local player_zero = GetHashKey('player_zero')

RegisterCommand('player_zero', function(player, args, raw)
  -- Check if the command was executed by a player
  if player ~= 0 then
    -- First we tell the player if they are player_zero or not
    local ped = GetPlayerPed(player)
    local exist = DoesEntityExist(ped)
    local model = 0
    if exist then
      model = GetEntityModel(ped)
    end

    if model == 0 or model == player_zero then
      TriggerClientEvent('chatMessage', player, 'Du er desværre ^1usynlig^7 for andre spillere, du bliver nød til at genstarte dit spil for at fixe det. ☹️')
    else
      TriggerClientEvent('chatMessage', player, 'Wuhu - Du er ^2ikke usynlig^7 for andre spillere 🐌')
    end

    -- Check if we should show others players too
  end

  local foundAny = false
  local players = GetNumPlayerIndices()
  for i = 0, players - 1, 1 do
    local source = GetPlayerFromIndex(i)
    local ped = GetPlayerPed(tostring(source))

    local exist = DoesEntityExist(ped)
    local model = 0
    if exist then
      model = GetEntityModel(ped)
    end

    if model == 0 or model == player_zero then
      local user_id = vRP.getUserId({source})
      local playername = GetPlayerName(source)
      local tmpdata = vRP.getUserTmpTable({user_id})

      -- Don't let this player show up if they have not spawned yet
      if not tmpdata or (tmpdata.spawns and tmpdata.spawns >= 1) then
        -- Tell the executer of the command
        TriggerClientEvent('chatMessage', player, "^1ID: "..user_id.."^7 er usynlig for andre spillere (player_zero bug)", user_id, playername)

        -- We found aleast one result, so we change the boolean
        foundAny = true
      end
    end
  end

  -- If no player_zero player was found tell the command executer that good news (Yeah)
  if not foundAny then
    TriggerClientEvent('chatMessage', player, "^2Ingen player_zero^7 spiller fundet, jubi 🥳")
  end
end)
