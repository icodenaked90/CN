--
-- Created by IntelliJ IDEA.
-- User: Sling
-- Date: 02-02-2019
-- Time: 19:17
-- Made for CiviliansNetwork
--
local LockHotkey = {0,38}
local BombHotkey = {0,246}
local doors = {}



-- Citizen.CreateThread(function()
--   while true do
--     users = vRPsb.getAmountOnline({"all"})
--     for k,v in pairs(users) do
--
--       TriggerEvent(source, doors)
--     end
--
--   end
-- end)

RegisterNetEvent('vrp_doors:load')
AddEventHandler('vrp_doors:load', function(list)
    doors = list
end)

RegisterNetEvent('vrp_doors:statusSend')
AddEventHandler('vrp_doors:statusSend', function(id,status)
    doors[id].locked = status
    if not status == true then
        if doors[id].heading then
            local heading = doors[id].heading
            local hash = doors[id].hash
            local coords = doors[id].coords
            setHeading(id, heading, hash, coords)
        end
    else
        if doors[id].heading2 then
            local heading2 = doors[id].heading2
            local hash = doors[id].hash
            local coords = doors[id].coords
            setHeading(id, heading2, hash, coords)
        end
    end
end)

function setHeading(id, heading, hash, coords)
  local doorEntity = GetClosestObjectOfType(coords[1],coords[2],coords[3], 5.0, hash, false)
  SetEntityRotation(doorEntity, 0, 0, heading, 2, 1)
end

-- RegisterCommand("break", function()
--     TriggerEvent("vrp_doors:getNearestDoor", nearestDoor)
-- end)



function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())

    SetTextScale(0.32, 0.32)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 80)
end

local nearestDoor

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local coords = GetEntityCoords(PlayerPedId(),true)
        for k,v in pairs(doors) do
            local lradius = (v.range ~= nil and v.range or 2.0)
            if GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v.coords[1], v.coords[2], v.coords[3], true) <= lradius then
                local closeDoor = GetClosestObjectOfType(v.coords[1], v.coords[2], v.coords[3], lradius + 20, v.hash, false, false, false)
                if closeDoor ~= 0 then
                  nearestDoor = k
                    if v.locked then
                        -- DrawText3Ds(v.coords[1], v.coords[2], v.coords[3], "Tryk ~g~E~w~ for at låse op" .. k)
                        DrawText3Ds(v.coords[1], v.coords[2], v.coords[3], "Tryk ~g~E~w~ for at låse op")
                        if not v.boomAble then
                          --DrawText3Ds(v.coords[1], v.coords[2], v.coords[3]-0.2, "Tryk ~y~Y~w~ for at sprænge døren op" .. k)
                        end
                        local locked, heading = GetStateOfClosestDoorOfType(v.hash, v.coords[1], v.coords[2], v.coords[3], v.locked, 0)
                        if heading > -0.01 and heading < 0.01 then
                            FreezeEntityPosition(closeDoor, v.locked)
                        end
                    else
                        DrawText3Ds(v.coords[1], v.coords[2], v.coords[3], "Tryk ~r~E~w~ for at låse")
                        FreezeEntityPosition(closeDoor, v.locked)
                        if v.freeze == true then
                            FreezeEntityPosition(closeDoor, true)
                        end
                    end
                    if IsControlJustReleased(table.unpack(LockHotkey)) then
                        toggleClosestDoor()
                      --  BoomEffect(v.coords)
                    end
                    if IsControlJustReleased(table.unpack(BombHotkey)) and v.locked and not v.boomAble then
                        bombClosestDoor(closeDoor)
                    end
                end
            end
        end
    end
end)



function toggleClosestDoor()
    local x,y,z = table.unpack(GetEntityCoords(PlayerPedId(), true))
    for k,v in pairs(doors) do
        if v.close ~= nil then
            local door1 = GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), v.coords[1], v.coords[2], v.coords[3], true )
            local lradius = (v.range ~= nil and v.range or 2.0)
            if door1 < lradius then
                if door1 < GetDistanceBetweenCoords(x,y,z,doors[v.close].coords[1], doors[v.close].coords[2], doors[v.close].coords[3],true) then
                    TriggerServerEvent("vrp_doors:status", k, not v.locked)
                else
                    TriggerServerEvent("vrp_doors:status", v.close, not doors[v.close].locked)
                end
                break
            end
        else
            local lradius = (v.range ~= nil and v.range or 2.0)
            if GetDistanceBetweenCoords(x,y,z,v.coords[1], v.coords[2], v.coords[3],true) <= lradius then
                TriggerServerEvent("vrp_doors:status", k, not v.locked)
            end
        end
    end
