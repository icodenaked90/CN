
local cfg = {}
-- define garage types with their associated vehicles
-- (vehicle list: https://wiki.fivem.net/wiki/Vehicles)

-- each garage type is an associated list of veh_name/veh_definition
-- they need a _config property to define the blip and the vehicle type for the garage (each vtype allow one vehicle to be spawned at a time, the default vtype is "default")
-- this is used to let the player spawn a boat AND a car at the same time for example, and only despawn it in the correct garage
-- _config: vtype, blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.rent_factor = 0.1 -- 10% of the original price if a rent
cfg.sell_factor = 0.60 -- sell for 75% of the original price

cfg.garage_types = {

	["Køretøjer"]  = {
		_config = {vtype="car",blipid=357,blipcolor=3},
		["elegy"] = {"Bil",1500000, ""},
		["emperor"] = {"Bil",40000, ""},
		["blista"] = {"Bil",50000, ""},
		["blista2"] = {"Bil",60000, ""},
		["brioso"] = {"Bil",75000, ""},
		["Dilettante"] = {"Bil",50000, ""},
		["issi2"] = {"Bil",60000, ""},
		["issi3"] = {"Bil",40000, ""},
		["panto"] = {"Bil",60000, ""},
		["prairie"] = {"Bil",75000, ""},
		["rhapsody"] = {"Bil",50000, ""},
		["specter"] = {"Bil",2700000, ""},
		["specter2"] = {"Bil",2800000, ""},
		["cogcabrio"] = {"Bil",2400000, ""},
		["f620"] = {"Bil",2300000, ""},
		["felon2"] = {"Bil",1900000, ""},
		["jackal"] = {"Bil",1600000, ""},
		["oracle"] = {"Bil",1400000, ""},
		["oracle2"] = {"Bil",1750000, ""},
		["sentinel"] = {"Bil",900000, ""},
		["sentinel2"] = {"Bil",1000000, ""},
		["windsor"] = {"Bil",2400000, ""},
		["windsor2"] = {"Bil",2600000, ""},
		["zion"] = {"Bil",1700000, ""},
		["zion2"] = {"Bil",1800000, ""},
		["neon"] = {"Bil",2000000, ""},
		["comet"] = {"Bil",120000, ""},
		["comet5"] = {"Bil",2200000, ""},
		["comet3"] = {"Bil",2000000, ""},
		["banshee"] = {"Bil",3300000, ""},
		["bestiagts"] = {"Bil",2900000, ""},
		["buffalo"] = {"Bil",750000, ""},
		["buffalo2"] = {"Bil",850000, ""},
		["carbonizzare"] = {"Bil",1850000, ""},
		["coquette"] = {"Bil",2500000, ""},
		["feltzer2"] = {"Bil",1300000, ""},
		["furoregt"] = {"Bil",1500000, ""},
		["fusilade"] = {"Bil",1250000, ""},
		["jester"] = {"Bil",1900000, ""},
		["jester2"] = {"Bil",1950000, ""},
		["kuruma"] = {"Bil",1700000, ""},
		["lynx"] = {"Bil",2500000, ""},
		["massacro"] = {"Bil",3100000, ""},
		["massacro2"] = {"Bil",3200000, ""},
		["omnis"] = {"Bil",350000, ""},
		["penumbra"] = {"Bil",300000, ""},
		["rapidgt"] = {"Bil",1800000, ""},
		["rapidgt2"] = {"Bil",1850000, ""},
		["schafter3"] = {"Bil",1100000, ""},
		["surano"] = {"Bil",2250000, ""},
		["tropos"] = {"Bil",2000000, ""},
		["verlierer2"] = {"Bil",650000, ""},
		["Schlagen"] = {"Bil",3400000, ""},
		["pariah"] = {"Bil",3650000, ""},
		["khamelion"] = {"Bil",2400000, ""},
		["raptor"] = {"Bil",900000, ""},
		["ruston"] = {"Bil",1750000, ""},
		["dominator3"] = {"Bil",800000, ""},
		["sultan"] = {"Bil",1200000, ""},
		["rapidgt3"] = {"Bil",1500000, ""},
		["retinue"] = {"Bil",325000, ""},
		["torero"] = {"Bil",1650000, ""},
		["cheetah2"] = {"Bil",1600000, ""},
		["gt500"] = {"Bil",650000, ""},
		["hermes"] = {"Bil",1200000, ""},
		["casco"] = {"Bil",700000, ""},
		["coquette2"] = {"Bil",825000, ""},
		["pigalle"] = {"Bil",700000, ""},
		["stinger"] = {"Bil",850000, ""},
		["stingergt"] = {"Bil",1350000, ""},
		["feltzer3"] = {"Bil",1150000, ""},
		["ztype"] = {"Bil",5550000, ""},
		["adder"] = {"Bil",11000000, ""},
		["nero"] = {"Bil",11800000, ""},
		["taipan"] = {"Bil",12500000, ""},
		["entityxf"] = {"Bil",10500000, ""},
		["entity2"] = {"Bil",10850000, ""},
		["pfister811"] = {"Bil",8500000, ""},
		["cyclone"] = {"Bil",7000000, ""},
		["reaper"] = {"Bil",6800000, ""},
		["tyrant"] = {"Bil",7500000, ""},
		["blade"] = {"Bil",325000, ""},
		["buccaneer"] = {"Bil",250000, ""},
		["chino"] = {"Bil",225000, ""},
		["coquette3"] = {"Bil",695000, ""},
		["dominator"] = {"Bil",625000, ""},
		["dukes"] = {"Bil",575000, ""},
		["hotknife"] = {"Bil",610000, ""},
		["faction"] = {"Bil",545000, ""},
		["nightshade"] = {"Bil",475000, ""},
		["picador"] = {"Bil",715000, ""},
		["sabregt"] = {"Bil",489000, ""},
		["tampa2"] = {"Bil",660000, ""},
		["virgo"] = {"Bil",150000, ""},
		["kamacho"] = {"Bil",315000, ""},
		["riata"] = {"Bil",325000, ""},
		["streiter"] = {"Bil",225000, ""},
		["bifta"] = {"Bil",75000, ""},
		["blazer"] = {"Bil",10000, ""},
		["brawler"] = {"Bil",725000, ""},
		["dubsta3"] = {"Bil",375000, ""},
		["dune"] = {"Bil",200000, ""},
		["rebel2"] = {"Bil",220000, ""},
		["sandking"] = {"Bil",175000, ""},
		["trophytruck"] = {"Bil",575000, ""},
		["contender"] = {"Bil",375000, ""},
		["baller"] = {"Bil",250000, ""},
		["baller2"] = {"Bil",275000, ""},
		["baller3"] = {"Bil",300000, ""},
		["baller4"] = {"Bil",315000, ""},
		["dubsta"] = {"Bil",200000, ""},
		["dubsta2"] = {"Bil",250000, ""},
		["toros"] = {"Bil",2900000, ""},
		["patriot2"] = {"Bil",1000000, ""},
		["contender"] = {"Bil",375000, ""},
		["xls"] = {"Bil",220000, ""},
		["rocoto"] = {"Bil",200000, ""},
		["moonbeam2"] = {"Bil",450000, ""},
		["yosemite"] = {"Bil",285000, ""},
		["bison"] = {"Bil",130000, ""},
		["bobcatxl"] = {"Bil",123000, ""},
		["gburrito"] = {"Bil",245000, ""},
		["journey"] = {"Bil",150000, ""},
		["minivan"] = {"Bil",300000, ""},
		["paradise"] = {"Bil",250000, ""},
		["rumpo"] = {"Bil",130000, ""},
		["surfer"] = {"Bil",110000, ""},
		["youga"] = {"Bil",160000, ""},
		["granger"] = {"Bil",315000, ""},
		["BMWZ42016"] = {"Bil",2500000, ""},
		["FFRS2017"] = {"Bil",3000000, ""},
		["PCR2012"] = {"Bil",2999999, ""},
		["mst"] = {"Bil",3500000, ""},
		["eleanor"] = {"Bil",7000000, ""},
		["mudsl"] = {"Bil",500000, ""},
		["dbs2009"] = {"Bil",4500000, ""},
		["as7"] = {"Bil",650000, ""},
		["gto"] = {"Bil",20000000, ""},
		["lp700"] = {"Bil",16000000, ""},
		["raiden"] = {"Bil",2500000, ""},
		["asea"] = {"Bil",225000, ""},
		["asterope"] = {"Bil",275000, ""},
		["cognoscenti"] = {"Bil",2200000, ""},
		["cog55"] = {"Bil",2000000, ""},
		["glendale"] = {"Bil",195000, ""},
		["ingot"] = {"Bil",85000, ""},
		["intruder"] = {"Bil",250000, ""},
		["premier"] = {"Bil",210000, ""},
		["primo"] = {"Bil",235000, ""},
		["primo2"] = {"Bil",275000, ""},
		["regina"] = {"Bil",175000, ""},
		["schafter2"] = {"Bil",625000, ""},
		["stanier"] = {"Bil",100000, ""},
		["stratum"] = {"Bil",100000, ""},
		["superd"] = {"Bil",1700000, ""},
		["surge"] = {"Bil",240000, ""},
		["tailgate"] = {"Bil",600000, ""},
		["warrener"] = {"Bil",175000, ""},
		["washingt"] = {"Bil",225000, ""},
		["AKUMA"] = {"Bil",90000, ""},
		["bagger"] = {"Bil",50000, ""},
		["bati"] = {"Bil",150000, ""},
		["bati2"] = {"Bil",160000, ""},
		["bf400"] = {"Bil",300000, ""},
		["carbonrs"] = {"Bil",180000, ""},
		["cliffhanger"] = {"Bil",325000, ""},
		["double"] = {"Bil",112000, ""},
		["faggio2"] = {"Bil",13000, ""},
		["gargoyle"] = {"Bil",220000, ""},
		["innovation"] = {"Bil",190000, ""},
		["pcj"] = {"Bil",90000, ""},
		["zombieb"] = {"Bil",385000, ""},
		["vindicator"] = {"Bil",600000, ""},
		["sanchez"] = {"Bil",80000, ""},
		["nightblade"] = {"Bil",400000, ""},
		["sanctus"] = {"Bil",2200000, ""},
		["hexer"] = {"Bil",120000, ""},
		["daemon"] = {"Bil",200000, ""},
		["nemesis"] = {"Bil",120000, ""},
		["ruffian"] = {"Bil",210000, ""},
		["vader"] = {"Bil",200000, ""},
		["thrust"] = {"Bil",323000, ""},
		["hakuchou"] = {"Bil",650000, ""},
		["blazer4"] = {"Bil",430000, ""},
	},

	-- JOBS GARAGES
	["Taxa"] = {
		_config = {vtype="default", blipid=198, blipcolor=5, permissions = {"taxi.garage"}},
		["TAXI_FT2016"] = {"Ford Taurus", 0, ""},
		["TAXI_DRT1993"] = {"Tourbus", 0, ""},
	},
	["Indbrudstyv"] = {
		_config = {vtype="default", blipid=67, blipcolor=59, permissions = {"indbrudstyv.adgang"}},
		["boxville"] = {"Kassevogn", 100000, "Indbrud kan kun forgå om natten"},
		["boxville2"] = {"Kassevogn2", 100000, "Indbrud kan kun forgå om natten"},
		["boxville3"] = {"Kassevogn3", 100000, "Indbrud kan kun forgå om natten"},
		["boxville4"] = {"Kassevogn4", 100000, "Indbrud kan kun forgå om natten"}
	},
	["Drugdealer Garage"] = {
		_config = {vtype="default", permissions = {"drugdealer.garage"}},
		["NIGHTSHARK"] = {"Amored OFF-Roader", 0, ""},
		["XLS2"] = {"Armored SUV", 0, ""},
		["BRICKADE"] = {"Armored Lastbil", 0, ""},
		["VACCA"] = {"Sports bil", 0, ""},
		["benson"] = {"Lastbil", 0, ""},
		["SCHAFTER6"] = {"Armored Schafter", 0, ""},
		["BALLER5"] = {"Armored Baller", 0, ""},
		["COG552"] = {"Armored Cognoscenti", 0, ""},
		["paragon2"] = {"Armored sportsbil", 0, ""},

	},

	["Drugdealer Fly"] = {
		_config = {vtype="default", permissions = {"drugdealer.garage"}},
		["cuban800"] = {"Mexikanske luksus fly", 0, ""},
		["TITAN"] = {"Lastfly", 0, ""},
		["SWIFT2"] = {"Narkokartel Helikopter", 0, ""},
		["cargobob2"] = {"Lasthelikopter", 0, ""},
		["seasparrow"] = {"vandheli", 0, ""},
	},
	["Drugdealer Båd"] = {
		_config = {vtype="default", permissions = {"drugdealer.garage"}},
		["Dinghy4"] = {"Speedgummi båd", 0, ""}
	},

	["Både"] = {
		_config = {vtype="boat",blipid=427,blipcolor=4},
		["seashark"] = {"Jetski",6000, ""},
		["jetmax"] = {"jetmax",100000, ""},
		["suntrap"] = {"suntrap",100000, ""}
	},
	["Både Politi"] = {
    		_config = {vtype="default",blipid=427,blipcolor=2, permissions = {"police.garage"}},
    		["Dinghy4"] = {"Speedgummi båd",0, ""},
    		["Predator"] = {"Politibåd",0, ""},

    	},

	["Helikopter Politiet"] = {
		_config = {vtype="helicopter", permissions = {"police.garage"}},
		["EAS350EP"] = {"Helikopter",0,""}
	},
	
	["Helikopter AKS"] = {
		_config = {vtype="helicopter", permissions = {"aks.garage"}},
		["EAS350EP"] = {"Helikopter",0,""}
	},

	["Helikopter EMS"] = {
		_config = {vtype="helicopter",blipid=0,blicolor=0, permissions = {"emergency.garage"}},
		["EAS350EA"] = {"Helikopter",0,""}
	},

	["Ejendomsmægler Garage"] = {
		_config = {vtype="default", permissions = {"realestate.duty"}},
		["EM_BG2019"] = {"Bravado", 0, ""}
	},

	["Politi Garage"] = {
		_config = {vtype="default", permissions = {"police.garage"}},
		["bcpd10"] = {"01 Lampadati Felon (U)", 0, ""},
		["bcpd5"] = {"02 Obey Rocoto (U)", 0, ""},
		["bcpd6"] = {"03 Übermacht Sentinel XS (U)", 0, ""},
		["PMC2020"] = {"04 Motorcykel (M)", 0, ""},
		["GBVANU"] = {"05 Gallivanter Baller (C)", 0, ""},
		["UO2018U"] = {"06 Oracle 2018 (C)", 0, ""},
		["KSRS2018U"] = {"07 Sultan RS 2018 (C)", 0, ""},
		["bcpd7"] = {"08 Annis Elegy RH8 (!)", 0, ""},
		["bcpd10hp"] = {"09 Lampadati Felon (K9)", 0, ""},
	},
	
		["AKS Garage"] = {
		_config = {vtype="default", permissions = {"aks.garage"}},
		["KSRS2018U"] = {"01 Sultan RS 2018 (C)", 0, ""},
		["GBVANU"] = {"02 Gallivanter Baller (A)", 0, ""},
		["riot"] = {"03 Bearcat 2018 (A)", 0, ""},
	},

	["EMS Bil"] = {
		_config = {vtype="default", permissions = {"emergency.garage"}},
		["STEEDAMB"] = {"1. Ambulance", 0, ""},
		["bcpd10a"] = {"2. Lampadati Felon (Akut)", 0, ""},
	},

	["Domingo Auto"] = {
		_config = {vtype="default",blipid=68,blipcolor=4, permissions = {"domingo.loadshop"}},
		["DA_CS2015M"] = {"Suburban 2015", 0, "Service vogn 2"},
		["DA_DRV2003M"] = {"Dodge Ram Van 2003", 0, "Reklame vogn"},
		["DA_MTLFB2013M"] = {"MTL Flatbed 2013", 0, "Autotransporter vogn 1."},
	},

	["Minebilen"] = {
		_config = {vtype="default",blipid=318,blipcolor=4,permissions = {"miner.adgang"}},
		["tiptruck"] = {"Minebilen", 50000,""}
	},

	["Civilians Auto"] = {
		_config = {vtype="default",blipid=89,blipcolor=59, permissions = {"civilians.loadshop"}},
		["SM_MTLFB2013M"] = {"MTL Flatbed 2013", 0, "Autotransporter."},
		-- ["CA_CS1999M"] = {"Silverado 1999", 0, "Service vogn 2"},
		-- ["CA_DRV2003M"] = {"Dodge Ram Van 2003", 0, "Reklame vogn"},
	},

	["Skraldevogn"] = {
		_config = {vtype="default",blipid=318,blipcolor=4, permissions = {"skralde.vehicle"}},
		["trash"] = {"Skraldevogn", 1000,""}
	},
	["Skovhugger"] = {
		_config = {vtype="default",blipid=318,blipcolor=4, permissions = {"skov.vehicle"}},
		["scrap"] = {"Truck", 10000,""}
	},

	["Lastbil garage"] = {
		_config = {vtype="default",blipid=477,blipcolor=4,permissions={"trucker.vehicle"}},
		["phantom"] = {"Phantom",0, ""},
		["packer"] = {"Packer",0, ""}
	},

	["Fængsels garage"] = {
		_config = {vtype="default",blipid=477,blipcolor=4},
		["forklift"] = {"Gaffeltruck",0, ""},
	},

	["Sikkerhedsvagt garage"] = {
		_config = {vtype="default",blipid=477,blipcolor=4,permissions={"security.vehicle"}},
		["SV2020"] = {"Merryweather Baller",0, ""},
	},

	["Cykel garage"] = {
		_config = {vtype="default",blipid=226,blipcolor=69},
		["bmx"] = {"BMX",1000, ""},
		["cruiser"] = {"Cruiser",1500, ""},
		["fixter"] = {"Fixter",2000, ""},
		["Scorcher"] = {"Scorcher Mountain Bike",2500, ""},
		["JAPBICYCLE"] = {"Japansk Cykel",1299, ""},
		["tribike"] = {"Racer cykel #1",4000, ""},
		["tribike2"] = {"Racer cykel #2",4000, ""},
		["tribike3"] = {"Racer cykel #3	",4000, ""}
	},

	["Forsyningen"] = {
		_config = {vtype="default",blipid=68,blipcolor=4, permissions = {"forsyningen.loadshop"}},
		["FO_SPEEDO"] = {"Speedo", 0, "Mercedes Vito"},
	},
}

-- {garage_type,x,y,z,hidden,large}
cfg.garages = {
	--{"EMS Bil",302.59814453125,-1439.2489013672,29.800493240356, true, true},--gammel hospital
	--{"EMS Bil",-454.65106201172,-339.94674682617,34.363471984863, true, true},-- tropical emergency
	--{"EMS Bil",-491.74639892578,-336.2275390625,34.372581481934, true, true},--Tropical emergency
	{"EMS Bil",1813.4295654297,3685.4643554688,34.224239349365, true, true},--EMS Sandy
	{"EMS Bil",-278.49612426758,6319.1772460938,32.421257019043, true, true},--EMS Paleto
	{"EMS Bil",241.85296630859,-565.96429443359,43.278755187988, true, true},-- Midtby
	{"Domingo Auto",951.73651123047,-944.51318359375,39.499809265137, true, true},--midtby
	{"Domingo Auto",1752.4279785156,3332.0739746094,40.178695678711, true, true},--midtby
	{"Domingo Auto",-102.96466827393,96.487037658691,71.018692016602, true, true},--midtby
	--{"Domingo Auto",954.623046875,-126.76348876953,74.364524841309, true, true},--midtby Borgen
	{"Forsyningen",-134.74559020996,6213.7236328125,31.203775405884, true, true},--Paleto lageret
	{"Forsyningen",-1057.1960449219,-221.97897338867,37.986457824707, true, true},--Lifeinvader
	{"Civilians Auto",546.40753173828,-209.76663208008,53.663707733154, true, true},--midtby
	{"Sikkerhedsvagt garage",-38.941093444824,-786.78863525391,43.871754760742, true, true},
	{"Helikopter EMS",352.40744018555,-588.03961181641,74.165657043457, true, true},
	{"Helikopter EMS",1867.1141357422,3646.1313476563,35.605903625488, true, true},
	{"Helikopter Politiet",449.51892089844,-987.99310302734,43.691665649414, true, true},
	{"Helikopter Politiet",-475.13912963867,5988.3642578125,31.336708068848, true, true},
	{"Helikopter Politiet",1867.1141357422,3646.1313476563,35.605903625488, true, true},
	{"Helikopter AKS",-137.0125579834,-170.27926635742,95.532020568848, true, true},
	{"Både Politi",-681.26495361328,6165.017578125,0.25208702683449, false, false},
    {"Både Politi",-3291.5266113281,1189.5262451172,0.17722804844379, false, false},
    {"Både Politi",1621.1612548828,3902.8767089844,30.560333251953, false, false},
    {"Både Politi",2805.8913574219,-850.19763183594,0.40806207060814, false, false},
    {"Både Politi",16.380355834961,-2805.4892578125,-0.40078911185265, false, false},
	{"Både",-2013.9351806641,-1041.3424072266,-0.4406553208828, false, false},
	{"Både",-785.62957763672,-1498.5974121094,-0.086649641394615, false, false},
	{"Både",1571.1760253906,3845.3767089844,30.856819152832, false, false},
	{"Både",-1806.4201660156,-988.86822509766,0.074662901461124, false, false},
	{"Både",3845.25390625,4445.0776367188,-0.017860990017653, false, false},
	{"Både",139.64183044434,3833.4389648438,29.600109100342, false, false},
	{"Både",2812.4978027344,-845.96112060547,0.020922610536218, false, false},
	{"Både",12.137045860291,-2805.5737304688,-0.40212666988373, false, false},
	{"Politi Garage", 449.77325439453,-1018.7691040039,28.513710021973, true, true},
	{"Politi Garage", 538.32116699219,-40.687271118164,70.784576416016, true, true},
	{"Politi Garage", 1863.0129394531,3704.1630859375,33.439643859863, true, true},
	{"Politi Garage", -452.27276611328,5994.9067382813,31.340549468994, true, true},
	{"Politi Garage", 125.66471099854,-715.40802001953,42.028957366943, true, true},
	{"AKS Garage", -194.42805480957,-281.01736450195,48.9700050354, true, true},
	{"Taxa", 915.24536132813,-165.7215423584,74.482749938965, false, false},
	{"Minebilen", 496.79681396484,-1970.5522460938,24.905403137207, false, false},
	{"Skraldevogn", 1540.0747070313,-2093.2795410156,77.100486755371, false, false},
	{"Skovhugger", -579.33636474609,5243.3696289063,70.46947479248, false, false},
	{"Lastbil garage",160.06260681152,6407.921875,31.162828445435, false, false},
	{"Fængsels garage",1646.998046875,2545.6274414063,45.564826965332, true, false},
	{"Cykel garage",256.87316894531,-783.86700439453,30.507152557373, false, false},
	{"Cykel garage",110.01765441895,-1924.8909912109,20.751617431641, false, false},
	{"Cykel garage",-105.62579345703,-613.40588378906,36.0758934021, true, true},
	{"Cykel garage",-8.7785520553589,-1474.8852539063,30.509767532349, true, true},
	-- {"Pizza Job", 412.62152099609,107.33561706543,100.92472076416, false, false},
	{"Ejendomsmægler Garage", -101.63906860352,-601.24407958984,36.073963165283, true, false},
	{"Indbrudstyv", 490.38961791992,-1334.2969970703,29.328872680664, false, false},
	-- {"Advokathuset", 161.49493408203,-744.94421386719,33.133312225342, false, false},
	-- {"Dommer", 264.24261474609,-394.51000976563,44.830062866211, false, false},
    {"Pet garage", 154.6114654541,-749.28515625,33.133319854736, false, false},
    {"Drugdealer Garage", -1751.3216552734,3070.6945800781,32.829200744629, true, true},
	{"Drugdealer Garage", -1267.1784667969,-3013.2468261719,-48.490169525146, true, true},
    {"Drugdealer Fly", 2134.1174316406,4809.7958984375,41.19596862793, true, true},
    {"Drugdealer Fly", -1853.9272460938,2989.5373535156,32.259731292725, true, true},
    {"Drugdealer Fly", -1639.5635986328,-3120.9931640625,13.945010185242, true, true},
    {"Drugdealer Båd", -2629.9594726563,3608.125,0.45188075304031, true, true},
}

return cfg
