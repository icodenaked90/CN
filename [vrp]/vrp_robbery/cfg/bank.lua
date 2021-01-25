--[[
    FiveM Scripts
    Copyright C 2018  Sighmir

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published
    by the Free Software Foundation, either version 3 of the License, or
    at your option any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]

cfg = {}

cfg.blips = false -- blips/markeringer på mappet.

cfg.seconds = 600 -- sekunder at røve i. (10 minutter)

cfg.cooldown = 3600*2 -- tid mellem røverierne i banken. (Én time)

cfg.cops = 4 -- minimum betjente på arbejde.
cfg.permission = "bank.police" -- tilladelse givet til politiet.

cfg.banks = { -- liste af bankene
	["Midtby Bank"] = {
		mincops = 3,
		position = { ['x'] = 147.0697479248, ['y'] = -1045.05859375, ['z'] = 29.368026733398 },
		reward = 125000,
		nameofbank = "Midtby Bank",
		lastrobbed = 0,
		seconds = 600,
		type = "bank",
	},
	["Nordea Bank"] = {
		mincops = 3,
		position = { ['x'] = -2957.6674804688, ['y'] = 481.45776367188, ['z'] = 15.697026252747 },
		reward = 125000,
		nameofbank = "Nordea Bank (Vestlig Motorvej)",
		lastrobbed = 0,
		seconds = 600,
		type = "bank",
	},
	["Ringkjøbing LandboBank"] = {
		mincops = 3,
		position = { ['x'] = 1177.3599853516, ['y'] = 2711.8149414063, ['z'] = 38.097747802734 },
		reward = 125000,
		nameofbank = "Ringkjøbing LandboBank (Sandy - The Motor Motel)",
		lastrobbed = 0,
		seconds = 600,
		type = "bank",
	},
	["Jyske Bank"] = {
		mincops = 3,
		position = { ['x'] = -107.06505584717, ['y'] = 6474.8012695313, ['z'] = 31.62670135498 },
		reward = 125000,
		nameofbank = "Jyske Bank (Paleto Bay)",
		lastrobbed = 0,
		seconds = 600,
		type = "bank",
	},
	["Sydbank"] = {
		mincops = 3,
		position = { ['x'] = -1212.2568359375, ['y'] = -336.128295898438, ['z'] = 36.7907638549805 },
		reward = 125000,
		nameofbank = "Sydbank (Rockford Hills - Vestlig Los Santos)",
		lastrobbed = 0,
		seconds = 600,
		type = "bank",
	},
	["Alm. Brand Bank"] = {
		mincops = 3,
		position = { ['x'] = 309.967376708984, ['y'] = -283.033660888672, ['z'] = 53.1745223999023 },
		reward = 125000,
		nameofbank = "Alm. Brand Bank (Alta - Nord for LS Midtby)",
		lastrobbed = 0,
		seconds = 600,
		type = "bank",
	},
	["Danmarks Nationalbank"] = {
		mincops = 4,
		position = { ['x'] = 255.001098632813, ['y'] = 225.855895996094, ['z'] = 101.005694274902 },
		reward = 200000,
		nameofbank = "Danmarks Nationalbank (Downtown Vinewood)",
		lastrobbed = 0,
		seconds = 600,
		type = "bank",
	},
	["Shell Tank 1"] = {
		mincops = 1,
		position = { ['x'] = -42.901710510254, ['y'] = -1749.4293212891, ['z'] = 29.406736373901 },
		reward = 5000,
		nameofbank = "Shell Tank ",
		lastrobbed = 0,
		seconds = 180,
		type = "kiosk",
	},
	["Shell Tank 2"] = {
		mincops = 1,
		position = { ['x'] = 29.376934051514, ['y'] = -1339.7525634766, ['z'] = 29.404136657715 },
		reward = 5000,
		nameofbank = "Shell Tank ",
		lastrobbed = 0,
		seconds = 180,
		type = "kiosk",
	},
	["Shell Tank 3"] = {
		mincops = 1,
		position = { ['x'] = 1130.8333740234, ['y'] = -982.91998291016, ['z'] = 46.359111785889 },
		reward = 5000,
		nameofbank = "Shell Tank ",
		lastrobbed = 0,
		seconds = 180,
		type = "kiosk",
	},
	["Shell Tank 4"] = {
		mincops = 1,
		position = { ['x'] = -708.46624755859, ['y'] = -905.57385253906, ['z'] = 19.083040237427 },
		reward = 5000,
		nameofbank = "Shell Tank ",
		lastrobbed = 0,
		seconds = 180,
		type = "kiosk",
	},
	["Shell Tank 5"] = {
		mincops = 1,
		position = { ['x'] = -1219.5961914063, ['y'] = -911.41174316406, ['z'] = 12.331303596497 },
		reward = 5000,
		nameofbank = "Shell Tank ",
		lastrobbed = 0,
		seconds = 180,
		type = "kiosk",
	},
	["Shell Tank 6"] = {
		mincops = 1,
		position = { ['x'] = -1483.6163330078, ['y'] = -375.80834960938, ['z'] = 40.142009735107 },
		reward = 5000,
		nameofbank = "Shell Tank ",
		lastrobbed = 0,
		seconds = 180,
		type = "kiosk",
	},
	["Shell Tank 7"] = {
		mincops = 1,
		position = { ['x'] = 379.40798950195, ['y'] = 332.18377685547, ['z'] = 103.69721221924 },
		reward = 5000,
		nameofbank = "Shell Tank ",
		lastrobbed = 0,
		seconds = 180,
		type = "kiosk",
	},
	["Shell Tank 8"] = {
		mincops = 1,
		position = { ['x'] = 1160.6005859375, ['y'] = -314.09506225586, ['z'] = 69.184478759766 },
		reward = 5000,
		nameofbank = "Shell Tank ",
		lastrobbed = 0,
		seconds = 180,
		type = "kiosk",
	},
	["Shell Tank 9"] = {
		mincops = 1,
		position = { ['x'] = 2550.0698242188, ['y'] = 2550.0698242188, ['z'] = 108.47772216797 },
		reward = 5000,
		nameofbank = "Shell Tank ",
		lastrobbed = 0,
		seconds = 180,
		type = "kiosk",
	},
	["Shell Tank 10"] = {
		mincops = 1,
		position = { ['x'] = 2550.0698242188, ['y'] = 2550.0698242188, ['z'] = 108.47772216797 },
		reward = 5000,
		nameofbank = "Shell Tank ",
		lastrobbed = 0,
		seconds = 180,
		type = "kiosk",
	},
	["Shell Tank 11"] = {
		mincops = 1,
		position = { ['x'] = 2673.8884277344, ['y'] = 3286.3527832031, ['z'] = 5.11608505249 },
		reward = 5000,
		nameofbank = "Shell Tank ",
		lastrobbed = 0,
		seconds = 180,
		type = "kiosk",
	},
	["Shell Tank 12"] = {
		mincops = 1,
		position = { ['x'] = 1166.5648193359, ['y'] = 2714.63671875, ['z'] = 38.040500640869 },
		reward = 5000,
		nameofbank = "Shell Tank ",
		lastrobbed = 0,
		seconds = 180,
		type = "kiosk",
	},
	["Shell Tank 13"] = {
		mincops = 1,
		position = { ['x'] = 546.89868164063, ['y'] = 2663.2734375, ['z'] = 42.022880554199 },
		reward = 5000,
		nameofbank = "Shell Tank ",
		lastrobbed = 0,
		seconds = 180,
		type = "kiosk",
	},
	["Shell Tank 14"] = {
		mincops = 1,
		position = { ['x'] = -1828.6303710938, ['y'] = 799.21612548828, ['z'] = 138.46220397949 },
		reward = 5000,
		nameofbank = "Shell Tank ",
		lastrobbed = 0,
		seconds = 180,
		type = "kiosk",
	},
	["Shell Tank 15"] = {
		mincops = 1,
		position = { ['x'] = -2962.6787109375, ['y'] = 390.04116821289, ['z'] = 14.937920570374 },
		reward = 5000,
		nameofbank = "Shell Tank ",
		lastrobbed = 0,
		seconds = 180,
		type = "kiosk",
	},
	["Shell Tank 16"] = {
		mincops = 1,
		position = { ['x'] = -3047.3984375, ['y'] = 587.32995605469, ['z'] = 7.7134771347046 },
		reward = 5000,
		nameofbank = "Shell Tank ",
		lastrobbed = 0,
		seconds = 180,
		type = "kiosk",
	},
	["Shell Tank 17"] = {
		mincops = 1,
		position = { ['x'] = -3248.9064941406, ['y'] = 1006.0281982422, ['z'] = 12.65075302124 },
		reward = 5000,
		nameofbank = "Shell Tank ",
		lastrobbed = 0,
		seconds = 180,
		type = "kiosk",
	},
	["Shell Tank 18"] = {
		mincops = 1,
		position = { ['x'] = 1706.5925292969, ['y'] = 4920.0698242188, ['z'] = 41.871520996094 },
		reward = 5000,
		nameofbank = "Shell Tank ",
		lastrobbed = 0,
		seconds = 180,
		type = "kiosk",
	},
	["Shell Tank 19"] = {
		mincops = 1,
		position = { ['x'] = 1735.7692871094, ['y'] = 6419.6083984375, ['z'] = 34.8444480896 },
		reward = 5000,
		nameofbank = "Shell Tank ",
		lastrobbed = 0,
		seconds = 180,
		type = "kiosk",
	},
	["Shell Tank 20"] = {
		mincops = 1,
		position = { ['x'] = 1960.5290527344, ['y'] = 3748.58984375, ['z'] = 32.343734741211 },
		reward = 5000,
		nameofbank = "Shell Tank ",
		lastrobbed = 0,
		seconds = 180,
		type = "kiosk",
	},
	["Juvelbutikken"] = {
		mincops = 2,
		position = { ['x'] = -618.87615966797, ['y'] = -229.12045288086, ['z'] = 38.015216827393 },
		reward = 10000,
		nameofbank = "Juvelbutikken",
		lastrobbed = 0,
		seconds = 360,
		type = "juvelbutikken",
	}
}