end

function bombClosestDoor(closeDoor)
    local x,y,z = table.unpack(GetEntityCoords(PlayerPedId(), true))
    for k,v in pairs(doors) do
        if v.close ~= nil then
            local door1 = GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), v.coords[1], v.coords[2], v.coords[3], true )
            local lradius = (v.range ~= nil and v.range or 2.0)
            if door1 < lradius then
              -- TriggerServerEvent("vrp_doors:status", v.close, not doors[v.close].locked)
              -- print("Booooom1")
              -- TriggerServerEvent("cn-emotes:effects",coords,"core","exp_grd_plane_sp",{default={0.0, 0.0, -0.1, -90.0, 0.0, 20.0,11816},female={0.0, 0.0, -0.55, 0.0, 0.0, 20.0,11816}},"entity",5000)
            end
        else
            local lradius = (v.range ~= nil and v.range or 2.0)
            if GetDistanceBetweenCoords(x,y,z,v.coords[1], v.coords[2], v.coords[3],true) <= lradius then

                TriggerServerEvent("vrp_breakin:checkC4", k, v.coords, closeDoor)
            end
        end
    end
end

local doorsLoaded = false

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1)
    if not doorsLoaded then
      TriggerServerEvent("qwheqwihqeoiq")
      doorsLoaded = true
    end
  end
end)

local blockeddoors = {
    --Michael house
    {hash = -1686014385, coords = {-816.29418945313,178.31407165527,72.222496032715}},
    {hash = 159994461, coords = {-816.29418945313,178.31407165527,72.222496032715}},
    {hash = -607040053, coords = {-1150.2520751953,-1521.5427246094,10.632718086243}},
    {hash = -1278729253, coords = {119.36336517334,563.58813476563,183.96928405762}},
    {hash = -1516927114, coords = {345.88305664063,440.28274536133,148.0906829834}},
    --Hudilihud
    {hash = 736699661, coords = {1397.1640625,1164.0338134766,114.33365631104}},
}

Citizen.CreateThread( function()
    while true do
        Citizen.Wait(2000)
        for k,v in pairs(blockeddoors) do
            if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), v.coords[1],v.coords[2],v.coords[3], true) < 5 then
                local closeDoor = GetClosestObjectOfType(v.coords[1],v.coords[2],v.coords[3], 1.0, v.hash, false, false, false)
                FreezeEntityPosition(closeDoor, true)
            end
        end
    end
end)


-- local function CreateNamedRenderTargetForModel(name, model)
-- 	local handle = 0
--
-- 	if not IsNamedRendertargetRegistered(name) then
-- 		RegisterNamedRendertarget(name, 0) -- TODO wuts bool?
-- 	end
--
-- 	if not IsNamedRendertargetLinked(model) then
-- 		LinkNamedRendertarget(model)
-- 	end
--
-- 	if IsNamedRendertargetRegistered(name) then
-- 		handle = GetNamedRendertargetRenderId(name)
-- 	end
--
-- 	return handle
-- end
--
--
-- local function LoadScaleForm(scaleform)
-- 	local scaleform = RequestScaleformMovie(scaleform)
-- 	if scaleform ~= 0 then
-- 		while not HasScaleformMovieLoaded(scaleform) do
-- 			Citizen.Wait(0)
-- 		end
-- 	end
-- 	return scaleform
-- end
--
--
-- function CreateObj (model, coords, cb, ...)
-- 	local entity = nil
-- 	RequestModel(model)
-- 	while not HasModelLoaded(model) do Citizen.Wait(0) end
-- 	SetModelAsNoLongerNeeded(model)
-- 	entity = CreateObject(model, coords.x, coords.y, coords.z, true, true, true)
-- 	if cb ~= nil then cb(entity, ...) end
-- 	return entity
-- end
--
--
-- local BLIMP = {}
--
-- BLIMP.model = 1575467428
--
-- BLIMP.scaleform_name = "blimp_text"
-- BLIMP.scaleform = nil
--
-- BLIMP.rendertarget_name = "blimp_text"
-- BLIMP.rendertarget = nil
--
-- function BLIMP.SetScrollSpeed(scrollSpeed)
-- 	PushScaleformMovieFunction(BLIMP.scaleform, "SET_SCROLL_SPEED")
-- 	PushScaleformMovieFunctionParameterFloat(scrollSpeed + 0.0)
-- 	PopScaleformMovieFunctionVoid()
-- end
--
-- function BLIMP.SetColour (colour)
-- 	PushScaleformMovieFunction(BLIMP.scaleform, "SET_COLOUR")
-- 	PushScaleformMovieFunctionParameterInt(colour)
-- 	PopScaleformMovieFunctionVoid()
-- end; BLIMP.SetColor = BLIMP.SetColour
--
-- function BLIMP.SetMessage(message)
-- 	PushScaleformMovieFunction(BLIMP.scaleform, "SET_MESSAGE")
-- 	PushScaleformMovieFunctionParameterString(message)
-- 	PopScaleformMovieFunctionVoid()
-- end
--
-- function BLIMP.RenderMessage ()
-- 	SetTextRenderId(BLIMP.rendertarget)
-- 		Set_2dLayer(4)
-- 		Citizen.InvokeNative(0xC6372ECD45D73BCD, 1)
-- 		Citizen.InvokeNative(0x40332D115A898AF5, BLIMP.scaleform, 1)
-- 		DrawScaleformMovie(BLIMP.scaleform, 0.0, -0.08, 1.0, 1.7, 255, 255, 255, 255, 0)
-- 	SetTextRenderId(GetDefaultScriptRendertargetRenderId())
-- end
--
-- Citizen.CreateThread(function ()
-- 	-- Create blimp by player
-- 	local ob = CreateObj(BLIMP.model, GetEntityCoords(GetPlayerPed(-1)))
--
-- 	BLIMP.scaleform = LoadScaleForm(BLIMP.scaleform_name)
-- 	BLIMP.rendertarget = CreateNamedRenderTargetForModel(BLIMP.rendertarget_name, BLIMP.model)
-- 	BLIMP.SetMessage("Skud ud til PlankeCK")
-- 	BLIMP.SetColor(1)
-- 	BLIMP.SetScrollSpeed(1.0)
--
-- 	print('BLIMP scaleform handle:' .. BLIMP.scaleform)
-- 	print('BLIMP rendertarget handle:' .. BLIMP.rendertarget)
--
-- 	while true do
-- 		BLIMP.RenderMessage()
-- 		Citizen.Wait(0)
-- 	end
-- end)



