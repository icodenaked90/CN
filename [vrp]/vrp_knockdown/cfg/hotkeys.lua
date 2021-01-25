-- TUNNEL AND PROXY
cfg = {}
vRPhk = {}
Tunnel.bindInterface("vrp_knockdown",vRPhk)
vRPserver = Tunnel.getInterface("vRP","vrp_knockdown")
HKserver = Tunnel.getInterface("vrp_knockdown","vrp_knockdown")
vRP = Proxy.getInterface("vRP")

-- GLOBAL VARIABLES
called = 0






cfg.hotkeys = {
  [51] = {
    -- G noquea si tiene arma
    group = 1, 
	pressed = function() 
      if not IsPauseMenuActive() and  IsPedArmed(GetPlayerPed(-1), 7) then 
		HKserver.nockout()
	  else 
		vRP.notify({"~r~Du har intet våben."})
	  end 
	end,
	released = function()
	  -- Do nothing on release because it's toggle.
	end,
  },
}
