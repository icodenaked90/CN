vRP = Proxy.getInterface("vRP")
vRPex = Proxy.getInterface("vrp_extended")


local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

function ply_drawTxt(text,font,centre,x,y,scale,r,g,b,a)
    SetTextFont(font)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextCentre(centre)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x , y)
end

function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())

    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 20, 20, 20, 150)
end

local usedchairs = {}

inchairs = false

local chairs = {
    -741944541, --Stole  centrum
    -2016553006, -- Stole centrum
		1037469683, --PD Centrum
		-377849416, --PD Centrum
		-109356459, --Afhøring PD Centrum
		96868307, --PD Centrum
    -1633198649, --PD Centrum
    -1173315865, --Yellowjack første sal
}

local laychair = 0
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local coords = GetEntityCoords(PlayerPedId(),true)
        for k,v in pairs(chairs) do
            local chairs = GetClosestObjectOfType(coords["x"], coords["y"], coords["z"], 0.7, v, false, false, false)
            if chairs ~= 0 then
                local bcoords = GetEntityCoords(chairs, true)
                if inchairs == false then
									-- print("test")
                    if usedchairs[math.floor(bcoords["x"])] == nil then
                        DrawText3Ds(bcoords["x"],bcoords["y"],bcoords["z"]+0.75,"Tryk ~g~H ~w~for at sætte dig ned")
                        if IsControlJustReleased(1, Keys["H"]) then
                            FreezeEntityPosition(PlayerPedId(),true)
                            TaskStartScenarioAtPosition(PlayerPedId(), "PROP_HUMAN_SEAT_BENCH", bcoords["x"],bcoords["y"],bcoords["z"]+0.5, GetEntityHeading(chairs)+170, 0, true,true)
                            TriggerServerEvent("cn-chairs:sendstatus",math.floor(bcoords["x"]),true)
                            inchairs = true
                            laychairs = chairs
                        end
                    end
                end
            end
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if inchairs then
            ply_drawTxt("Tryk ~r~Y~w~ for at rejse dig",4,1,0.5,0.95,0.6,255,255,255,255)
            if IsControlJustReleased(1, Keys["Y"]) then
                local bcoords = GetEntityCoords(laychairs)
                -- SetEntityCoordsNoOffset(PlayerPedId(),bcoords["x"]-1.2,bcoords["y"],bcoords["z"]+1,0,0,1)
                FreezeEntityPosition(PlayerPedId(),false)
                -- SetEntityHeading(PlayerPedId(),GetEntityHeading(laychairs)-180)
                ClearPedTasks(PlayerPedId())
                TriggerServerEvent("cn-chairs:sendstatus",math.floor(bcoords["x"]),false)
                inchairs = false
                laychairs = 0
            end
        end
    end
end)

function loadAnimDict( dict )
    while ( not HasAnimDictLoaded( dict ) ) do
        RequestAnimDict( dict )
        Citizen.Wait( 5 )
    end
end

RegisterNetEvent('cn-chairs:load')
AddEventHandler('cn-chairs:load', function(list)
    usedchairs = list
end)

RegisterNetEvent('cn-chairs:status')
AddEventHandler('cn-chairs:status', function(key,chairs)
    usedchairs[key] = chair
end)
