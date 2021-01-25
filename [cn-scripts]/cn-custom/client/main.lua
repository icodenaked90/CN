--
-- Created by IntelliJ IDEA.
-- User: Sling
-- Date: 12-04-2019
-- Time: 13:03
-- Made for CiviliansNetwork
--

Citizen.CreateThread(function()
    Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), 'FE_THDR_GTAO', 'Civilians~b~Network')
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_FLASHLIGT"), 0.4)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_NIGHTSTICK"), 0.4)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_BAT"), 0.4)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_CROWBAR"), 0.4)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_KNUCKLE"), 0.4)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_WRENCH"), 0.4)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SWITCHBLADE"), 0.4)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_BATTLEAXE"), 0.4)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_GOLFCLUB"), 0.4)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_HAMMER"), 0.4)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_MACHETE"), 0.4)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), 0.4)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_FLASHLIGHT"), 0.2)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_KNIFE"), 0.4)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_PISTOL"), 1.2)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SNSPISTOL"), 1.2)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_HEAVYPISTOL"), 1.2)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_PISTOL50"), 1.2)
    N_0x4757f00bc6323cfe(GetHashKey("COMBATPISTOL"), 1.2)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_PISTOL_MK2"), 1.2)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_MACHINEPISTOL"), 1.2)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_APPISTOL"), 1.2)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SMG_MK2"), 1.2)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_MINISMG"), 1.2)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SMG"), 1.2)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_MICROSMG"), 1.2)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_PUMPSHOTGUN"), 1.2)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_CARBINERIFLE"), 1.2)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_GUSENBERG"), 1.2)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_VINTAGEPISTOL"), 1.2)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SNIPERRIFLE"), 1.2)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SAWNOFFSHOTGUN"), 1.2)
    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_REVOLVER"), 1.2)
    StartAudioScene("CHARACTER_CHANGE_IN_SKY_SCENE")
    SetEntityMaxHealth(GetPlayerPed(-1), 200)
    if IsBigmapActive() then
      SetBigmapActive(false,false)
    end
    if IsPedModel(GetPlayerPed(-1),1126154828) then
      DisableControlAction(1, 37, true)
    end

    local dict = "missminuteman_1ig_2"

  	RequestAnimDict(dict)
  	while not HasAnimDictLoaded(dict) do
  		Citizen.Wait(100)
  	end
  	local handsup = false
  	while true do
  		Citizen.Wait(0)
  		if IsControlJustPressed(1, 323) then --Start holding X
  			if handsup then
  				handsup = false
  				ClearPedTasks(GetPlayerPed(-1))
  			else
  				lPed = GetPlayerPed(-1)
  				if not IsPedInAnyVehicle(lPed, false) and not IsPedSwimming(lPed) and not IsPedShooting(lPed) and not IsPedClimbing(lPed) and not IsPedCuffed(lPed) and not IsPedDiving(lPed) and not IsPedFalling(lPed) and not IsPedJumping(lPed) and not IsPedJumpingOutOfVehicle(lPed) and IsPedOnFoot(lPed) and not IsPedRunning(lPed) and not IsPedUsingAnyScenario(lPed) and not IsPedInParachuteFreeFall(lPed) then
  					if not handsup then
  						TaskPlayAnim(GetPlayerPed(-1), dict, "handsup_enter", 8.0, 8.0, -1, 50, 0, false, false, false)
  						handsup = true
  					end
  				end
  			end
  		end
  	end

    if GetPlayerWantedLevel(PlayerId()) ~= 0 then
        SetPlayerWantedLevel(PlayerId(), 0, false)
        SetPlayerWantedLevelNow(PlayerId(), false)
    end

    RemoveAllPickupsOfType(0xDF711959) -- carbine rifle
    RemoveAllPickupsOfType(0xF9AFB48F) -- pistol
    RemoveAllPickupsOfType(0xA9355DCD) -- pumpshotgun

    for vehicle in EnumerateVehicles() do
        if vehicle ~= 0 then
            local plate = GetVehicleNumberPlateText(vehicle)
            if plate ~= nil then
                if string.sub(plate, 0, 2) ~= "P " and plate ~= "CIVILIAN" then
                    Citizen.Wait(20)
                    SetVehicleNumberPlateText(vehicle,"P "..randomPlate("DLDLDL"))
                end
            end
        end
    end

    if IsEntityPlayingAnim(GetPlayerPed(PlayerId()), "random@arrests@busted", "idle_a", 3) then
      DisableControlAction(1, 140, true)
      DisableControlAction(1, 141, true)
      DisableControlAction(1, 142, true)
      DisableControlAction(0,21,true)
    end


    Wait(0)
end)

Citizen.CreateThread(function()
	while true do
		InvalidateIdleCam()
		N_0x9e4cfff989258472() --Disable the vehicle idle camera
		Wait(1000) --The idle camera activates after 30 second so we don't need to call this per frame
	end
end)

RegisterCommand("k", function(source, args, raw) --change command here
    local player = GetPlayerPed( -1 )
    if ( DoesEntityExist( player ) and not IsEntityDead( player )) then
        loadAnimDict( "random@arrests" )
        loadAnimDict( "random@arrests@busted" )
        if ( IsEntityPlayingAnim( player, "random@arrests@busted", "idle_a", 3 ) ) then
            TaskPlayAnim( player, "random@arrests@busted", "exit", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
            Wait (3000)
            TaskPlayAnim( player, "random@arrests", "kneeling_arrest_get_up", 8.0, 1.0, -1, 128, 0, 0, 0, 0 )
        else
            TaskPlayAnim( player, "random@arrests", "idle_2_hands_up", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
            Wait (4000)
            TaskPlayAnim( player, "random@arrests", "kneeling_arrest_idle", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
            Wait (500)
            TaskPlayAnim( player, "random@arrests@busted", "enter", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
            Wait (1000)
            TaskPlayAnim( player, "random@arrests@busted", "idle_a", 8.0, 1.0, -1, 9, 0, 0, 0, 0 )
        end
    end
end, false)

function randomPlate(format) -- (ex: DDDLLL, D => digit, L => letter)
    local abyte = string.byte("A")
    local zbyte = string.byte("0")

    local number = ""
    for i=1,#format do
        local char = string.sub(format, i,i)
        if char == "D" then number = number..string.char(zbyte+math.random(0,9))
        elseif char == "L" then number = number..string.char(abyte+math.random(0,25))
        else number = number..char end
    end

    return number
end

function loadAnimDict( dict )
    while ( not HasAnimDictLoaded( dict ) ) do
        RequestAnimDict( dict )
        Citizen.Wait( 5 )
    end
end

AddEventHandler("playerSpawned", function()
	local ped = GetPlayerPed(-1)
	if GetPedMaxHealth(ped) ~= 200 and not IsEntityDead(ped) then
		SetPedMaxHealth(ped, 200)
		SetEntityHealth(ped, GetEntityHealth(ped) + 25)
	end
end)


RegisterCommand("clear", function()
  TriggerEvent("chat:clear", source)
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if GetPlayerWantedLevel(PlayerId()) ~= 0 then
            SetPlayerWantedLevel(PlayerId(), 0, false)
            SetPlayerWantedLevelNow(PlayerId(), false)
        end
    end
end)

RegisterNetEvent('proximityMessage')
AddEventHandler('proximityMessage', function(author, name, color, distance, message)
	x, y, z = table.unpack(GetEntityCoords(PlayerPedId(),false))

	a, b, c = table.unpack(GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(author)),false))

    if GetDistanceBetweenCoords(x,y,z,a,b,c,true) < distance then
        TriggerEvent('chatMessage', name, color, message)
    end
end)
