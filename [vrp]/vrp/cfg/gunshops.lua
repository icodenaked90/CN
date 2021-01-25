
local cfg = {}
-- list of weapons for sale
-- for the native name, see https://wiki.fivem.net/wiki/Weapons (not all of them will work, look at client/player_state.lua for the real weapon list)
-- create groups like for the garage config
-- [native_weapon_name] = {display_name,body_price,ammo_price,description}
-- ammo_price can be < 1, total price will be rounded

-- _config: blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.gunshop_types = {
	["Våbenbutik"] = {
		_config = {blipid=154,blipcolor=49},
		["ARMOR1"] = {"Skudsikker vest",75000,0,""},
		["WEAPON_FLASHLIGHT"] = {"Lommelygte",5000,0,""},
		["WEAPON_KNIFE"] = {"Kniv",10000,0,""},
		["WEAPON_BAT"] = {"Baseballbat",10000,0,""},
		["WEAPON_CROWBAR"] = {"Brækjern",10000,0,""},
		["WEAPON_KNUCKLE"] = {"Knojern",10000,0,""},
		["WEAPON_WRENCH"] = {"Svensknøgle",10000,0,""},
		["WEAPON_SWITCHBLADE"] = {"Springkniv",10000,0,""},
		["WEAPON_BATTLEAXE"] = {"Kampøkse",10000,0,""},
		["WEAPON_BALL"] = {"Baseball bold",100,0,""},
		["WEAPON_GOLFCLUB"] = {"Golfkølle",7500,0,""},
		["WEAPON_HAMMER"] = {"Hammer",10000,0,""},
		["WEAPON_MACHETE"] = {"Machete",10000,0,""}
	},
	["Politi"] = {
		_config = {blipid=175,blipcolor=38, permissions = {"police.bodyarmor"}},
		["ARMOR"] = {"Skudsikker vest",0,0,""}
	},
	["FBI Information"] = {
		_config = {blipid=175,blipcolor=38, permissions = {"pet.whitelisted"}},
		["ARMOR"] = {"Skudsikker vest",0,0,""},
		["WEAPON_COMBATPISTOL"] = {"Håndpistol",0,0,""}
	},

	["PolitiStationen"] = {
		_config = {permissions = {"police.loadshop"}},
		["WEAPON_COMBATPISTOL"] = {"Tjenestepistol",1,0,""},
		["WEAPON_STUNGUN"] = {"TAZER",1,0,""},
		["WEAPON_CARBINERIFLE"] = {"M4 CARBINE",1,0,""},
		["WEAPON_FLASHLIGHT"] = {"Lommelygte",1,0,""},
		["WEAPON_PISTOL_MK2"] = {"Pistol MK2",1,0,""},
		["WEAPON_NIGHTSTICK"] = {"Politi stav", 1,0,""},
		["WEAPON_GRENADELAUNCHER"] = {"Tåregas Kaster", 1,0,""},
		["WEAPON_BZGAS"] = {"Tåregas",5,0,""},
		["WEAPON_SMG"] = {"SMG",1,0,""},
		["WEAPON_PUMPSHOTGUN"] = {"PUMPSHOTGUN",0,0,""},
		["WEAPON_SNIPERRIFLE"] = {"Sniper",0,0,""},
	},
	
		["AKS"] = {
		_config = {permissions = {"aks.loadshop"}},
		["WEAPON_COMBATPISTOL"] = {"Tjenestepistol",1,0,""},
		["WEAPON_STUNGUN"] = {"TAZER",1,0,""},
		["WEAPON_CARBINERIFLE"] = {"M4 CARBINE",1,0,""},
		["WEAPON_FLASHLIGHT"] = {"Lommelygte",1,0,""},
		["WEAPON_PISTOL_MK2"] = {"Pistol MK2",1,0,""},
		["WEAPON_NIGHTSTICK"] = {"Politi stav", 1,0,""},
		["WEAPON_GRENADELAUNCHER"] = {"Tåregas Kaster", 1,0,""},
		["WEAPON_BZGAS"] = {"Tåregas",5,0,""},
		["WEAPON_SMG"] = {"SMG",1,0,""},
		["WEAPON_PUMPSHOTGUN"] = {"PUMPSHOTGUN",0,0,""},
		["WEAPON_SNIPERRIFLE"] = {"Sniper",0,0,""},
	},

	["Hospitalet"] = {
		_config = {permissions = {"emergency.shop"}},
		["WEAPON_FLASHLIGHT"] = {"Lommelygte",10,0,""},
		["WEAPON_DIGISCANNER"] = {"Radio",10,0,""}

	},


	["Golfklubben"] = {
		_config = {blipid=109,blipcolor=49},
		["WEAPON_GOLFCLUB"] = {"Golf kølle", 1500,0,""}
	}
}
-- list of gunshops positions

cfg.gunshops = {
	{"Våbenbutik", 1692.41, 3758.22, 34.7053,false},
	{"Våbenbutik", 252.696, -48.2487, 69.941,false},
	{"Våbenbutik", 844.299, -1033.26, 28.1949,false},
	{"Våbenbutik", -331.624, 6082.46, 31.4548,false},
	{"Våbenbutik", -664.147, -935.119, 21.8292,false},
	{"Våbenbutik", -1305.4624, -392.4640, 36.6957,false},
	{"Våbenbutik", -1119.4880,2697.0866,18.554,false},
	{"Våbenbutik", 2569.62, 294.453, 108.735,false},
	{"Våbenbutik", -3172.6037,1085.7481,20.8387,false},
	{"Våbenbutik", 21.70, -1107.41, 29.79,false},
	--{"Våbenbutik", 810.15, -2156.88, 29.61,false},
	{"Politi", 460.597,-981.05,30.68,true}, --centrum PD
	{"Politi", 1841.9114990234,3692.322265625,34.267044067383,true}, -- Sandy
	{"Politi", -436.39117431641,5989.2602539063,31.7161693573,true }, -- paleto
	{"Politi", -180.89825439453,-289.98864746094,48.970031738281,true }, -- AKS

	{"PolitiStationen", 459.21792602539,-979.71276855469,30.68957901001,true}, --Centrum PD
	{"PolitiStationen", 138.32569885254,-736.02966308594,258.15194702148,true}, -- PET
	{"PolitiStationen", 1842.3072509766,3690.7697753906,34.267044067383,true}, -- Sandy
	{"PolitiStationen", -437.97955322266,5987.9897460938,31.7161693573,true}, -- paleto
	{"AKS", -183.72080993652,-291.38391113281,48.970031738281,true}, -- AKS
	{"Golfklubben", -1366.7252197266,56.652606964111,54.098461151123,true},
	{"Hospitalet",306.45919799805,-601.48474121094,43.283985137939,false}, --Midtby
	{"Hospitalet",-253.70069885254,6313.5703125,32.436408996582,false}, --paleto
	--{"Våbenbutik", 21.391384124756,-1106.8255615234,29.797027587891},
	{"Våbenbutik", 842.45434570313,-1033.4460449219,28.194854736328,false},
	{"Våbenbutik", 1692.3937988281,3758.2707519531,34.705341339111,false}
}

return cfg