local RouletteWords = {
    "NOMONEYS",
    "EZMONEYS",
    "RICHPEEP"
}

cachedScaleform = nil

function ScaleformLabel(label)
    BeginTextCommandScaleformString(label)
    EndTextCommandScaleformString()
end

local lives = 2
local ClickReturn
local SorF = false
local Hacking = false
local UsingComputer = false

StartComputer = function()
    Citizen.CreateThread(function()
        InitializeBruteForce = function(scaleform)
            local scaleform = RequestScaleformMovieInteractive(scaleform)
            while not HasScaleformMovieLoaded(scaleform) do
                Citizen.Wait(0)
            end

            local CAT = 'hack'
            local CurrentSlot = 0
            while HasAdditionalTextLoaded(CurrentSlot) and not HasThisAdditionalTextLoaded(CAT, CurrentSlot) do
                Citizen.Wait(0)
                CurrentSlot = CurrentSlot + 1
            end

            if not HasThisAdditionalTextLoaded(CAT, CurrentSlot) then
                ClearAdditionalText(CurrentSlot, true)
                RequestAdditionalText(CAT, CurrentSlot)
                while not HasThisAdditionalTextLoaded(CAT, CurrentSlot) do
                    Citizen.Wait(0)
                end
            end

            PushScaleformMovieFunction(scaleform, "SET_LABELS")
            ScaleformLabel("H_ICON_1")
            ScaleformLabel("H_ICON_2")
            ScaleformLabel("H_ICON_3")
            ScaleformLabel("H_ICON_4")
            ScaleformLabel("H_ICON_5")
            ScaleformLabel("H_ICON_6")
            PopScaleformMovieFunctionVoid()

            PushScaleformMovieFunction(scaleform, "SET_BACKGROUND")
            PushScaleformMovieFunctionParameterInt(1)
            PopScaleformMovieFunctionVoid()

            PushScaleformMovieFunction(scaleform, "ADD_PROGRAM")
            PushScaleformMovieFunctionParameterFloat(1.0)
            PushScaleformMovieFunctionParameterFloat(4.0)
            PushScaleformMovieFunctionParameterString("My Computer")
            PopScaleformMovieFunctionVoid()

            PushScaleformMovieFunction(scaleform, "ADD_PROGRAM")
            PushScaleformMovieFunctionParameterFloat(6.0)
            PushScaleformMovieFunctionParameterFloat(6.0)
            PushScaleformMovieFunctionParameterString("Power Off")
            PopScaleformMovieFunctionVoid()

            PushScaleformMovieFunction(scaleform, "SET_LIVES")
            PushScaleformMovieFunctionParameterInt(lives)
            PushScaleformMovieFunctionParameterInt(5)
            PopScaleformMovieFunctionVoid()

            PushScaleformMovieFunction(scaleform, "SET_LIVES")
            PushScaleformMovieFunctionParameterInt(lives)
            PushScaleformMovieFunctionParameterInt(5)
            PopScaleformMovieFunctionVoid()

            PushScaleformMovieFunction(scaleform, "SET_COLUMN_SPEED")
            PushScaleformMovieFunctionParameterInt(0)
            PushScaleformMovieFunctionParameterInt(math.random(220,240))
            PopScaleformMovieFunctionVoid()

            PushScaleformMovieFunction(scaleform, "SET_COLUMN_SPEED")
            PushScaleformMovieFunctionParameterInt(1)
            PushScaleformMovieFunctionParameterInt(math.random(220,240))
            PopScaleformMovieFunctionVoid()

            PushScaleformMovieFunction(scaleform, "SET_COLUMN_SPEED")
            PushScaleformMovieFunctionParameterInt(2)
            PushScaleformMovieFunctionParameterInt(math.random(220,240))
            PopScaleformMovieFunctionVoid()

            PushScaleformMovieFunction(scaleform, "SET_COLUMN_SPEED")
            PushScaleformMovieFunctionParameterInt(3)
            PushScaleformMovieFunctionParameterInt(math.random(220,240))
            PopScaleformMovieFunctionVoid()

            PushScaleformMovieFunction(scaleform, "SET_COLUMN_SPEED")
            PushScaleformMovieFunctionParameterInt(4)
            PushScaleformMovieFunctionParameterInt(math.random(220,240))
            PopScaleformMovieFunctionVoid()

            PushScaleformMovieFunction(scaleform, "SET_COLUMN_SPEED")
            PushScaleformMovieFunctionParameterInt(5)
            PushScaleformMovieFunctionParameterInt(math.random(220,240))
            PopScaleformMovieFunctionVoid()

            PushScaleformMovieFunction(scaleform, "SET_COLUMN_SPEED")
            PushScaleformMovieFunctionParameterInt(6)
            PushScaleformMovieFunctionParameterInt(math.random(220,240))
            PopScaleformMovieFunctionVoid()

            PushScaleformMovieFunction(scaleform, "SET_COLUMN_SPEED")
            PushScaleformMovieFunctionParameterInt(7)
            PushScaleformMovieFunctionParameterInt(math.random(220,240))
            PopScaleformMovieFunctionVoid()

            return scaleform
        end

        cachedScaleform = InitializeBruteForce("HACKING_PC")

        UsingComputer = true

        while UsingComputer do
            Citizen.Wait(0)

            DisableControlAction(0, 1, true) -- Disable pan
            DisableControlAction(0, 2, true) -- Disable tilt
            DisableControlAction(0, 24, true) -- Attack
            DisableControlAction(0, 257, true) -- Attack 2
            DisableControlAction(0, 25, true) -- Aim
            DisableControlAction(0, 263, true) -- Melee Attack 1
            DisableControlAction(0, 31, true) -- S (fault in Keys table!)
            DisableControlAction(0, 30, true) -- D (fault in Keys table!)
            DisableControlAction(0, 59, true) -- Disable steering in vehicle
            DisableControlAction(0, 71, true) -- Disable driving forward in vehicle
            DisableControlAction(0, 72, true) -- Disable reversing in vehicle
            DisableControlAction(0, 47, true)  -- Disable weapon
            DisableControlAction(0, 264, true) -- Disable melee
            DisableControlAction(0, 257, true) -- Disable melee
            DisableControlAction(0, 140, true) -- Disable melee
            DisableControlAction(0, 141, true) -- Disable melee
            DisableControlAction(0, 142, true) -- Disable melee
            DisableControlAction(0, 143, true) -- Disable melee
            DisableControlAction(0, 75, true)  -- Disable exit vehicle
            DisableControlAction(27, 75, true) -- Disable exit vehicle

            if UsingComputer then
                DrawScaleformMovieFullscreen(cachedScaleform, 255, 255, 255, 255, 0)
                PushScaleformMovieFunction(cachedScaleform, "SET_CURSOR")
                PushScaleformMovieFunctionParameterFloat(GetControlNormal(0, 239))
                PushScaleformMovieFunctionParameterFloat(GetControlNormal(0, 240))
                PopScaleformMovieFunctionVoid()
                if IsDisabledControlJustPressed(0,24) and not SorF then
                    PushScaleformMovieFunction(cachedScaleform, "SET_INPUT_EVENT_SELECT")
                    ClickReturn = PopScaleformMovieFunction()
                    PlaySoundFrontend(-1, "HACKING_CLICK", "", true)
                elseif IsDisabledControlJustPressed(0, 25) and not Hacking and not SorF then
                    PushScaleformMovieFunction(cachedScaleform, "SET_INPUT_EVENT_BACK")
                    PopScaleformMovieFunctionVoid()
                    PlaySoundFrontend(-1, "HACKING_CLICK", "", true)
                end
            end
        end
    end)
