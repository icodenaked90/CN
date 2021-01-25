-- Citizen.CreateThread(function()
--     local loaded = false
--     while true do
--         Citizen.Wait(0)
--         if IsNextWeatherType('XMAS') then
--             N_0xc54a08c85ae4d410(3.0)
--
--             SetForceVehicleTrails(true)
--             SetForcePedFootstepsTracks(true)
--
--             if not loaded then
--                 RequestScriptAudioBank("ICE_FOOTSTEPS", false)
--                 RequestScriptAudioBank("SNOW_FOOTSTEPS", false)
--                 RequestNamedPtfxAsset("core_snow")
--                 while not HasNamedPtfxAssetLoaded("core_snow") do
--                     Citizen.Wait(0)
--                 end
--                 UseParticleFxAssetNextCall("core_snow")
--                 loaded = true
--             end
--             RequestAnimDict('anim@mp_snowball')
--             if IsControlJustReleased(0, 104) and not IsPedInAnyVehicle(GetPlayerPed(-1), true) and not IsPlayerFreeAiming(PlayerId())
--             and not IsPedSwimming(PlayerPedId()) and not IsPedSwimmingUnderWater(PlayerPedId()) and not IsPedRagdoll(PlayerPedId()) and not IsPedFalling(PlayerPedId()) and not IsPedRunning(PlayerPedId()) and not IsPedSprinting(PlayerPedId()) and GetInteriorFromEntity(PlayerPedId()) == 0 and not IsPedShooting(PlayerPedId()) and not IsPedUsingAnyScenario(PlayerPedId()) and not IsPedInCover(PlayerPedId(), 0) then
--                 TaskPlayAnim(PlayerPedId(), 'anim@mp_snowball', 'pickup_snowball', 8.0, -1, -1, 0, 1, 0, 0, 0)
--                 Citizen.Wait(1950)
--                 GiveWeaponToPed(GetPlayerPed(-1), GetHashKey('WEAPON_SNOWBALL'), 1, false, true)
--             end
--         else
--             if loaded then N_0xc54a08c85ae4d410(0.0) end
--             loaded = false
--             RemoveNamedPtfxAsset("core_snow")
--             ReleaseNamedScriptAudioBank("ICE_FOOTSTEPS")
--             ReleaseNamedScriptAudioBank("SNOW_FOOTSTEPS")
--             SetForceVehicleTrails(false)
--             SetForcePedFootstepsTracks(false)
--         end
--         if GetSelectedPedWeapon(PlayerPedId()) == GetHashKey('WEAPON_SNOWBALL') then
--             SetPlayerWeaponDamageModifier(PlayerId(), 0.0)
--         end
--     end
-- end)

--Melee

