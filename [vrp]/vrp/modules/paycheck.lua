local salary = {
	["Rigspolitichef"] = {salary = 50000, perm = "politiledelse.paycheck"},
	["Vice Rigspolitichef"] = {salary = 50000, perm = "politiviceledelse.paycheck"},
	["Politidirektør"] = {salary = 45000, perm = "policedirector.paycheck"},
	["Vice Politidirektør"] = {salary = 45000, perm = "policevicedirector.paycheck"},
	["Politiinspektør"] = {salary = 42500, perm = "policeinspector.paycheck"},
	["Politikommissær"] = {salary = 40000, perm = "policecommissioner.paycheck"},
	["Politiassistent"] = {salary = 32500, perm = "politiassistent.paycheck"},
	["Politibetjent"] = {salary = 30000, perm = "police.paycheck"},
	["Politielev"] = {salary = 27500, perm = "politielev.paycheck"},

	["PET"] = {salary = 27500, perm = "pet.paycheck"},
	["AKS"] = {salary = 30000, perm = "aks.paycheck"},

	["Højesterets Dommer"] = {salary = 30000, perm = "dommerchef.paycheck"},
	["Dommer"] = {salary = 25000, perm = "dommer.paycheck"},


	["Regionschef"] = {salary = 30000, perm = "regionschef.paycheck"},
	["Læge"] = {salary = 27500, perm = "doctor.paycheck"},
	["Paramediciner"] = {salary = 25000, perm = "paramediciner.paycheck"},
	["Ambulanceredder"] = {salary = 22500, perm = "emergency.paycheck"},
	["Ambulanceelev"] = {salary = 20000, perm = "emergencyelev.paycheck"},

	["Mekaniker Chef"] = {salary = 20000, perm = "mekanikerchef.paycheck"},
	["Mekaniker"] = {salary = 15000, perm = "mekaniker.paycheck"},

	["Politiadvokat Chef"] = {salary = 30000, perm = "politiadvokatchef.paycheck"},
	["Politiadvokat"] = {salary = 20000, perm = "politiadvokat.paycheck"},

	["Advokat Chef"] = {salary = 25000, perm = "advokatchef.paycheck"},
	["Advokatpartner"] = {salary = 20500, perm = "advokatpartner.paycheck"},
	["Advokat"] = {salary = 17500, perm = "advokat.paycheck"},
	["Advokatelev"] = {salary = 13500, perm = "advokatelev.paycheck"},

	["Sikkerhedsvagt Chef"] = {salary = 25000, perm = "sikkerhedsvagtchef.paycheck"},
	["Sikkerhedsvagt"] = {salary = 17500, perm = "sikkerhedsvagt.paycheck"},

	["Psykolog Chef"] = {salary = 25000, perm = "psykologchef.paycheck"},
	["Psykolog"] = {salary = 17500, perm = "psykolog.paycheck"},

	["Journalist Chef"] = {salary = 20000, perm = "journalistchef.paycheck"},
	["Journalist"] = {salary = 15000, perm = "journalist.paycheck"},

	["Taxa"] = {salary = 9000, perm = "taxi.paycheck"},

	["Kørerlærer"] = {salary = 15750, perm = "driverlicense.paycheck"},

	["Våbendealer"] = {salary = 12000, perm = "weapondealer.paycheck"},
	["Drugdealer"] = {salary = 12000, perm = "drugdealer.paycheck"},

	["Pizzabud"] = {salary = 10000, perm = "delivery.paycheck"},

	["Lastbil Chauffør"] = {salary = 10000, perm = "trucker.paycheck"},

	["Ejendomsmægler Chef"] = {salary = 20000, perm = "realestatechef.paycheck"},
	["Ejendomsmægler"] = {salary = 15000, perm = "realestate.paycheck"},

	["Bilforhandler Chef"] = {salary = 12500, perm = "bilforhandlerchef.paycheck"},
	["Bilforhandler"] = {salary = 10500, perm = "bilforhandler.paycheck"},

	["Miner"] = {salary = 10000, perm = "miner.paycheck"},
	["Skov Hugger"] = {salary = 10000, perm = "skovhugger.paycheck"},
	["Arbejdsløs"] = {salary = 6000, perm = "nojob.paycheck"},

}

Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(1800000) -- Every X ms you'll get paid (300000 = 5 min)
		for user_id,source in pairs(vRP.getUsers()) do
			for k,v in pairs(salary) do
				Citizen.Wait(50)
				if vRP.hasPermission(user_id,v.perm) then
					vRP.giveBankMoney(user_id,tonumber(v.salary))
					TriggerClientEvent("pNotify:SendNotification", source,{text = "Lønudbetaling: <b style='color: #4E9350'>"..format_thousands(math.floor(tonumber(v.salary))).." DKK</b>.<br/>Erhverv: <b style='color: #72AEE5'>"..k.."</b>.", type = "info", queue = "global",timeout = 4000, layout = "bottomCenter",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
					break
				end
			end
		end
	end
end)

function format_thousands(v)
	local s = string.format("%d", math.floor(v))
	local pos = string.len(s) % 3
	if pos == 0 then pos = 3 end
	return string.sub(s, 1, pos)
			.. string.gsub(string.sub(s, pos+1), "(...)", ".%1")
end
