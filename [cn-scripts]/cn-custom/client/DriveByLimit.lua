--[[
	DriveByLimit
    Copyright (C) 2018  Thaisen

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published
    by the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
 ]]


Citizen.CreateThread(function()
	while true do
		Wait(1000)

		local playerPed = GetPlayerPed(-1)
		local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
		local speed = GetEntitySpeed(vehicle)
		local kmh = 3.6
		local disabledWeapons = {'WEAPON_REVOLVER', 'WEAPON_HEAVYPISTOL', 'WEAPON_SNOWBALL', 'WEAPON_MACHINEPISTOL', 'WEAPON_MICROSMG', 'WEAPON_MOLOTOV', 'WEAPON_PUMPSHOTGUN', 'WEAPON_ASSAULTSHOTGUN', 'WEAPON_SAWNOFFSHOTGUN', 'WEAPON_APPISTOL', 'WEAPON_MINISMG', 'WEAPON_MICROSMG', 'WEAPON_PISTOL50'}
		local weapon = GetSelectedPedWeapon(playerPed)

		if weapon == GetHashKey("WEAPON_APPISTOL") or weapon == GetHashKey("WEAPON_MICROSMG") or weapon == GetHashKey("WEAPON_SNOWBALL") or weapon == GetHashKey("WEAPON_SAWNOFFSHOTGUN") or weapon == GetHashKey("WEAPON_MINISMG") or weapon == GetHashKey("WEAPON_MACHINEPISTOL") or weapon == GetHashKey("WEAPON_HEAVYPISTOL") or weapon == GetHashKey("WEAPON_PISTOL50") or weapon == GetHashKey("WEAPON_REVOLVER")then
			SetPlayerCanDoDriveBy(PlayerId(),false)
		else
			if math.floor(speed*kmh) < 20 then
				SetPlayerCanDoDriveBy(PlayerId(),true)
			else
				SetPlayerCanDoDriveBy(PlayerId(),false)
			end
		end
	end
end)

-- CONFIG --

-- Allow passengers to shoot
--local passengerDriveBy = true
--
--
--Citizen.CreateThread(function()
--	while true do
--		Citizen.Wait(500)
--		local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
--		local speed = GetEntitySpeed(vehicle)
--		local kmh = 3.6
--		local vehicleClass = GetVehicleClass(vehicle)
--
--
--
--
--		if vehicleClass ~= 15 and 16 then
--			if math.floor(speed*kmh) > 20 then
--				SetPlayerCanDoDriveBy(PlayerId(), false)
--			elseif passengerDriveBy then
--				SetPlayerCanDoDriveBy(PlayerId(), true)
--			else
--				SetPlayerCanDoDriveBy(PlayerId(), false)
--			end
--		end
--	end
--end)




-- VEHICLE CLASSES
-- id = 0 --compacts
-- id = 1 --sedans
-- id = 2 --SUV's
-- id = 3, --coupes
-- id = 4 --muscle
-- id = 5 --sport classic
-- id = 6 --sport
-- id = 7 --super
-- id = 8 --motorcycle
-- id = 9 --offroad
-- id = 10 --industrial
-- id = 11 -utility
-- id = 12 --vans
-- id = 13 --bicycles
-- id = 14 --boats
-- id = 15, --helicopter
-- id = 16 --plane
-- id = 17 --service
-- id = 18 --emergency
-- id = 19 --military
