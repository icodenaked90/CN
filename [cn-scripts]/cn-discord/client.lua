Citizen.CreateThread(function()
	while true do
		SetDiscordAppId(608040839234584596)
		SetDiscordRichPresenceAsset('logo')
		Citizen.Wait(60000)
	end
end)

Citizen.CreateThread(function()
	while true do
		local onlinePlayers = 0
		for i = 0, 256 do
			if NetworkIsPlayerActive(i) then
				onlinePlayers = onlinePlayers+1
			end
		end
		Citizen.Wait(100)
		SetRichPresence("Online: ".. onlinePlayers .. "/128")
	end
end)