end

Citizen.CreateThread(function()
    while true do
        local sleepThread = 500

        if HasScaleformMovieLoaded(cachedScaleform) and UsingComputer then
            sleepThread = 5

            DisableControlAction(0, 24, true)
            DisableControlAction(0, 25, true)
            if GetScaleformMovieFunctionReturnBool(ClickReturn) then
                ProgramID = GetScaleformMovieFunctionReturnInt(ClickReturn)

                if ProgramID == 83 and not Hacking then
                    lives = 2

                    PushScaleformMovieFunction(cachedScaleform, "SET_LIVES")
                    PushScaleformMovieFunctionParameterInt(lives)
                    PushScaleformMovieFunctionParameterInt(5)
                    PopScaleformMovieFunctionVoid()

                    PushScaleformMovieFunction(cachedScaleform, "OPEN_APP")
                    PushScaleformMovieFunctionParameterFloat(1.0)
                    PopScaleformMovieFunctionVoid()

                    PushScaleformMovieFunction(cachedScaleform, "SET_ROULETTE_WORD")
                    PushScaleformMovieFunctionParameterString(RouletteWords[math.random(#RouletteWords)])
                    PopScaleformMovieFunctionVoid()

                    Hacking = true
                elseif Hacking and ProgramID == 87 then
                    lives = lives - 1
                    PushScaleformMovieFunction(cachedScaleform, "SET_LIVES")
                    PushScaleformMovieFunctionParameterInt(lives)
                    PushScaleformMovieFunctionParameterInt(5)
                    PopScaleformMovieFunctionVoid()
                    PlaySoundFrontend(-1, "HACKING_CLICK_BAD", "", false)
                elseif Hacking and ProgramID == 92 then
                    PlaySoundFrontend(-1, "HACKING_CLICK_GOOD", "", false)
                elseif Hacking and ProgramID == 86 then
                    SorF = true
                    PlaySoundFrontend(-1, "HACKING_SUCCESS", "", true)
                    PushScaleformMovieFunction(cachedScaleform, "SET_ROULETTE_OUTCOME")
                    PushScaleformMovieFunctionParameterBool(true)
                    ScaleformLabel("WINBRUTE")
                    PopScaleformMovieFunctionVoid()
                    Wait(5000)
                    PushScaleformMovieFunction(cachedScaleform, "CLOSE_APP")
                    PopScaleformMovieFunctionVoid()
                    SetScaleformMovieAsNoLongerNeeded(cachedScaleform)
                    UsingComputer = false
                    Hacking = false
                    SorF = false

                    HackingCompleted(true)

                    DisableControlAction(0, 24, false)
                    DisableControlAction(0, 25, false)
                elseif ProgramID == 6 then
                    UsingComputer = false
                    SetScaleformMovieAsNoLongerNeeded(cachedScaleform)

                    HackingCompleted(false)

                    DisableControlAction(0, 24, false)
                    DisableControlAction(0, 25, false)
                end

                if Hacking then
                    PushScaleformMovieFunction(cachedScaleform, "SHOW_LIVES")
                    PushScaleformMovieFunctionParameterBool(true)
                    PopScaleformMovieFunctionVoid()

                    if lives <= 0 then
                        SorF = true
                        PlaySoundFrontend(-1, "HACKING_FAILURE", "", true)
                        PushScaleformMovieFunction(cachedScaleform, "SET_ROULETTE_OUTCOME")
                        PushScaleformMovieFunctionParameterBool(false)
                        ScaleformLabel("LOSEBRUTE")
                        PopScaleformMovieFunctionVoid()
                        Wait(5000)
                        PushScaleformMovieFunction(cachedScaleform, "CLOSE_APP")
                        PopScaleformMovieFunctionVoid()
                        SetScaleformMovieAsNoLongerNeeded(cachedScaleform)
                        Hacking = false
                        SorF = false
                        UsingComputer = false

                        HackingCompleted(false)

                        DisableControlAction(0, 24, false)
                        DisableControlAction(0, 25, false)
                    end
                end
            end
        end

        Citizen.Wait(sleepThread)
    end
end)

RegisterCommand("news", function()
    StartComputer()
end)
