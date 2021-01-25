
local cfg = {}

-- minimum capital to open a business
cfg.minimum_capital = 500000

-- capital transfer reset interval in minutes
-- default: reset every 24h
cfg.transfer_reset_interval = 24*60

-- commerce chamber {blipid,blipcolor}
cfg.blip = {408,69}

-- positions of commerce chambers
cfg.commerce_chambers = { --{x,y,z,showblip}
	{707.29656982422,-966.90386962891,30.412847518921,true},
	{109.10571289063,-747.24206542969,242.15196228027,false},
	{150.55360412598,-756.31640625,242.15196228027,false},
	{155.4331817627,-744.35656738281,242.15199279785,false},
	{157.55096435547,-738.46838378906,242.15199279785,false},
	{990.41668701172,-2149.6394042969,30.20534324646,false},
	{113.46,-763.46,242.15,false},
	{107.39,-750.17,241.15,false},
	{109.12,-735.94,242.15,false},
}


return cfg
