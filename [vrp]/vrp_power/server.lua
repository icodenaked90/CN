local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRPpm = {}
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_barrier")
PMclient = Tunnel.getInterface("vrp_power","vrp_power")
vRPpm = Tunnel.getInterface("vrp_power","vrp_power")
Tunnel.bindInterface("vrp_power",vRPpm)

-- REMEMBER TO ADD THE PERMISSIONS FOR WHAT YOU WANT TO USE
-- CREATES PLAYER SUBMENU AND ADD CHOICES
local mech = {}
local ch_mech = {function(player,choice)
	local user_id = vRP.getUserId({player})
	local menu = {}
	menu.name = "El forsyningen"
	menu.css = {top = "75px", header_color = "rgba(0,0,255,0.75)"}
	menu.onclose = function(player) vRP.openMainMenu({player}) end -- nest menu

	menu["- Fjern"] = {function(player,choice)
		PMclient.removeLamppost (player,{})
		PMclient.removeWorklight (player,{})
		mech[player] = false
	end}

	menu["Lygtepæl"] = {function(player,choice)
		PMclient.isCloseToLamppost(player,{},function(closeby)
			if closeby and (mech[player] or vRP.hasPermission({user_id,"domingo.loadshop"})) then
				PMclient.removeLamppost(player,{})
				mech[player] = false
			elseif not closeby and (not mech[player] or vRP.hasPermission({user_id,"domingo.loadshop"})) then
				PMclient.setLamppostOnGround(player,{})
				mech[player] = true
			end
		end)
	end}

	menu["Arbejdslys"] = {function(player,choice)
		PMclient.isCloseToWorklight(player,{},function(closeby)
			if closeby and (mech[player] or vRP.hasPermission({user_id,"domingo.loadshop"})) then
				PMclient.removeWorklight(player,{})
				mech[player] = false
			elseif not closeby and (not mech[player] or vRP.hasPermission({user_id,"domingo.loadshop"})) then
				PMclient.setWorklightOnGround(player,{})
				mech[player] = true
			end
		end)
	end}

	menu["Blokade"] = {function(player,choice)
		PMclient.isCloseToLightbarrier(player,{},function(closeby)
			if closeby and (mech[player] or vRP.hasPermission({user_id,"domingo.loadshop"})) then
				PMclient.removeLightbarrier(player,{})
				mech[player] = false
			elseif not closeby and (not mech[player] or vRP.hasPermission({user_id,"domingo.loadshop"})) then
				PMclient.setLightbarrierOnGround(player,{})
				mech[player] = true
			end
		end)
	end}

	menu["Terror sikring"] = {function(player,choice)
		PMclient.isCloseToTerrorbarrier(player,{},function(closeby)
			if closeby and (mech[player] or vRP.hasPermission({user_id,"domingo.loadshop"})) then
				PMclient.removeTerrorbarrier(player,{})
				mech[player] = false
			elseif not closeby and (not mech[player] or vRP.hasPermission({user_id,"domingo.loadshop"})) then
				PMclient.setTerrorbarrierOnGround(player,{})
				mech[player] = true
			end
		end)
	end}

	menu["Generator"] = {function(player,choice)
		PMclient.isCloseToGenerator(player,{},function(closeby)
			if closeby and (mech[player] or vRP.hasPermission({user_id,"domingo.loadshop"})) then
				PMclient.removeGenerator(player,{})
				mech[player] = false
			elseif not closeby and (not mech[player] or vRP.hasPermission({user_id,"domingo.loadshop"})) then
				PMclient.setGeneratorOnGround(player,{})
				mech[player] = true
			end
		end)
	end}


	vRP.openMenu({player, menu})
end, "El Forsyning"}


-- REGISTER MAIN MENU CHOICES
vRP.registerMenuBuilder({"mech", function(add, data)
	local user_id = vRP.getUserId({data.player})
	if user_id ~= nil then
		local choices = {}
		choices["El Forsyning"] = ch_mech
		add(choices)
	end
end})
