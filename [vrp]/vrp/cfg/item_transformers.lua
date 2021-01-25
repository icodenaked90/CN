
local cfg = {}

-- define static item transformers
-- see https://github.com/ImagicTheCat/vRP to understand the item transformer concept/definition

cfg.item_transformers = {

	-- FISKER --
	{
		name = "Fiske Handler",
		r = 255, g = 125, b = 24,
		max_units = 1000,
		units_per_minute = 1000,
		x = -131.19737243652, y = -2668.3608398438, z = 6.0017414093018,
		radius = 5, height = 2.5,
		recipes = {
			["Sælg Aborre"] = { -- action name
				description = "Sælg din fangst", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 75, -- money earned per unit
				reagents = { ["fisk6"] = 1 }, -- items taken per unit
				products = {}, -- items given per unit
				aptitudes = {}
			},
			["Sælg Brasen"] = { -- action name
				description = "Sælg din fangst", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 600, -- money earned per unit
				reagents = { ["fisk5"] = 1 }, -- items taken per unit
				products = {}, -- items given per unit
				aptitudes = {}
			},
			["Sælg Regnbueørred"] = { -- action name
				description = "Sælg din fangst", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 2000, -- money earned per unit
				reagents = { ["fisk4"] = 1 }, -- items taken per unit
				products = {}, -- items given per unit
				aptitudes = {}
			},
			["Sælg Ål"] = { -- action name
				description = "Sælg din fangst", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 500, -- money earned per unit
				reagents = { ["fisk3"] = 1 }, -- items taken per unit
				products = {}, -- items given per unit
				aptitudes = {}
			},
			["Sælg Gedde"] = { -- action name
				description = "Sælg din fangst", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 350, -- money earned per unit
				reagents = { ["fisk2"] = 1 }, -- items taken per unit
				products = {}, -- items given per unit
				aptitudes = {}
			},
			["Sælg Laks"] = { -- action name
				description = "Sælg din fangst", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 450, -- money earned per unit
				reagents = { ["fisk1"] = 1 }, -- items taken per unit
				products = {}, -- items given per unit
				aptitudes = {}
			}
		}
	},
	--FISKER END --

	---------------------------------------HAK STÅL--------------------------------------
	{
		name = "Stål", -- menu name
		permissions = { "miner.adgang" },
		r = 0, g = 255, b = 0, -- color
		max_units = 1000,
		units_per_minute = 50,
		x = 2947.2155761719, y = 2726.4255371094, z = 47.437828063965,
		radius = 3, height = 1.5, -- area
		recipes = {
			["Hak Stål"] = { -- action name
				description = "Hakker Stål", -- action description
				work = 2,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {

				}, -- items taken per unit
				products = {
					["steel"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			}
		}
	},
	---------------------------------------Våben craft--------------------------------------
	-- Frame
	{
		name = "Våben rammer", -- menu name
		permissions = { "weapons.dealer" },
		r = 0, g = 255, b = 0, -- color
		max_units = 1000,
		units_per_minute = 50,
		x = 884.07495117188, y = -3207.4787597656, z = -98.196212768555,
		radius = 1, height = 1.5, -- area
		recipes = {
			["Lav SNS Ramme"] = { -- action name
				description = "Laver SNS Ramme", -- action description
				work = 7,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 14,
					["stainless"] = 6
				}, -- items taken per unit
				products = {
					["snsframe"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Pistol Ramme"] = { -- action name
				description = "Laver Pistol Ramme", -- action description
				work = 8,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 18,
					["stainless"] = 8
				}, -- items taken per unit
				products = {
					["pistolframe"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Revolver Ramme"] = { -- action name
				description = "Laver Revolver Ramme", -- action description
				work = 8,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 24,
					["stainless"] = 10
				}, -- items taken per unit
				products = {
					["revolverframe"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Heavy Pistol Ramme"] = { -- action name
				description = "Laver Heavy Pistol Ramme", -- action description
				work = 9,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["guldbar"] = 5,
					["aluminiumbar"] = 24,
					["stainless"] = 10
				}, -- items taken per unit
				products = {
					["heavypistolframe"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Pistol .50 Ramme"] = { -- action name
				description = "Laver Pistol .50 Ramme", -- action description
				work = 10,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 30,
					["stainless"] = 12
				}, -- items taken per unit
				products = {
					["pistol50frame"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Ap pistol Ramme"] = { -- action name
				description = "Laver Ap pistol Ramme", -- action description
				work = 10,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 30,
					["stainless"] = 20
				}, -- items taken per unit
				products = {
					["appistolframe"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Tec9 pistol Ramme"] = { -- action name
				description = "Laver Tec9 pistol Ramme", -- action description
				work = 10,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 40,
					["stainless"] = 30
				}, -- items taken per unit
				products = {
					["tec9pistolframe"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Oversavet jagtgevær Ramme"] = { -- action name
				description = "Laver Oversavet jagtgevær Ramme", -- action description
				work = 10,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 40,
					["stainless"] = 30
				}, -- items taken per unit
				products = {
					["oversavetjagtgeværframe"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav MicroSMG Ramme"] = { -- action name
				description = "Laver MicroSMG Ramme", -- action description
				work = 10,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 40,
					["stainless"] = 30
				}, -- items taken per unit
				products = {
					["microsmgframe"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			}
		}
	},
	-- Barrel
	{
		name = "Våben løb", -- menu name
		permissions = { "weapons.dealer" },
		r = 0, g = 255, b = 0, -- color
		max_units = 1000,
		units_per_minute = 50,
		x = 887.48895263672, y = -3209.7124023438, z = -98.196220397949,
		radius = 1, height = 1.5, -- area
		recipes = {
			["Lav SNS Løb"] = { -- action name
				description = "Laver SNS Løb", -- action description
				work = 7,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 8,
					["stainless"] = 1
				}, -- items taken per unit
				products = {
					["snsbarrel"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Pistol Løb"] = { -- action name
				description = "Laver Pistol Løb", -- action description
				work = 8,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 12,
					["stainless"] = 2
				}, -- items taken per unit
				products = {
					["pistolbarrel"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Revolver Løb"] = { -- action name
				description = "Laver Revolver Løb", -- action description
				work = 8,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 18,
					["stainless"] = 3
				}, -- items taken per unit
				products = {
					["revolverbarrel"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Heavy Pistol Løb"] = { -- action name
				description = "Laver Heavy Pistol Løb", -- action description
				work = 9,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 12,
					["stainless"] = 3
				}, -- items taken per unit
				products = {
					["heavypistolbarrel"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Pistol .50 Løb"] = { -- action name
				description = "Laver Pistol .50 Løb", -- action description
				work = 10,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 18,
					["stainless"] = 4
				}, -- items taken per unit
				products = {
					["pistol50barrel"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Ap Pistol Løb"] = { -- action name
				description = "Laver Ap Pistol Løb", -- action description
				work = 10,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 25,
					["stainless"] = 15
				}, -- items taken per unit
				products = {
					["appistolbarrel"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Tec9 Pistol Løb"] = { -- action name
				description = "Laver Tec9 Pistol Løb", -- action description
				work = 10,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 20,
					["stainless"] = 10
				}, -- items taken per unit
				products = {
					["tec9pistolbarrel"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			}, ["Lav Oversavet jagtgevær barrel Løb"] = { -- action name
				description = "Laver Oversavet jagtgevær barrel Løb", -- action description
				work = 10,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 25,
					["stainless"] = 25
				}, -- items taken per unit
				products = {
					["oversavetjagtgeværbarrel"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			}, ["Lav MicroSMG Løb"] = { -- action name
				description = "Laver MicroSMG Løb", -- action description
				work = 10,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 20,
					["stainless"] = 10
				}, -- items taken per unit
				products = {
					["microsmgbarrel"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			}
		}
	},
	-- Trigger
	{
		name = "Våben aftrækker", -- menu name
		permissions = { "weapons.dealer" },
		r = 0, g = 255, b = 0, -- color
		max_units = 1000,
		units_per_minute = 50,
		x = 888.76751708984, y = -3207.2253417969, z = -98.196212768555,
		radius = 1, height = 1.5, -- area
		recipes = {
			["Lav SNS Aftrækker"] = { -- action name
				description = "Laver SNS Aftrækker", -- action description
				work = 7,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 3,
					["stainless"] = 3
				}, -- items taken per unit
				products = {
					["snstrigger"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Pistol Aftrækker"] = { -- action name
				description = "Laver Pistol Aftrækker", -- action description
				work = 8,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 4,
					["stainless"] = 3
				}, -- items taken per unit
				products = {
					["pistoltrigger"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Revolver Aftrækker"] = { -- action name
				description = "Laver Revolver Aftrækker", -- action description
				work = 8,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 5,
					["stainless"] = 4
				}, -- items taken per unit
				products = {
					["revolvertrigger"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Heavy Pistol Aftrækker"] = { -- action name
				description = "Laver Heavy Pistol Aftrækker", -- action description
				work = 9,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 4,
					["stainless"] = 3
				}, -- items taken per unit
				products = {
					["heavypistoltrigger"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Pistol .50 Aftrækker"] = { -- action name
				description = "Laver Pistol .50 Aftrækker", -- action description
				work = 10,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 5,
					["stainless"] = 3
				}, -- items taken per unit
				products = {
					["pistol50trigger"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Ap Pistol Aftrækker"] = { -- action name
				description = "Laver Ap Pistol Aftrækker", -- action description
				work = 10,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 25,
					["stainless"] = 15
				}, -- items taken per unit
				products = {
					["appistoltrigger"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Tec9 Pistol Aftrækker"] = { -- action name
				description = "Laver Tec9 Pistol Aftrækker", -- action description
				work = 10,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 20,
					["stainless"] = 10
				}, -- items taken per unit
				products = {
					["tec9pistoltrigger"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Oversavet Jagtgevær Aftrækker"] = { -- action name
				description = "Laver Oversavet Jagtgevær Aftrækker", -- action description
				work = 10,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 10,
					["stainless"] = 10
				}, -- items taken per unit
				products = {
					["oversavetjagtgeværtrigger"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav MicroSMG Aftrækker"] = { -- action name
				description = "Laver MicroSMG Aftrækker", -- action description
				work = 10,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 20,
					["stainless"] = 10
				}, -- items taken per unit
				products = {
					["microsmgtrigger"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			}
		}
	},
	-- Crafting
	{
		name = "Våben samling", -- menu name
		permissions = { "weapons.dealer" },
		r = 0, g = 255, b = 0, -- color
		max_units = 1000,
		units_per_minute = 50,
		x = 884.93872070313, y = -3199.9479980469, z = -98.196197509766,
		radius = 1, height = 1.5, -- area
		recipes = {
			["Saml SNS"] = { -- action name
				description = "Saml SNS", -- action description
				work = 50,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["snsframe"] = 1,
					["snsbarrel"] = 1,
					["snstrigger"] = 1,
				}, -- items taken per unit
				products = {
					["wbody|WEAPON_SNSPISTOL"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Saml Pistol"] = { -- action name
				description = "Saml Pistol", -- action description
				work = 60,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["pistolframe"] = 1,
					["pistolbarrel"] = 1,
					["pistoltrigger"] = 1,
				}, -- items taken per unit
				products = {
					["wbody|WEAPON_PISTOL"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Saml Revolver"] = { -- action name
				description = "Saml Revolver", -- action description
				work = 60,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["revolverframe"] = 1,
					["revolverbarrel"] = 1,
					["revolvertrigger"] = 1,
				}, -- items taken per unit
				products = {
					["wbody|WEAPON_REVOLVER"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Saml Heavy Pistol"] = { -- action name
				description = "Saml Heavy Pistol", -- action description
				work = 70,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["heavypistolframe"] = 1,
					["heavypistolbarrel"] = 1,
					["heavypistoltrigger"] = 1,
				}, -- items taken per unit
				products = {
					["wbody|WEAPON_HEAVYPISTOL"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Saml Pistol .50"] = { -- action name
				description = "Saml Pistol .50", -- action description
				work = 80,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["pistol50frame"] = 1,
					["pistol50barrel"] = 1,
					["pistol50trigger"] = 1,
				}, -- items taken per unit
				products = {
					["wbody|WEAPON_PISTOL50"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Saml Ap Pistol"] = { -- action name
				description = "Saml Ap Pistol", -- action description
				work = 80,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["appistolframe"] = 1,
					["appistolbarrel"] = 1,
					["appistoltrigger"] = 1,
				}, -- items taken per unit
				products = {
					["wbody|WEAPON_APPISTOL"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Saml Tec9 Pistol"] = { -- action name
				description = "Saml Tec9 Pistol", -- action description
				work = 80,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["tec9pistolframe"] = 1,
					["tec9pistolbarrel"] = 1,
					["tec9pistoltrigger"] = 1,
				}, -- items taken per unit
				products = {
					["wbody|WEAPON_MACHINEPISTOL"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Saml Oversavet Jagtgevær"] = { -- action name
				description = "Oversavet Jagtgevær", -- action description
				work = 80,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["oversavetjagtgeværframe"] = 1,
					["oversavetjagtgeværbarrel"] = 1,
					["oversavetjagtgeværtrigger"] = 1,
				}, -- items taken per unit
				products = {
					["wbody|WEAPON_SAWNOFFSHOTGUN"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Saml MicroSMG"] = { -- action name
				description = "MicroSMG", -- action description
				work = 80,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["microsmgframe"] = 1,
					["microsmgbarrel"] = 1,
					["microsmgtrigger"] = 1,
				}, -- items taken per unit
				products = {
					["wbody|WEAPON_MICROSMG"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			}
		}
	},
	-- Crafting Ammo
	{
		name = "Våben ammunition", -- menu name
		permissions = { "weapons.dealer" },
		r = 0, g = 255, b = 0, -- color
		max_units = 1000,
		units_per_minute = 50,
		x = 891.794921875, y = -3197.0197753906, z = -98.196197509766,
		radius = 1, height = 1.5, -- area
		recipes = {
			["Lav SNS Ammo"] = { -- action name
				description = "Laver SNS Ammo", -- action description
				work = 7,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["gunpowder"] = 4,
					["steel"] = 2,
				}, -- items taken per unit
				products = {
					["wammo|WEAPON_SNSPISTOL"] = 50
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Pistol Ammo"] = { -- action name
				description = "Laver Pistol Ammo", -- action description
				work = 8,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["gunpowder"] = 6,
					["steel"] = 3,
				}, -- items taken per unit
				products = {
					["wammo|WEAPON_PISTOL"] = 50
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Revolver Ammo"] = { -- action name
				description = "Laver Revolver Ammo", -- action description
				work = 8,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["gunpowder"] = 12,
					["steel"] = 6,
				}, -- items taken per unit
				products = {
					["wammo|WEAPON_REVOLVER"] = 30
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Heavy Pistol Ammo"] = { -- action name
				description = "Laver Pistol Ammo", -- action description
				work = 9,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["gunpowder"] = 8,
					["steel"] = 4,
				}, -- items taken per unit
				products = {
					["wammo|WEAPON_HEAVYPISTOL"] = 50
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Pistol .50 Ammo"] = { -- action name
				description = "Laver Pistol .50 Ammo", -- action description
				work = 10,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["gunpowder"] = 10,
					["steel"] = 5,
				}, -- items taken per unit
				products = {
					["wammo|WEAPON_PISTOL50"] = 50
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Ap Pistol Ammo"] = { -- action name
				description = "Laver Ap Pistol Ammo", -- action description
				work = 10,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["gunpowder"] = 10,
					["steel"] = 5,
					["stainless"] = 10,
					["guldbar"] = 1,
				}, -- items taken per unit
				products = {
					["wammo|WEAPON_APPISTOL"] = 50
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Tec9 Pistol Ammo"] = { -- action name
				description = "Laver Tec9 Pistol Ammo", -- action description
				work = 10,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["gunpowder"] = 10,
					["steel"] = 5,
					["stainless"] = 10,
					["guldbar"] = 1,
				}, -- items taken per unit
				products = {
					["wammo|WEAPON_MACHINEPISTOL"] = 50
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav Oversavet jagtgevær Shells"] = { -- action name
				description = "Laver Oversavet jagtgevær Shells", -- action description
				work = 10,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["gunpowder"] = 10,
					["steel"] = 5,
					["stainless"] = 10,
					["guldbar"] = 1,
				}, -- items taken per unit
				products = {
					["wammo|WEAPON_SAWNOFFSHOTGUN"] = 50
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav MicroSMG Skud"] = { -- action name
				description = "Laver MicroSMG Skud", -- action description
				work = 10,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["gunpowder"] = 10,
					["steel"] = 5,
					["stainless"] = 10,
					["guldbar"] = 1,
				}, -- items taken per unit
				products = {
					["wammo|WEAPON_MICROSMG"] = 50
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav sortkrudt"] = { -- action name
				description = "Laver sortkrudt", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["sulfur"] = 20,
					["kul"] = 10,
				}, -- items taken per unit
				products = {
					["gunpowder"] = 10,
				}, -- items given per unit
				aptitudes = { -- optional

				}
			}
		}
	},
	---------------------------------------LAV MOLOTOV----------------------------------------

	-- {
		-- name = "Lav Molotov Cocktail", -- menu name'
		-- permissions = {},
		-- r = 125, g = 125, b = 0, -- color
		-- max_units = 10,
		-- units_per_minute = 10,
		-- x = 1660.9838867188, y = 1.4596523046494, z = 166.11801147461,
		-- radius = 5, height = 1.5, -- area
		-- recipes = {
			-- ["Lav Molotovcocktail"] = { -- action name
				-- description = "Laver molotov", -- action description
				-- work = 5,
				-- in_money = 0, -- money taken per unit
				-- out_money = 0, -- money earned per unit
				-- reagents = {
					-- ["dirty_money"] = 22500,
					-- ["klud"] = 1,
					-- ["benzin"] = 1,
					-- ["flaske"] = 1
				-- }, -- items taken per unit
				-- products = {
					-- ["wbody|WEAPON_MOLOTOV"] = 1,
					-- ["wammo|WEAPON_MOLOTOV"] = 1
				-- }, -- items given per unit
				-- aptitudes = { -- optional

				-- }
			-- }
		-- }
	-- },
	---------------------------------------HAK ALUMINIUM--------------------------------------
	{
		name = "Aluminium", -- menu name
		permissions = { "miner.adgang" },
		r = 0, g = 255, b = 0, -- color
		max_units = 1000,
		units_per_minute = 50,
		x = 2997.33984375, y = 2751.2934570313, z = 44.133037567139,
		radius = 3, height = 1.5, -- area
		recipes = {
			["Hak aluminum oxide"] = { -- action name
				description = "Hakker aluminum oxide", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {

				}, -- items taken per unit
				products = {
					["aluminium"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			}
		}
	},
	{
		name = "Svovl", -- menu name
		permissions = { "miner.adgang" },
		r = 0, g = 255, b = 0, -- color
		max_units = 1000,
		units_per_minute = 50,
		x = 2980.8439941406, y = 2789.3623046875, z = 40.735729217529,
		radius = 3, height = 1.5, -- area
		recipes = {
			["Hak svovl"] = { -- action name
				description = "Hakker svovl", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {

				}, -- items taken per unit
				products = {
					["sulfur"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			}
		}
	},
	---------------------------------------HAK GULD---------------------------------------
	{
		name = "Guldore", -- menu name
		permissions = { "miner.adgang" },
		r = 0, g = 255, b = 0, -- color
		max_units = 1000,
		units_per_minute = 20,
		x = 2936.8337402344, y = 2744.1533203125, z = 43.41520690918,
		radius = 3, height = 1.5, -- area
		recipes = {
			["Hak Guldore"] = { -- action name
				description = "Hakker Guldore", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {

				}, -- items taken per unit
				products = {
					["guldmalm"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			}
		}
	},
	---------------------------------------Smelt metal---------------------------------------
	{
		name = "Smelt metal", -- menu name'
		permissions = { "miner.adgang" },
		r = 0, g = 255, b = 0, -- color
		max_units = 1000,
		units_per_minute = 20,
		x = 1087.8717041016, y = -2001.9053955078, z = 30.880701065063,
		radius = 5, height = 1.5, -- area
		recipes = {
			["Lav guldbar"] = { -- action name
				description = "Laver guldbar", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["guldmalm"] = 1
				}, -- items taken per unit
				products = {
					["guldbar"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav aluminium bar"] = { -- action name
				description = "Laver aluminium", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["aluminium"] = 2
				}, -- items taken per unit
				products = {
					["aluminiumbar"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Lav rustfri stål"] = { -- action name
				description = "Laver rustfri stål", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["steel"] = 1,
					["chromium"] = 1,
					["nickel"] = 1
				}, -- items taken per unit
				products = {
					["stainless"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			}
		}
	},
	---------------------------------------PLUK VINDRUER---------------------------------------
	{
		name = "Vindruer", -- menu name
		permissions = { "farmer.adgang" },
		r = 0, g = 255, b = 0, -- color
		max_units = 1000,
		units_per_minute = 50,
		x = -1687.8754882813, y = 1958.6784667969, z = 132.52528381348,
		radius = 5, height = 1.5, -- area
		recipes = {
			["Pluk Vindruer"] = { -- action name
				description = "Plukker vindruer", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
				}, -- items taken per unit
				products = {
					["vindruer"] = 5
				}, -- items given per unit
				aptitudes = { -- optional

				}
			}
		}
	},
	---------------------------------------SALG AF VINDRUER---------------------------------------
	{
		name = "Sælg Vindruer", -- menu name
		permissions = { "farmer.adgang" },
		r = 0, g = 255, b = 0, -- color
		max_units = 1000,
		units_per_minute = 50,
		x = 1087.6127929688, y = 6508.7119140625, z = 21.055513381958,
		radius = 5, height = 1.5, -- area
		recipes = {
			["Sælg Vindruer"] = { -- action name
				description = "Sælger vindruer", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 150, -- money earned per unit
				reagents = {
					["vindruer"] = 10
				}, -- items taken per unit
				products = {
				}, -- items given per unit
				aptitudes = { -- optional

				}
			}
		}
	},
	---------------------------------------SALG AF GULD---------------------------------------
	{
		name = "Sælg metal", -- menu name
		permissions = { "miner.adgang" },
		r = 0, g = 255, b = 0, -- color
		max_units = 2000,
		units_per_minute = 50,
		x = 107.78172302246, y = -934.28332519532, z = 29.774265289306,
		radius = 5, height = 1.5, -- area
		recipes = {
			["Sælg Guldbar"] = { -- action name
				description = "Sælger Guldbar", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 800, -- money earned per unit
				reagents = {
					["guldbar"] = 1
				}, -- items taken per unit
				products = {

				}, -- items given per unit
				aptitudes = { -- optional
				}
			},
			["Sælg aluminium bar"] = { -- action name
				description = "Sælger aluminium bar", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 250, -- money earned per unit
				reagents = {
					["aluminiumbar"] = 1
				}, -- items taken per unit
				products = {

				}, -- items given per unit
				aptitudes = { -- optional
				}
			},
			["Sælg rustfri stål"] = { -- action name
				description = "Sælger rustfri stål", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 1200, -- money earned per unit
				reagents = {
					["stainless"] = 1
				}, -- items taken per unit
				products = {

				}, -- items given per unit
				aptitudes = { -- optional
				}
			}
		}
	},

	---------------------------------------HAK KUL---------------------------------------
	{
		name = "Kul", -- menu name
		permissions = { "miner.adgang" },
		r = 0, g = 255, b = 0, -- color
		max_units = 1000,
		units_per_minute = 50,
		x = 2912.7639160156, y = 2784.1264648438, z = 44.68078994751,
		radius = 4, height = 1.5, -- area
		recipes = {
			["Hak Kul"] = { -- action name
				description = "Hakker Kul", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {

				}, -- items taken per unit
				products = {
					["kul"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			}
		}
	},
	---------------------------------------DIAMANT FREMSTILLING---------------------------------------
	{
		name = "Diamant fremstilling", -- menu name
		permissions = { "miner.adgang" },
		r = 0, g = 255, b = 0, -- color
		max_units = 1000,
		units_per_minute = 10,
		x = 1108.8762207032, y = -2007.5161132812, z = 30.903173446656,
		radius = 5, height = 1.5, -- area
		recipes = {
			["Lav Diamanter"] = { -- action name
				description = "Laver Diamanter", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["kul"] = 1
				}, -- items taken per unit
				products = {
					["diamant"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			}
		}
	},
	---------------------------------------HUG TRÆ---------------------------------------
	{
		name = "Hug træ", -- menu name
		permissions = { "skovhugger.adgang" },
		r = 0, g = 255, b = 0, -- color
		max_units = 1000,
		units_per_minute = 100,
		x = -1509.6667480469, y = 4481.4599609375, z = 18.720342636108,
		radius = 10, height = 1.5, -- area
		recipes = {
			["Hugger træer"] = { -- action name
				description = "Hugger træ", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
				}, -- items taken per unit
				products = {
					["træ"] = 1
				}, -- items given per unit
				aptitudes = { -- optional

				}
			}
		}
	},
	---------------------------------------LAV PLANKER---------------------------------------
	{
		name = "Skær Planker", -- menu name'
		permissions = { "skovhugger.adgang" },
		r = 0, g = 255, b = 0, -- color
		max_units = 1000,
		units_per_minute = 100,
		x = -525.5380859375, y = 5290.7846679688, z = 74.174438476563,
		radius = 7, height = 1.5, -- area
		recipes = {
			["Skær planker"] = { -- action name
				description = "Skær planker", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["træ"] = 1
				}, -- items taken per unit
				products = {
					["planke"] = 2
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
		}
	},
	---------------------------------------SÆLG PLANKER---------------------------------------
	{
		name = "Sælg Planker", -- menu name
		permissions = { "skovhugger.adgang" },
		r = 0, g = 255, b = 0, -- color
		max_units = 500,
		units_per_minute = 100,
		x = 2339.4294433594, y = 4884.4365234375, z = 41.810413360596,
		radius = 5, height = 1.5, -- area
		recipes = {
			["Sælg Planker"] = { -- action name
				description = "Sælg Planker", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 250, -- money earned per unit
				reagents = {
					["planke"] = 1
				}, -- items taken per unit
				products = {
				}, -- items given per unit
				aptitudes = { -- optional

				}
			}
		}
	},
	---------------------------------------SÆLG DIAMANTER---------------------------------------
	{
		name = "Sælg Diamanter", -- menu name
		permissions = { "miner.adgang" },
		r = 0, g = 255, b = 0, -- color
		max_units = 2000,
		units_per_minute = 50,
		x = -622.01745605468, y = -230.66743469238, z = 38.057067871094,
		radius = 5, height = 1.5, -- area
		recipes = {
			["Sælg Diamanter"] = { -- action name
				description = "Sælger Diamanter", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 500, -- money earned per unit
				reagents = {
					["diamant"] = 1
				}, -- items taken per unit
				products = {

				}, -- items given per unit
				aptitudes = { -- optional
				}
			}
		}
	},
	---------------------------------------HVIDVASKNING---------------------------------------
	{
		name = "Hvidvask", -- menu name
		permissions = {},
		r = 0, g = 255, b = 0, -- color
		max_units = 500,
		units_per_minute = 500,
		x = 1122.6550292969, y = -3196.8559570313, z = -40.396881103516,
		radius = 5, height = 1.5, -- area
		recipes = {
			["Hvidvask penge"] = { -- action name
				description = "Hvidvask 1000 sorte >> 750kr.", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 750, -- money earned per unit
				reagents = {
					["dirty_money"] = 1000
				}, -- items taken per unit
				products = {
				}, -- items given per unit
				aptitudes = { -- optional
				}
			}
		}
	},
	---------------------------------------GENBRUG MEKANIKER ROD---------------------------------------

	{
		name = "Genbrug mekaniker rod", -- menu name
		permissions = { "mekaniker.adgang" },
		r = 255, g = 255, b = 255, -- color
		max_units = 1000,
		units_per_minute = 1000,
		x = -467.84881591797, y = -1717.9417724609, z = 18.689134597778,
		radius = 2, height = 1.5, -- area
		recipes = {
			["Genbruger rod"] = { -- action name
				description = "Sælg dit mekaniker rod til fabrikken.", -- action description
				work = 0.2,
				in_money = 0, -- money taken per unit
				out_money = 175, -- money earned per unit
				reagents = {
					["rod"] = 1,
				}, -- items taken per unit
				products = {}, -- items given per unit},
				aptitudes = {}, -- optional = 1 -- "group.aptitude", give 1 exp per unit
			}
		}
	}, ---------------------------------------Tyvegods---------------------------------------

	{
		name = "Salg af tyvegods",
		permissions = { "indbrudstyv.adgang" },
		r = 0, g = 255, b = 0, -- color
		max_units = 2000,
		units_per_minute = 250,
		x = 754.37432861328, y = -3195.3090820313, z = 6.0731472969055,
		radius = 2, height = 1, -- area
		recipes = {
			["Sælg Tyvegods"] = { -- action name
				description = "Sælger tyvegods, til kriminelle", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["tyvegods"] = 1
				}, -- items taken per unit
				products = {
					["dirty_money"] = 4250,

				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Sælg rolex"] = { -- action name
				description = "Sælger tyvegods, til kriminelle", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["rolex"] = 1
				}, -- items taken per unit
				products = {
					["dirty_money"] = 12250,

				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Sælg guldklaede"] = { -- action name
				description = "Sælger tyvegods, til kriminelle", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["guldklaede"] = 1
				}, -- items taken per unit
				products = {
					["dirty_money"] = 12250,

				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Sælg gucci"] = { -- action name
				description = "Sælger tyvegods, til kriminelle", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["gucci"] = 1
				}, -- items taken per unit
				products = {
					["dirty_money"] = 12250,

				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
		}
	},
	-------------------------------Drug Dealer Transformers-----------------------------
	{
		name = "Salg af stoffer",
		permissions = { "drug.dealer" },
		r = 0, g = 255, b = 0, -- color
		max_units = 2000,
		units_per_minute = 250,
		x = -1781.5126953125, y = 3101.9541015625, z = 32.807518005371,
		radius = 4, height = 1, -- area

		recipes = {
			["Sælg Amfetamin"] = { -- action name
				description = "Sælger amfetamin, til kriminelle", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["amfetamin"] = 200
				}, -- items taken per unit
				products = {
					["dirty_money"] = 400000

				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Sælg Kokain"] = { -- action name
				description = "Sælger Kokain, til kriminelle", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["kokain"] = 3000
				}, -- items taken per unit
				products = {
					["dirty_money"] = 1575000

				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Sælg LSD"] = { -- action name
				description = "Sælger LSD", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["lsd"] = 3000
				}, -- items taken per unit
				products = {
					["dirty_money"] = 1650000
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Sælg Tørt Ketamin"] = { -- action name
				description = "Sælger Tørret Ketamin", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["tøret_ketamin"] = 3000
				}, -- items taken per unit
				products = {
					["dirty_money"] = 2100000
				}, -- items given per unit
				aptitudes = { -- optional

				}
			},
			["Sælg Skunk"] = { -- action name
				description = "Sælger Skunk til kriminelle", -- action description
				work = 1,
				in_money = 0, -- money taken per unit
				out_money = 0, -- money earned per unit
				reagents = {
					["skunk"] = 500
				}, -- items taken per unit
				products = {
					["dirty_money"] = 212500
				}, -- items given per unit
				aptitudes = { -- optional

				}
			}

		}
	},

	-- {
	-- 	name = "Træn forsatan", -- menu name
	-- 	permissions = {},
	-- 	r = 0, g = 255, b = 0, -- color
	-- 	max_units = 1000,
	-- 	units_per_minute = 1000,
	-- 	x = 1420.1644287109, y = 1109.9176025391, z = 114.47906494141,
	-- 	radius = 2, height = 1.5, -- area
	-- 	recipes = {
	-- 		["Træn"] = { -- action name
	-- 			description = "Tag en håndvægt og træn.", -- action description
	-- 			work = 0.2,
	-- 			in_money = 0, -- money taken per unit
	-- 			out_money = 0, -- money earned per unit
	-- 			reagents = {}, -- items taken per unit
	-- 			products = {}, -- items given per unit},
	-- 			aptitudes={ -- optional
	-- 				["physical.strength"] = 1 -- "group.aptitude", give 1 exp per unit
	-- 			}
	-- 		}
	-- 	}
	-- }
}

-- define transformers randomly placed on the map
cfg.hidden_transformers = {

		--FITNESS Cali
		["Cali"] = {
			def = {
				name="Fitness", -- menu name
				permissions = {}, -- you can add permissions
				r=0,g=200,b=0, -- color
				max_units=320,
				units_per_minute=100,
				x=0,y=0,z=0, -- pos
				radius=9.5, height=8.5, -- area
				blip=false, -- Should transformer have blip
				blipid="fitness", -- Unique id for blip
				blipicon=311,
				blipcolor=17,
				marker=false,
				markerid=0,
				markerdata={0,0,0,0,0,0,0,0}, -- sx,sy,sz,r,g,b,a,vis_distance
				recipes = {
					["Træn styrke"] = { -- action name
						description="Forsøg din styrke.", -- action description
						work=6,
						in_money=0, -- money taken per unit
						out_money=0, -- money earned per unit
						reagents={}, -- items taken per unit
						products={}, -- items given per unit
						aptitudes={ -- optional
							["physical.strength"] = 1 -- "group.aptitude", give 5 exp per unit
						}
					}
				}
			},
			positions = {
				{1422.6595458984,1110.1208496094,114.47380065918}
			},
			duration = 90 -- 5 days (time before switching position, min 5 mins.)
		},
			--FITNESS Polo
			["Polo"] = {
				def = {
					name="Fitness", -- menu name
					permissions = {}, -- you can add permissions
					r=0,g=200,b=0, -- color
					max_units=320,
					units_per_minute=100,
					x=0,y=0,z=0, -- pos
					radius=9.5, height=8.5, -- area
					blip=false, -- Should transformer have blip
					blipid="fitness", -- Unique id for blip
					blipicon=311,
					blipcolor=17,
					marker=false,
					markerid=0,
					markerdata={0,0,0,0,0,0,0,0}, -- sx,sy,sz,r,g,b,a,vis_distance
					recipes = {
						["Træn styrke"] = { -- action name
							description="Forsøg din styrke.", -- action description
							work=6,
							in_money=0, -- money taken per unit
							out_money=0, -- money earned per unit
							reagents={}, -- items taken per unit
							products={}, -- items given per unit
							aptitudes={ -- optional
								["physical.strength"] = 1 -- "group.aptitude", give 5 exp per unit
							}
						}
					}
				},
				positions = {
					{-772.95239257813,140.91148376465,67.474136352539}
				},
				duration = 90 -- 5 days (time before switching position, min 5 mins.)
			},

		--FITNESS Drugkartel
		["Fitness"] = {
			def = {
				name="Fitness", -- menu name
				permissions = {}, -- you can add permissions
				r=0,g=200,b=0, -- color
				max_units=320,
				units_per_minute=100,
				x=0,y=0,z=0, -- pos
				radius=9.5, height=8.5, -- area
				blip=false, -- Should transformer have blip
				blipid="fitness", -- Unique id for blip
				blipicon=311,
				blipcolor=17,
				marker=false,
				markerid=0,
				markerdata={0,0,0,0,0,0,0,0}, -- sx,sy,sz,r,g,b,a,vis_distance
				recipes = {
					["Træn styrke"] = { -- action name
						description="Forsøg din styrke.", -- action description
						work=2,
						in_money=0, -- money taken per unit
						out_money=0, -- money earned per unit
						reagents={}, -- items taken per unit
						products={}, -- items given per unit
						aptitudes={ -- optional
							["physical.strength"] = 5 -- "group.aptitude", give 5 exp per unit
						}
					}
				}
			},
			positions = {
				{-1801.5456542969,3087.8645019531,32.841854095459}
			},
			duration = 90 -- 5 days (time before switching position, min 5 mins.)
		},


	---------------------------------------HØST SVAMPE---------------------------------------
	["Svampe"] = {
		def = {
			name="Høst Meldrøje Svampe", -- menu name
			emote = "PROP_HUMAN_PARKING_METER",
			permissions = {"producent.adgang"}, -- you can add permissions
			r=0,g=200,b=0, -- color
			max_units=300,
			units_per_minute=100,
			x=0,y=0,z=0, -- pos
			radius=4, height=1.5, -- area
			blip=false, -- Should transformer have blip
			blipid="treepark", -- Unique id for blip
			blipicon=238,
			blipcolor=69,
			marker=false,
			markerid=0,
			markerdata={0,0,0,0,0,0,0,0}, -- sx,sy,sz,r,g,b,a,vis_distance
			recipes = {
				["Høst Svampe"] = { -- action name
					description="Høster Svampe", -- action description
					work=1,
					in_money=0, -- money taken per unit
					out_money=0, -- money earned per unit
					reagents={}, -- items taken per unit
					products={ -- items given per unit
						["svampe"] = 1,
					}
				}
			}
		},
		positions = {
			{2821.0603027344,-742.73541259766,1.9104455709457}
		},
		duration = 65 -- 5 days (time before switching position, min 5 mins.)
	},
	---------------------------------------Udvind Syre---------------------------------------
	["Udvind Syre"] = {
		def = {
			name="Udvind Syre", -- menu name
			emote = "PROP_HUMAN_PARKING_METER",
			permissions = {"producent.adgang"}, -- you can add permissions
			r=0,g=200,b=0, -- color
			max_units=300,
			units_per_minute=100,
			x=0,y=0,z=0, -- pos
			radius=4, height=1.5, -- area
			blip=false, -- Should transformer have blip
			blipid="treepark", -- Unique id for blip
			blipicon=238,
			blipcolor=69,
			marker=false,
			markerid=0,
			markerdata={0,0,0,0,0,0,0,0}, -- sx,sy,sz,r,g,b,a,vis_distance
			recipes = {
				["Udvind Syre"] = { -- action name
					description="Udvind Syre", -- action description
					work=1,
					in_money=0, -- money taken per unit
					out_money=0, -- money earned per unit
					reagents={
						["svampe"] = 2,
						["water"] = 1,
					}, -- items taken per unit
					products={ -- items given per unit
						["syre"] = 2,
					}
				}
			}
		},
		positions = {
			{753.87609863281,4173.5288085938,40.709331512451}
		},
		duration = 65 -- 5 days (time before switching position, min 5 mins.)
	},
	-----------------------------------LSD----------------------------------------------------
	["Fremstil LSD"] = {
		def = {
			name="Fremstil LSD", -- menu name
			emote = "PROP_HUMAN_PARKING_METER",
			permissions = {"kemiker.adgang"}, -- you can add permissions
			r=0,g=200,b=0, -- color
			max_units=300,
			units_per_minute=100,
			x=0,y=0,z=0, -- pos
			radius=4, height=1.5, -- area
			blip=false, -- Should transformer have blip
			blipid="treepark", -- Unique id for blip
			blipicon=238,
			blipcolor=69,
			marker=false,
			markerid=0,
			markerdata={0,0,0,0,0,0,0,0}, -- sx,sy,sz,r,g,b,a,vis_distance
			recipes = {
				["Fremstil LSD"] = { -- action name
					description="Fremstil LSD", -- action description
					work=1,
					in_money=0, -- money taken per unit
					out_money=0, -- money earned per unit
					reagents={
						["syre"] = 1,
						["gelatine"] = 1
					}, -- items taken per unit
					products={
						["lsd"] = 1
					}, -- items given per unit
				}
			}
		},
		positions = {
			{-1367.7728271484,-318.93832397461,39.505001068115}
		},
		duration = 65 -- 5 days (time before switching position, min 5 mins.)
	},
	---------------------------------------KOKAIN MARK---------------------------------------
	["KokainFarm"] = {
		def = {
			name="Kokain mark", -- menu name
			emote = "PROP_HUMAN_PARKING_METER",
			permissions = {"producent.adgang"}, -- you can add permissions
			r=0,g=200,b=0, -- color
			max_units=300,
			units_per_minute=100,
			x=0,y=0,z=0, -- pos
			radius=6, height=1.5, -- area
			blip=false, -- Should transformer have blip
			blipid="treepark", -- Unique id for blip
			blipicon=238,
			blipcolor=69,
			marker=false,
			markerid=0,
			markerdata={0,0,0,0,0,0,0,0}, -- sx,sy,sz,r,g,b,a,vis_distance
			recipes = {
				["Høst Kokain"] = { -- action name
					description="Høster Kokain, kan bruges til at lave kokain", -- action description
					work=2,
					in_money=0, -- money taken per unit
					out_money=0, -- money earned per unit
					reagents={}, -- items taken per unit
					products={ -- items given per unit
						["kokainblade"] = 1,
					}
				}
			}
		},
		positions = {
			{1906.1243896484,4888.6567382813,47.415576934814}
		},
		duration = 65 -- 5 days (time before switching position, min 5 mins.)
	},
	---------------------------------------stjæl Ketamin---------------------------------------
	["stealketamin"] = {
		def = {
			name="Stjæl Ketamin", -- menu name
			emote = "PROP_HUMAN_PARKING_METER",
			permissions = {"producent.adgang"}, -- you can add permissions
			r=0,g=200,b=0, -- color
			max_units=300,
			units_per_minute=100,
			x=0,y=0,z=0, -- pos
			radius=6, height=1.5, -- area
			blip=false, -- Should transformer have blip
			blipid="treepark", -- Unique id for blip
			blipicon=238,
			blipcolor=69,
			marker=false,
			markerid=0,
			markerdata={0,0,0,0,0,0,0,0}, -- sx,sy,sz,r,g,b,a,vis_distance
			recipes = {
				["Stjæl Ketamin"] = { -- action name
					description="Stjæl ketamin - kan bruges til at lave tørret ketamin", -- action description
					work=2,
					in_money=0, -- money taken per unit
					out_money=0, -- money earned per unit
					reagents={
						["regentsglas"]=1,
					}, -- items taken per unit
					products={ -- items given per unit
						["ketamin"] = 1,
					}
				}
			}
		},
		positions = {
			{-310.30453491211,-1353.5920410156,28.774549484253}
		},
		duration = 65 -- 5 days (time before switching position, min 5 mins.)
	},
	---------------------------------------HAMPBLADE HØSTNING---------------------------------------
	["SkunkFarm"] = {
		def = {
			name="Høst Hampblade", -- menu name
			emote = "PROP_HUMAN_PARKING_METER",
			permissions = {"producent.adgang"}, -- you can add permissions
			r=0,g=200,b=0, -- color
			max_units=300,
			units_per_minute=100,
			x=0,y=0,z=0, -- pos
			radius=5, height=1.5, -- area
			blip=false, -- Should transformer have blip
			blipid="treepark", -- Unique id for blip
			blipicon=140,
			blipcolor=69,
			marker=false,
			markerid=0,
			markerdata={0,0,0,0,0,0,0,0}, -- sx,sy,sz,r,g,b,a,vis_distance
			recipes = {
				["Høst Hampblade"] = { -- action name
					description="Høster hampblade, kan bruge til at lave skunk!", -- action description
					work=1,
					in_money=0, -- money taken per unit
					out_money=0, -- money earned per unit
					reagents={}, -- items taken per unit
					products={ -- items given per unit
						["hampblade"] = 1,
					}
				}
			}
		},
		positions = {
			{2224.5012207031,5576.9936523438,53.853881835938}
		},
		duration = 65 -- 5 days (time before switching position, min 5 mins.)
	},
	---------------------------------------SKUNK TØRRING---------------------------------------
	["SkunkTørring"] = {
		def = {
			name="SkunkTørring", -- menu name
			emote = "PROP_HUMAN_PARKING_METER",
			permissions = {"kemiker.adgang"}, -- you can add permissions
			r=0,g=200,b=0, -- color
			max_units=500,
			units_per_minute=100,
			x=0,y=0,z=0, -- pos
			radius=8, height=1.5, -- area
			blip=false, -- Should transformer have blip
			blipid="treepark", -- Unique id for blip
			blipicon=238,
			blipcolor=69,
			marker=false,
			markerid=0,
			markerdata={0,0,0,0,0,0,0,0}, -- sx,sy,sz,r,g,b,a,vis_distance
			recipes = {
				["Tørre Skunk"] = { -- action name
					description="Tørring af skunk, sælg det videre!", -- action description
					work=1,
					in_money=0, -- money taken per unit
					out_money=0, -- money earned per unit
					reagents={
						["hampblade"] = 1
					}, -- items taken per unit
					products={ -- items given per unit
						["skunk"] = 1,
					}
				}
			}
		},
		positions = {
			{1346.07421875,4386.3251953125,44.34375}
		},
		duration = 65 -- 5 days (time before switching position, min 5 mins.)
	},
	---------------------------------------KOKAIN FREMSTILLING---------------------------------------
	["KokainFremstilling"] = {
		def = {
			name="Kokain fremstilling", -- menu name
			emote = "PROP_HUMAN_PARKING_METER",
			permissions = {"kemiker.adgang"}, -- you can add permissions
			r=0,g=200,b=0, -- color
			max_units=1000,
			units_per_minute=100,
			x=0,y=0,z=0, -- pos
			radius=5, height=1.5, -- area
			blip=false, -- Should transformer have blip
			blipid="treepark", -- Unique id for blip
			blipicon=238,
			blipcolor=69,
			marker=false,
			markerid=0,
			markerdata={0,0,0,0,0,0,0,0}, -- sx,sy,sz,r,g,b,a,vis_distance
			recipes = {
				["Lav Kokain"] = { -- action name
					description="Fremstiller kokain, til salg!", -- action description
					work=1,
					in_money=0, -- money taken per unit
					out_money=0, -- money earned per unit
					reagents={
						["kokainblade"] = 1
					}, -- items taken per unit
					products={ -- items given per unit
						["kokain"] = 1,
					}
				}
			}
		},
		positions = {
			{-332.70574951172,-2445.3996582031,7.3580961227417}
		},
		duration = 65 -- 5 days (time before switching position, min 5 mins.)
	},
	---------------------------------------ketamintøring---------------------------------------
	["ketamintøring"] = {
		def = {
			name="ketamin tøring", -- menu name
			emote = "PROP_HUMAN_PARKING_METER",
			permissions = {"kemiker.adgang"}, -- you can add permissions
			r=0,g=200,b=0, -- color
			max_units=1000,
			units_per_minute=1000,
			x=0,y=0,z=0, -- pos
			radius=3, height=2, -- area
			blip=false, -- Should transformer have blip
			blipid="treepark", -- Unique id for blip
			blipicon=238,
			blipcolor=69,
			marker=false,
			markerid=0,
			markerdata={0,0,0,0,0,0,0,0}, -- sx,sy,sz,r,g,b,a,vis_distance
			recipes = {
				["Tørre ketamin"] = { -- action name
					description="Tørre ketamin", -- action description
					work=2,
					in_money=0, -- money taken per unit
					out_money=0, -- money earned per unit
					reagents={
						["sølvpapir"]=1,
						["ketamin"]=1,
					}, -- items taken per unit
					products={ -- items given per unit
						["tøret_ketamin"] = 1,
					}
				}
			}
		},
		positions = {
			{3614.8466796875,5025.34375,11.346571922302}
		},
		duration = 65 -- 5 days (time before switching position, min 5 mins.)
	},
	---------------------------------------PRODUCER AMFETAMIN---------------------------------------
	["ProducerAmfetamin"] = {
		def = {
			name="Producer amfetamin", -- menu name
			emote = "PROP_HUMAN_PARKING_METER",
			permissions = {"kemiker.adgang"}, -- you can add permissions
			r=0,g=200,b=0, -- color
			max_units=1000,
			units_per_minute=1000,
			x=0,y=0,z=0, -- pos
			radius=3, height=2, -- area
			blip=false, -- Should transformer have blip
			blipid="treepark", -- Unique id for blip
			blipicon=238,
			blipcolor=69,
			marker=false,
			markerid=0,
			markerdata={0,0,0,0,0,0,0,0}, -- sx,sy,sz,r,g,b,a,vis_distance
			recipes = {
				["Producer"] = { -- action name
					description="Producer amfetamin", -- action description
					work=2,
					in_money=0, -- money taken per unit
					out_money=0, -- money earned per unit
					reagents={
						["naoh"]=1,
						["p2np"]=1,
						["isopropanol"]=1,
						["sølvpapir"]=1,
						["eddikesyre"]=1,
						["h2so4"]=1,
					}, -- items taken per unit
					products={ -- items given per unit
						["amfetamin"] = 1,
					}
				}
			}
		},
		positions = {
			{1389.396484375,3604.5412597656,38.941925048828}
		},
		duration = 65 -- 5 days (time before switching position, min 5 mins.)
	},
	---------------------------------------PRODUCER NAOH---------------------------------------
	["ProducerNaoh"] = {
		def = {
			name="Producer NaOH", -- menu name
			emote = "PROP_HUMAN_PARKING_METER",
			permissions = {"producent.adgang"}, -- you can add permissions
			r=0,g=200,b=0, -- color
			max_units=1000,
			units_per_minute=1000,
			radius=3, height=2, -- area
			blip=false, -- Should transformer have blip
			blipid="treepark", -- Unique id for blip
			blipicon=238,
			blipcolor=69,
			marker=false,
			markerid=0,
			markerdata={0,0,0,0,0,0,0,0}, -- sx,sy,sz,r,g,b,a,vis_distance
			recipes = {
				["NaOH"] = { -- action name
					description="Producer NaOH", -- action description
					work=2,
					in_money=0, -- money taken per unit
					out_money=0, -- money earned per unit
					reagents={
						["regentsglas"]=1,
					}, -- items taken per unit
					products={ -- items given per unit
						["naoh"] = 1,
					}
				}
			}
		},
		positions = {
			{3560.1411132813,3671.775390625,28.121873855591}
		},
		duration = 65 -- min 5 minuttes
	},
	--------------------------Åbne Salgssteder---------------------------------------
	["Sælg LSD"] = {
		def = {
			name="Sælg LSD", -- menu name
			emote = "PROP_HUMAN_PARKING_METER",
			permissions = {"pusher.adgang"}, -- you can add permissions
			r=0,g=200,b=0, -- color
			max_units=1000,
			units_per_minute=1000,
			radius=3, height=2, -- area
			blip=false, -- Should transformer have blip
			blipid="treepark", -- Unique id for blip
			blipicon=51,
			blipcolor=69,
			marker=false,
			markerid=0,
			markerdata={0,0,0,0,0,0,0,0}, -- sx,sy,sz,r,g,b,a,vis_distance
			recipes = {
				["Sælg LSD"] = { -- action name
					description="Sælg LSD", -- action description
					work=1,
					in_money=0, -- money taken per unit
					out_money=0, -- money earned per unit
					reagents={
						["lsd"] = 1,
					}, -- items taken per unit
					products={ -- items given per unit
						["dirty_money"] = 450,
					}
				}
			}
		},
		positions = {
			{2330.0666503906,2571.935546875,46.679004669189}
		},
		duration = 65 -- min 5 minuttes
	},
	["Sælg Kokain"] = {
		def = {
			name="Sælg Kokain", -- menu name
			emote = "PROP_HUMAN_PARKING_METER",
			permissions = {"pusher.adgang"}, -- you can add permissions
			r=0,g=200,b=0, -- color
			max_units=1000,
			units_per_minute=1000,
			radius=3, height=2, -- area
			blip=false, -- Should transformer have blip
			blipid="treepark", -- Unique id for blip
			blipicon=403,
			blipcolor=69,
			marker=false,
			markerid=0,
			markerdata={0,0,0,0,0,0,0,0}, -- sx,sy,sz,r,g,b,a,vis_distance
			recipes = {
				["Sælg Kokain"] = { -- action name
					description="Sælg Kokain", -- action description
					work=1,
					in_money=0, -- money taken per unit
					out_money=0, -- money earned per unit
					reagents={
						["kokain"] = 1,
					}, -- items taken per unit
					products={ -- items given per unit
						["dirty_money"] = 475,
					}
				}
			}
		},
		positions = {
			{1442.4943847656,6333.3359375,23.900091171265}
		},
		duration = 65 -- min 5 minuttes
	},

	["Sælg Skunk"] = {
		def = {
			name="Sælg Skunk", -- menu name
			emote = "PROP_HUMAN_PARKING_METER",
			permissions = {"pusher.adgang"}, -- you can add permissions
			r=0,g=200,b=0, -- color
			max_units=1000,
			units_per_minute=1000,
			radius=3, height=2, -- area
			blip=false, -- Should transformer have blip
			blipid="treepark", -- Unique id for blip
			blipicon=238,
			blipcolor=69,
			marker=false,
			markerid=0,
			markerdata={0,0,0,0,0,0,0,0}, -- sx,sy,sz,r,g,b,a,vis_distance
			recipes = {
				["Sælg Skunk"] = { -- action name
					description="Sælg Skunk", -- action description
					work=1,
					in_money=0, -- money taken per unit
					out_money=0, -- money earned per unit
					reagents={
						["skunk"] = 1,
					}, -- items taken per unit
					products={ -- items given per unit
						["dirty_money"] = 275,
					}
				}
			}
		},
		positions = {
			{1668.1030273438,4970.6967773438,42.270412445068}
		},
		duration = 65 -- min 5 minuttes
	},
	["Sælg Amfetamin"] = {
		def = {
			name="Sælg Amfetamin", -- menu name
			emote = "PROP_HUMAN_PARKING_METER",
			permissions = {"pusher.adgang"}, -- you can add permissions
			r=0,g=200,b=0, -- color
			max_units=1000,
			units_per_minute=1000,
			radius=5, height=2, -- area
			blip=false, -- Should transformer have blip
			blipid="treepark", -- Unique id for blip
			blipicon=403,
			blipcolor=69,
			marker=false,
			markerid=0,
			markerdata={0,0,0,0,0,0,0,0}, -- sx,sy,sz,r,g,b,a,vis_distance
			recipes = {
				["Sælg Amfetamin"] = { -- action name
					description="Sælg Amfetamin", -- action description
					work=1,
					in_money=0, -- money taken per unit
					out_money=0, -- money earned per unit
					reagents={
						["amfetamin"] = 1,
					}, -- items taken per unit
					products={ -- items given per unit
						["dirty_money"] = 1600,
					}
				}
			}
		},
		positions = {
			{-34.014793395996,1943.3072509766,190.18603515625}
		},
		duration = 65 -- min 5 minuttes
	},

	["Sælg Tørt Ketamin"] = {
		def = {
			name="Tørt Ketamin", -- menu name
			emote = "PROP_HUMAN_PARKING_METER",
			permissions = {"pusher.adgang"}, -- you can add permissions
			r=0,g=200,b=0, -- color
			max_units=1000,
			units_per_minute=1000,
			radius=5, height=2, -- area
			blip=false, -- Should transformer have blip
			blipid="treepark", -- Unique id for blip
			blipicon=403,
			blipcolor=69,
			marker=false,
			markerid=0,
			markerdata={0,0,0,0,0,0,0,0}, -- sx,sy,sz,r,g,b,a,vis_distance
			recipes = {
				["Tøret Ketamin"] = { -- action name
					description="Tøret Ketamin", -- action description
					work=1,
					in_money=0, -- money taken per unit
					out_money=0, -- money earned per unit
					reagents={
						["tøret_ketamin"] = 1,
					}, -- items taken per unit
					products={ -- items given per unit
						["dirty_money"] = 625,
					}
				}
			}
		},
		positions = {
			{2499.6616210938,-332.72909545898,92.992820739746}
		},
		duration = 65 -- min 5 minuttes
	},

}

-- time in minutes before hidden transformers are relocated (min is 5 minutes)
cfg.hidden_transformer_duration = 5

-- configure the information reseller (can sell hidden transformers positions)
cfg.informer = {
	infos = {},
	positions = {},
	interval = 60, -- interval in minutes for the reseller respawn
	duration = 10, -- duration in minutes of the spawned reseller
	blipid = 133,
	blipcolor = 2
}

return cfg