Citizen.CreateThread(function()
    while true do
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
      Wait(0)
    end
  end)




	---back up

	-- Citizen.CreateThread(function()
      -- while true do
        -- N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SNIPERRIFLE"), 0.5)
        -- Wait(0)
      -- end
    -- end)

    -- Citizen.CreateThread(function()
      -- while true do
        -- N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SAWNOFFSHOTGUN"), 1.3)
        -- Wait(0)
      -- end
    -- end)

    -- Citizen.CreateThread(function()
      -- while true do
        -- N_0x4757f00bc6323cfe(GetHashKey("WEAPON_REVOLVER"), 0.4)
        -- Wait(0)
      -- end
    -- end)






	-- ["wbody|WEAPON_VINTAGEPISTOL"] = {"Fartmåler", "", nil, 0.01},
	-- ["wammo|WEAPON_VINTAGEPISTOL"] = {"Fartmåler ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_PISTOL"] = {"Håndpistol", "", nil, 0.01},
	-- ["wammo|WEAPON_PISTOL"] = {"Håndpistol ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_PISTOL_MK2"] = {"Håndpistol Mk2", "", nil, 0.01},
	-- ["wammo|WEAPON_PISTOL_MK2"] = {"Håndpistol Mk2 ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_SMG_MK2"] = {"SMG Mk2", "", nil, 0.01},
	-- ["wammo|WEAPON_SMG_MK2"] = {"SMG Mk2 ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_MARKSMANPISTOL"] = {"Marksmanpistol", "", nil, 0.01},
	-- ["wammo|WEAPON_MARKSMANPISTOL"] = {"Marksmanpistol ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_SNSPISTOL"] = {"SNS Pistol", "", nil, 0.01},
	-- ["wammo|WEAPON_SNSPISTOL"] = {"SNS Pistol ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_REVOLVER"] = {"Smith&Wesson", "", nil, 0.01},
	-- ["wammo|WEAPON_REVOLVER"] = {"Smith&Wesson ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_HEAVYPISTOL"] = {"Heavypistol", "", nil, 0.01},
	-- ["wammo|WEAPON_HEAVYPISTOL"] = {"Heavypistol ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_MACHINEPISTOL"] = {"Maskinpistol", "", nil, 0.01},
	-- ["wammo|WEAPON_MACHINEPISTOL"] = {"Maskinpistol ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_PISTOL50"] = {".50 Desert Eagle", "", nil, 0.01},
	-- ["wammo|WEAPON_PISTOL50"] = {".50 Desert Eagle ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_MOLOTOV"] = {"Molotov", "", nil, 0.01},
	-- ["wammo|WEAPON_MOLOTOV"] = {"Molotov brændstof", "", nil, 0.01},
	-- ["wbody|WEAPON_PUMPSHOTGUN"] = {"Pumpshotgun", "", nil, 0.01},
	-- ["wammo|WEAPON_PUMPSHOTGUN"] = {"Pumpshotgun shells", "", nil, 0.01},
	-- ["wbody|WEAPON_ASSAULTSHOTGUN"] = {"Kampshotgun", "", nil, 0.01},
	-- ["wammo|WEAPON_ASSAULTSHOTGUN"] = {"Kampshotgun shells", "", nil, 0.01},
	-- ["wbody|WEAPON_SAWNOFFSHOTGUN"] = {"Afskåret shotgun", "", nil, 0.01},
	-- ["wammo|WEAPON_SAWNOFFSHOTGUN"] = {"Afskåret shotgun shells", "", nil, 0.01},
	-- ["wbody|WEAPON_ASSAULTRIFLE"] = {"Kamprifle", "", nil, 0.01},
	-- ["wammo|WEAPON_ASSAULTRIFLE"] = {"Kamprifle ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_GRENADELAUNCHER"] = {"Karbinriffel", "", nil, 0.01},
	-- ["wammo|WEAPON_GRENADELAUNCHER"] = {"Karbinriffel ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_CARBINERIFLE"] = {"Karbinriffel", "", nil, 0.01},
	-- ["wammo|WEAPON_CARBINERIFLE"] = {"Karbinriffel ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_HEAVYSNIPER"] = {"Snigskytte riffel", "", nil, 0.01},
	-- ["wammo|WEAPON_HEAVYSNIPER"] = {"Snigskytte riffel ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_SNIPERRIFLE"] = {"Jagtriffel", "", nil, 0.01},
	-- ["wammo|WEAPON_SNIPERRIFLE"] = {"Jagtriffel ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_GUSENBERG"] = {"Tommygun", "", nil, 0.01},
	-- ["wammo|WEAPON_GUSENBERG"] = {"Tommygun drum-mag", "", nil, 0.01},
	-- ["wbody|WEAPON_STUNGUN"] = {"Strømpistol", "", nil, 0.01},
	-- ["wammo|WEAPON_STUNGUN"] = {"Strømpistol AMMO", "", nil, 0.01},
	-- ["wbody|WEAPON_COMBATPISTOL"] = {"Tjenestepistol", "", nil, 0.01},
	-- ["wammo|WEAPON_COMBATPISTOL"] = {"Tjenestepistol ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_COMBATPDW"] = {"Kamp PDW", "", nil, 0.01},
	-- ["wammo|WEAPON_COMBATPDW"] = {"Kamp PDW ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_CARBINERIFLE_MK2"] = {"Karbinriffel Mk2", "", nil, 0.01},
	-- ["wammo|WEAPON_CARBINERIFLE_MK2"] = {"Karbinriffel Mk2 ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_HEAVYSNIPER_MK2"] = {"Barrett M82 .50cal", "", nil, 0.01},
	-- ["wammo|WEAPON_HEAVYSNIPER_MK2"] = {"Barrett M82 .50cal ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_SMG"] = {"SMG", "", nil, 0.01},
	-- ["wammo|WEAPON_SMG"] = {"SMG ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_APPISTOL"] = {"AP Pistol", "", nil, 0.01},
	-- ["wammo|WEAPON_APPISTOL"] = {"AP ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_MINISMG"] = {"MiniSMG", "", nil, 0.01},
	-- ["wammo|WEAPON_MINISMG"] = {"MiniSMG ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_MICROSMG"] = {"MicroSMG", "", nil, 0.01},
	-- ["wammo|WEAPON_MICROSMG"] = {"MicroSMG ammo", "", nil, 0.01},
	-- ["wbody|WEAPON_BATTLEAXE"] = {"Kampøkse", "", nil, 0.01},
	-- ["wbody|WEAPON_BALL"] = {"Baseballbold", "", nil, 0.01},
	-- ["wbody|WEAPON_GOLFCLUB"] = {"Golfkølle", "", nil, 0.01},
	-- ["wbody|WEAPON_KNIFE"] = {"Kniv", "", nil, 0.01},
	-- ["wbody|WEAPON_BAT"] = {"Baseball bat", "", nil, 0.01},
	-- ["wbody|WEAPON_POOLCUE"] = {"Poolkø", "", nil, 0.01},
	-- ["wbody|WEAPON_MACHETE"] = {"Machete", "", nil, 0.01},
	-- ["wbody|WEAPON_CROWBAR"] = {"Brækjern", "", nil, 0.01},
	-- ["wbody|WEAPON_SWITCHBLADE"] = {"Springkniv", "", nil, 0.01},
	-- ["wbody|WEAPON_KNUCKLE"] = {"Knojern", "", nil, 0.01},
	-- ["wbody|WEAPON_WRENCH"] = {"Svensknøgle", "", nil, 0.01},
	-- ["wbody|WEAPON_HAMMER"] = {"Hammer", "", nil, 0.01},
	-- ["wbody|WEAPON_SNOWBALL"] = {"Snebold", "", nil, 0.01},
	-- ["wbody|WEAPON_DIGISCANNER"] = {"Radio", "", nil, 0.01},
