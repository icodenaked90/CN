-- define items, see the Inventory API on github

local cfg = {}
-- see the manual to understand how to create parametric items
-- idname = {name or genfunc, description or genfunc, genfunc choices or nil, weight or genfunc}
-- a good practice is to create your own item pack file instead of adding items here
cfg.items = {
	-- farming
	["hampblade"] = {"Hampblade", "Ulovligt! Bruges til at fremstille skunk", nil, 0.10}, -- no choices
	["kokainblade"] = {"Kokainblade", "Ulovligt! Bruges til at fremstille kokain", nil, 0.10}, -- no choices
	["kokain"] = {"Kokain", "Ulovligt! Kan sælges.", nil, 0.10}, -- no choices
	["syre"] = {"Syre", "Ulovligt! Bruges til at fremstille LSD", nil, 0.10}, -- no choices
	["svampe"] = {"Svampe", "Ulovligt! Bruges til at fremstille LSD", nil, 0.10}, -- no choices
	["tøret_ketamin"] = {"Tørret ketamin", "Ulovligt! Kan sælges", nil, 0.10}, -- no choices
	["ketamin"] = {"Ketamin", "Ulovligt! Bruges til at fremstille Tørert ketamin", nil, 0.10}, -- no choices
	["lsd"] = {"LSD", "Ulovligt! Kan sælges.", nil, 0.10}, -- no choices
	["kul"] = {"Kul", "Du kan lave det til diamanter", nil, 1.5}, -- no choices
	["diamant"] = {"Diamant", "Kan sælges for høj profit", nil, 1.50}, -- no choices
	["guldmalm"] = {"Guldmalm", "Kan laves til guldbarre", nil, 5.00}, -- no choices
	["guldbar"] = {"Guldbar", "Kan sælges for profit", nil, 2.50}, -- no choices

	--joint
	["skunk"] = {"Skunk", "Ulovligt! Kan sælges.", nil, 0.10}, -- no choices
	["paper"] = {"Paper", "Rul en joint", nil, 0.02}, -- no choices
	["ristetcigaret"] = {"Ristet cigaret", "Rul en joint", nil, 0.02}, -- no choices

--Juvelbutik røveri

	["rolex"] = {"Rolex Ur", "Rendyrket guld", nil, 0.02}, -- no choices
	["guldklaede"] = {"Guldhalskæde", "Lavet af guld", nil, 0.02}, -- no choices
	["gucci"] = {"Gucci taske", "Ægte taske fra Gucci", nil, 0.02}, -- no choices

	-- Våben Frames
	["snsframe"] = {"SNS Ramme", "Bruges til en SNS Pistol", nil, 0.40}, -- no choices
	["pistolframe"] = {"Pistol Ramme", "Bruges til en pistol", nil, 0.40}, -- no choices
	["heavypistolframe"] = {"Heavy Pistol Ramme", "Bruges til en Heavy Pistol", nil, 0.40}, -- no choices
	["pistol50frame"] = {"Pistol .50 Ramme", "Bruges til en Pistol .50", nil, 0.40}, -- no choices
	["appistolframe"] = {"Ap pistol Ramme", "Bruges til en Ap Pistol", nil, 0.40}, -- no choices
	["tec9pistolframe"] = {"Tec9 Ramme", "Bruges til en Tec9", nil, 0.40}, -- no choices
	["oversavetjagtgeværframe"] = {"Oversavet Jagtgevær Ramme", "Bruges til et Oversavet Jagtgevær", nil, 0.40}, -- no choices
	["microsmgframe"] = {"MicroSMG Ramme", "Bruges til en Micro SMG", nil, 0.40}, -- no choices
	-- Våben Barrels
	["snsbarrel"] = {"SNS Løb", "Bruges til en SNS Pistol", nil, 0.40}, -- no choices
	["pistolbarrel"] = {"Pistol Løb", "Bruges til en pistol", nil, 0.40}, -- no choices
	["heavypistolbarrel"] = {"Heavy Pistol Løb", "Bruges til en Heavy Pistol", nil, 0.40}, -- no choices
	["pistol50barrel"] = {"Pistol .50 Løb", "Bruges til en Pistol .50", nil, 0.40}, -- no choices
	["appistolbarrel"] = {"Ap pistol Løb", "Bruges til en Ap Pistol", nil, 0.40}, -- no choices
	["tec9pistolbarrel"] = {"Tec9 Løb", "Bruges til en Tec9", nil, 0.40}, -- no choices
	["oversavetjagtgeværbarrel"] = {"Oversavet Jagtgevær Løb", "Bruges til et Oversavet Jagtgevær", nil, 0.40}, -- no choices
	["microsmgbarrel"] = {"MicroSMG Løb", "Bruges til en Micro SMG", nil, 0.40}, -- no choices
	-- Våben Trigger
	["snstrigger"] = {"SNS Aftrækker", "Bruges til en SNS Pistol", nil, 0.40}, -- no choices
	["pistoltrigger"] = {"Pistol Aftrækker", "Bruges til en pistol", nil, 0.40}, -- no choices
	["heavypistoltrigger"] = {"Heavy Pistol Aftrækker", "Bruges til en Heavy Pistol", nil, 0.40}, -- no choices
	["pistol50trigger"] = {"Pistol .50 Aftrækker", "Bruges til en Pistol .50", nil, 0.40}, -- no choices
	["appistoltrigger"] = {"Ap pistol Aftrækker", "Bruges til en Ap pistol", nil, 0.40}, -- no choices
	["tec9pistoltrigger"] = {"Tec9 Aftrækker", "Bruges til en Tec9", nil, 0.40}, -- no choices
	["oversavetjagtgeværtrigger"] = {"Oversavet Jagtgevær Aftrækker", "Bruges til et Oversavet Jagtgevær", nil, 0.40}, -- no choices
	["microsmgtrigger"] = {"MicroSMG Aftrækker", "Bruges til en Micro SMG", nil, 0.40}, -- no choices
	-- Molotov
	["flaske"] = {"Flaske", "Kan bruges til at lave en molotov.", nil, 0.20}, -- no choices
	["klud"] = {"Klud", "Kan bruges til at lave en molotov.", nil, 0.15}, -- no choices
	["benzin"] = {"Benzin", "Kan bruges til at lave en molotov.", nil, 0.50}, -- no choices


	--boxes
	["kasse1"] = {"Kasse", "Bruges til opvaring", nil, 50.00}, -- no choices
	["kasse2"] = {"Kasse", "Bruges til opvaring", nil, 50.00}, -- no choices
	["kasse3"] = {"Kasse", "Bruges til opvaring", nil, 50.00}, -- no choices
	["kasse4"] = {"Kasse", "Bruges til opvaring", nil, 50.00}, -- no choices
	["kasse5"] = {"Kasse", "Bruges til opvaring", nil, 5.00}, -- no choices
	["kasse6"] = {"Kasse", "Bruges til opvaring", nil, 5.00}, -- no choices
	["kasse7"] = {"Kasse", "Bruges til opvaring", nil, 5.00}, -- no choices
	["kasse8"] = {"Kasse", "Bruges til opvaring", nil, 5.00}, -- no choices
	["kasse9"] = {"Kasse", "Bruges til opvaring", nil, 5.00}, -- no choices
	["kasse10"] = {"Kasse", "Bruges til opvaring", nil, 5.00}, -- no choices
	["kasse11"] = {"Kasse", "Bruges til opvaring", nil, 5.00}, -- no choices
	["kasse12"] = {"Kasse", "Bruges til opvaring", nil, 5.00}, -- no choices


	--bank stuff
	["nationalbankenplan"] = {"Plan for røveri af national banken","Plan for røveri af national banken", nil, 0.00}, -- no choices
	["goldencard"] = {"goldencard", nil,"Kan sælges for profit", 0.00}, -- no choices
	["silvercard"] = {"silvercard","Kan sælges for profit", nil, 0.00}, -- no choices
	["thermite"] = {"thermite","thermite bombe", nil, 2.50}, -- no choices

	-- Våben Andet
	["gunpowder"] = {"Sortkrudt", "Bruges til våben ammunition", nil, 0.01}, -- no choices



	["aluminium"] = {"Aluminium oxide", "Kan laves til aluminium bar", nil, 0.25}, -- no choices
	["aluminiumbar"] = {"Aluminium bar", "Kan sælges for profit", nil, 0.40}, -- no choices

	["steel"] = {"Stål", "Kan laves til rustfri stål", nil, 0.30}, -- no choices
	["stainless"] = {"Rustfri stål", "Kan sælges for profit", nil, 0.50}, -- no choices
	["chromium"] = {"Chromium", "Skal bruges til rustfri stål", nil, 0.05}, -- no choices
	["nickel"] = {"Nickel", "Skal bruges til rustfri stål", nil, 0.05}, -- no choices

	["sulfur"] = {"Svovl", "Bliver brugt til gummi", nil, 0.10}, -- no choices

	["paraply"] = {"Paraply", "Bruges til og holde en tør når det regner</br>Brug: /paraply", nil, 0.60}, -- no choices
	["pizza"] = {"Pizza", "Pizza bakke</br>Brug: /pizza", nil, 0.50}, -- no choices
	["stok"] = {"Stok", "Er du for gamle til og gå ordenligt? Så brug en stok!</br>Brug: /stok", nil, 0.50}, -- no choices
	["kuffert"] = {"Kuffert", "Kuffert, skal du se prof ud jamen så gå med den!</br>Brug: /kuffert", nil, 0.50}, -- no choices
	["box"] = {"Box", "En kasse med? Hvem ved.</br>Brug: /box", nil, 0.50}, -- no choices
	["regentsglas"] = {"Regentsglas", "Brugt til at opbevare væske", nil, 0.25}, -- no choices
	["unicorn"] = {"Unicorn", "Skal du være fancy? Jamen så rid da på en unicorn!?</br>Brug: /unicorn", nil, 0.50}, -- no choices
	["kikkert"] = {"Kikkert", "Bruges til at se ting på lang afstand", nil, 1.50}, -- no choices

	["dirty_money"] = {"Dollars", "Real American Dollars", nil, 0.50},
	["bank_penge"] = {"Penge Fra Banken", "DKK.", nil, 0}, -- no choices
	["iphone"] = {"iPhone X", "Bruges til at sende beskeder mm", nil, 0.2},
	["samsung"] = {"Samsung Galaxy S9", "Bruges til at sende beskeder mm", nil, 0.2},
	["oneplus"] = {"OnePlus 6T", "Bruges til at sende beskeder mm", nil, 0.2},
	["træ"] = {"Træ", "Bruges til at laves om til planker", nil, 3},
	["planke"] = {"Planker", "Kan sælges i byen", nil, 1.0},
	["rod"] = {"Mekaniker Rod", "", nil, 0.50}, -- no choices
	["vindruer"] = {"Vindruer", "Kan sælges", nil , 0.01},
	["pakke"] = {"Pakke", "Skal afleveres til kunder", nil , 3.0},
	["brev"] = {"Brev", "Skal afleveres til kunder", nil , 0.5},
	["lægerapport"] = {"Læge Journal", "Bliver krævet afleveret til andet hospital", nil , 0.2},
	["medicin"] = {"Medicin", "Bliver krævet afleveret til andet hospital", nil , 1},
	["førstehjælpskasse"] = {"Førstehjælps Kasse", "Til at udøve førstehjælp", nil , 1},
	["dive"] = {"Dykker Udstyr", "Bruges til at dykke med", nil , 1},
	["gelatine"] = {"Gelatine", "Det anvendes til at gøre vandige levnedsmidler tykkere", nil , 0.1},

	--Amfetamin produktion
	["amfetamin"] = {"Amfetamin", "Amfetamin.", nil, 0.20},
	["p2np"] = {"P2NP", "P2NP.", nil, 0.25},
	["isopropanol"] ={"Isopropanol", "Isopropanol.", nil, 0.25},
	["sølvpapir"] = {"Sølvpapir", "Sølvpapir.", nil, 0.25},
	["eddikesyre"] = {"Eddikesyre" , "Eddikkesyre.", nil, 0.25},
	["naoh"] = {"NaOH", "NaOH.", nil, 0.25},
	["h2so4"] = {"H2SO4", "H2SO4.", nil, 0.25},
	["natrium"] = {"Natrium","Natrium", nil, 0.25},


	--buglary
	["tyvegods"] = {"Tyvegods","Stjålne ting", nil, 5.0},

	--røveri
--	["lockpicking_kit"] = {"Dirkegrej","Bliver brugt til at røve køretøjer.", nil, 0.25},

	--Keys

	--Klubber/egendomme
	["key_bahmas"] = {"Nøgle - Bahama Mama","Nøgler Bahama Mama", nil, 0.01},
	["key_stripklub2"] = {"Nøgle - Stripklubben","Nøgler til stripklubben", nil, 0.01},
	["key_yachten"] = {"Nøgle - Yacht","Nøgler til yachten", nil, 0.01},
	["key_galaxy2"] = {"Nøgle - Galaxy","Nøgler til Galaxy", nil, 0.01},
	["key_brugtvogn"] = {"Nøgle - Brugtvognsforhandler","Nøgler til Brugtvognsforhandleren", nil, 0.01},
	--Jobs
	["key_advokat"] = {"Nøgle - Advokat","Nøgler til advokatkontor", nil, 0.01},
	["key_realestate"] = {"Nøgle - Ejendomsmægler","Nøgler til ejendomsmægler kontor", nil, 0.01},
	["key_lifeinvader2"] = {"Nøgle - Lifeinvader","Nøgler til lifeinvader", nil, 0.01},
	["key_bilforhandler"] = {"Nøgle - Bilforhandler","Nøgler til Bilforhandleren", nil, 0.01},
	["key_panthersecurity"] = {"Nøgle - Panther Security","Nøgler til Panther Security", nil, 0.01},
	["key_elforsyning"] = {"Nøgle - El Forsyning ApS","Nøgler til El Forsyning ApS", nil, 0.01},
	["key_kirke"] = {"Nøgle - til kirken","Nøgler til kirken", nil, 0.01},

	--Ejendomsmægler
	["key_bolig1"] = {"Nøgle - Bolig 1","Nøgler til bolig 1", nil, 0.01},
	["key_bolig2_1"] = {"Nøgle - Bolig 2","Nøgler til bolig 2", nil, 0.01},
	["key_bolig6"] = {"Nøgle - Bolig 6","Nøgler til bolig 6", nil, 0.01},
	["key_bolig7"] = {"Nøgle - Bolig 7","Nøgler til bolig 7", nil, 0.01},
	["key_bolig22"] = {"Nøgle - Bolig 22","Nøgler til Bolig 22", nil, 0.01},
	["key_bolig33"] = {"Nøgle - Bolig 33","Nøgler til Bolig 33", nil, 0.01},
	["key_bolig32"] = {"Nøgle - Bolig 32","Nøgler til Bolig 32", nil, 0.01},
	["key_vinewoodhills2"] = {"Nøgle - Vinewood Hills 2","Nøgler til Vinewood Hills 2", nil, 0.01},
	["key_vinewoodhills3"] = {"Nøgle - Vinewood Hills 3","Nøgler til Vinewood Hills 3", nil, 0.01},
	["key_madwayne"] = {"Nøgle - Mad Wayne","Nøgler til porten", nil, 0.01},
	["key_kure"] = {"Nøgle - Kures hus","Nøgler til porten", nil, 0.01},
	["key_playboy"] = {"Nøgle - Playboy Mansion","Nøgler til porten", nil, 0.01},
	["key_sandylab"] = {"Nøgle - Sandy Laboratorie","Nøgler til Laboratoriet", nil, 0.01},
	["key_vineyard"] = {"Nøgle - Vingården","Nøgler til Vingården", nil, 0.01},
	["key_westvw"] = {"Nøgle - West Vinewood","Nøgler til West Vinewood", nil, 0.01},
	["key_westvw2"] = {"Nøgle - West Vinewood (Værelse)","Nøgler til West Vinewood (Værelse)", nil, 0.01},
	["key_gentrylane"] = {"Nøgle - Gentry Lane","Nøgler til Gentry Lane", nil, 0.01},
	["key_vargas"] = {"Nøgle - Alex Vargas","Nøgler til Alex Vargas' hus", nil, 0.01},
	["key_a&m"] = {"Nøgle - Alex Musti","Nøgler til Alex musti tøjbutik", nil, 0.01},


	--Bande huse
	["key_TL"] = {"Nøgle - Teqi-la-la	","Nøgler til Teqi-la-la	", nil, 0.01},
	["key_kartel3"] = {"Nøgle - Kartellet","Nøgler Kartellet", nil, 0.01},
	["key_yj2"] = {"Nøgle - Yellow Jack","Nøgler Yellow Jack", nil, 0.01},
	["key_borgen"] = {"Nøgle - Borgen","Nøgler til Borgen", nil, 0.01},
	["key_lostmc"] = {"Nøgle - Trailerpark","Nøgler til Trailerpark", nil, 0.01},
	["key_lager"] = {"Nøgle - Lager","Nøgler til lageret", nil, 0.01},
	["key_vcf"] = {"Nøgle - Vinci Crime Family","Nøgler til porten", nil, 0.01},
	["key_soa"] = {"Nøgle - Sons of Anarchy","Nøgler til porten", nil, 0.01},
	["key_vagos"] = {"Nøgle - Russian Brotherhood","Nøgler til døren", nil, 0.01},
	["key_bloodz"] = {"Nøgle - Bloodz","Nøgler til døren", nil, 0.01},

	["key_drugdealer"] = {"Nøgle - Drugkartel","Nøgler til drugkartellet", nil, 0.01},

	["mechabo"] = {"Süper Mechanics - Abbonement","Süper Mechanics - Abbonement", nil, 0.01},
	-- Våben
	["wbody|WEAPON_VINTAGEPISTOL"] = {"Vintage Pistol", "", nil, 0.01},
	["wammo|WEAPON_VINTAGEPISTOL"] = {"Vintage Pistol ammo", "", nil, 0.01},
	["wbody|WEAPON_PISTOL"] = {"Håndpistol", "", nil, 0.01},
	["wammo|WEAPON_PISTOL"] = {"Håndpistol ammo", "", nil, 0.01},
	["wbody|WEAPON_PISTOL_MK2"] = {"Håndpistol Mk2", "", nil, 0.01},
	["wammo|WEAPON_PISTOL_MK2"] = {"Håndpistol Mk2 ammo", "", nil, 0.01},
	["wbody|WEAPON_SMG_MK2"] = {"Håndpistol Mk2", "", nil, 0.01},
	["wammo|WEAPON_SMG_MK2"] = {"Håndpistol Mk2 ammo", "", nil, 0.01},
	["wbody|WEAPON_MARKSMANPISTOL"] = {"Marksmanpistol", "", nil, 0.01},
	["wammo|WEAPON_MARKSMANPISTOL"] = {"Marksmanpistol ammo", "", nil, 0.01},
	["wbody|WEAPON_SNSPISTOL"] = {"SNS Pistol", "", nil, 0.01},
	["wammo|WEAPON_SNSPISTOL"] = {"SNS Pistol ammo", "", nil, 0.01},
	["wbody|WEAPON_REVOLVER"] = {"Smith&Wesson", "", nil, 0.01},
	["wammo|WEAPON_REVOLVER"] = {"Smith&Wesson ammo", "", nil, 0.01},
	["wbody|WEAPON_HEAVYPISTOL"] = {"Heavypistol", "", nil, 0.01},
	["wammo|WEAPON_HEAVYPISTOL"] = {"Heavypistol ammo", "", nil, 0.01},
	["wbody|WEAPON_MACHINEPISTOL"] = {"Maskinpistol", "", nil, 0.01},
	["wammo|WEAPON_MACHINEPISTOL"] = {"Maskinpistol ammo", "", nil, 0.01},
	["wbody|WEAPON_PISTOL50"] = {".50 Desert Eagle", "", nil, 0.01},
	["wammo|WEAPON_PISTOL50"] = {".50 Desert Eagle ammo", "", nil, 0.01},
	["wbody|WEAPON_MOLOTOV"] = {"Molotov", "", nil, 0.01},
	["wammo|WEAPON_MOLOTOV"] = {"Molotov brændstof", "", nil, 0.01},
	["wbody|WEAPON_PUMPSHOTGUN"] = {"Pumpshotgun", "", nil, 0.01},
	["wammo|WEAPON_PUMPSHOTGUN"] = {"Pumpshotgun shells", "", nil, 0.01},
	["wbody|WEAPON_ASSAULTSHOTGUN"] = {"Kampshotgun", "", nil, 0.01},
	["wammo|WEAPON_ASSAULTSHOTGUN"] = {"Kampshotgun shells", "", nil, 0.01},
	["wbody|WEAPON_SAWNOFFSHOTGUN"] = {"Afskåret shotgun", "", nil, 0.01},
	["wammo|WEAPON_SAWNOFFSHOTGUN"] = {"Afskåret shotgun shells", "", nil, 0.01},
	["wbody|WEAPON_ASSAULTRIFLE"] = {"Kamprifle", "", nil, 0.01},
	["wammo|WEAPON_ASSAULTRIFLE"] = {"Kamprifle ammo", "", nil, 0.01},
	["wbody|WEAPON_GRENADELAUNCHER"] = {"Tåregas kaster", "", nil, 0.01},
	["wammo|WEAPON_GRENADELAUNCHER"] = {"Tåregas kaster ammo", "", nil, 0.01},
	["wbody|WEAPON_CARBINERIFLE"] = {"M4 Carbine", "", nil, 0.01},
	["wammo|WEAPON_CARBINERIFLE"] = {"M4 Carbine ammo", "", nil, 0.01},
	["wbody|WEAPON_HEAVYSNIPER"] = {"Snigskytte riffel", "", nil, 0.01},
	["wammo|WEAPON_HEAVYSNIPER"] = {"Snigskytte riffel ammo", "", nil, 0.01},
	["wbody|WEAPON_SNIPERRIFLE"] = {"Sniper", "", nil, 0.01},
	["wammo|WEAPON_SNIPERRIFLE"] = {"Sniper ammo", "", nil, 0.01},
	["wbody|WEAPON_GUSENBERG"] = {"Tommygun", "", nil, 0.01},
	["wammo|WEAPON_GUSENBERG"] = {"Tommygun drum-mag", "", nil, 0.01},
	["wbody|WEAPON_STUNGUN"] = {"Strømpistol", "", nil, 0.01},
	["wammo|WEAPON_STUNGUN"] = {"Strømpistol AMMO", "", nil, 0.01},
	["wbody|WEAPON_COMBATPISTOL"] = {"Tjenestepistol", "", nil, 0.01},
	["wammo|WEAPON_COMBATPISTOL"] = {"Tjenestepistol ammo", "", nil, 0.01},
	["wbody|WEAPON_COMBATPDW"] = {"Kamp PDW", "", nil, 0.01},
	["wammo|WEAPON_COMBATPDW"] = {"Kamp PDW ammo", "", nil, 0.01},
	["wbody|WEAPON_CARBINERIFLE_MK2"] = {"Karbinriffel Mk2", "", nil, 0.01},
	["wammo|WEAPON_CARBINERIFLE_MK2"] = {"Karbinriffel Mk2 ammo", "", nil, 0.01},
	["wbody|WEAPON_HEAVYSNIPER_MK2"] = {"Barrett M82 .50cal", "", nil, 0.01},
	["wammo|WEAPON_HEAVYSNIPER_MK2"] = {"Barrett M82 .50cal ammo", "", nil, 0.01},
	["wbody|WEAPON_SMG"] = {"SMG", "", nil, 0.01},
	["wammo|WEAPON_SMG"] = {"SMG ammo", "", nil, 0.01},
	["wbody|WEAPON_APPISTOL"] = {"AP Pistol", "", nil, 0.01},
	["wammo|WEAPON_APPISTOL"] = {"AP ammo", "", nil, 0.01},
	["wbody|WEAPON_MINISMG"] = {"MiniSMG", "", nil, 0.01},
	["wammo|WEAPON_MINISMG"] = {"MiniSMG ammo", "", nil, 0.01},
	["wbody|WEAPON_MICROSMG"] = {"MicroSMG", "", nil, 0.01},
	["wammo|WEAPON_MICROSMG"] = {"MicroSMG ammo", "", nil, 0.01},
	["wbody|WEAPON_COMPACTRIFLE"] = {"Mini AK", "", nil, 0.01},
	["wammo|WEAPON_COMPACTRIFLE"] = {"Mini AK ammo", "", nil, 0.01},
	["wbody|WEAPON_BATTLEAXE"] = {"Kampøkse", "", nil, 0.01},
	["wbody|WEAPON_BALL"] = {"Baseballbold", "", nil, 0.01},
	["wbody|WEAPON_GOLFCLUB"] = {"Golfkølle", "", nil, 0.01},
	["wbody|WEAPON_KNIFE"] = {"Kniv", "", nil, 0.01},
	["wbody|WEAPON_BAT"] = {"Baseball bat", "", nil, 0.01},
	["wbody|WEAPON_POOLCUE"] = {"Poolkø", "", nil, 0.01},
	["wbody|WEAPON_MACHETE"] = {"Machete", "", nil, 0.01},
	["wbody|WEAPON_CROWBAR"] = {"Brækjern", "", nil, 0.01},
	["wbody|WEAPON_SWITCHBLADE"] = {"Springkniv", "", nil, 0.01},
	["wbody|WEAPON_KNUCKLE"] = {"Knojern", "", nil, 0.01},
	["wbody|WEAPON_WRENCH"] = {"Svensknøgle", "", nil, 0.01},
	["wbody|WEAPON_HAMMER"] = {"Hammer", "", nil, 0.01},
	["wbody|WEAPON_SNOWBALL"] = {"Snebold", "", nil, 0.01},
	["wbody|WEAPON_DIGISCANNER"] = {"Radio", "", nil, 0.01},

	["extended|WEAPON_VINTAGEPISTOL"] = {"Extended clip til Vintage Pistol","",nil,0},
	["extended|WEAPON_SNSPISTOL"] = {"Extended clip til Vintage Pistol","",nil,0},
	["extended|WEAPON_PISTOL"] = {"Extended clip til Vintage Pistol","",nil,0},
	["silencer|WEAPON_VINTAGEPISTOL"] = {"Silencer til Vintage Pistol","",nil,0},
	["silencer|WEAPON_PISTOL_MK2"] = {"Silencer til Vintage Pistol","",nil,0},
	["silencer|WEAPON_PISTOL"] = {"Silencer til Vintage Pistol","",nil,0},
	["skin|WEAPON_PISTOL"] = {"skin til Pistol","",nil,0},
	["skin|WEAPON_HEAVYPISTOL"] = {"skin til Tung Pistol","",nil,0},
	["skin|WEAPON_SAWNOFFSHOTGUN"] = {"skin til Oversavet jagtgevær","",nil,0},
	["skin|WEAPON_APPISTOL"] = {"skin til AP Pistol","",nil,0},
	["skin|WEAPON_MICROSMG"] = {"skin til Micro Smg","",nil,0},



	["ARMOR1"] = {"Skudsikker vest", "", nil, 30.0},
	["ARMOR"] = {"Skudsikker vest", "", nil, 30.0},

	["c4"] = {"C4 Bombe", "", nil, 5.0},

	--Forsyningen, A&M, osv
	["gavekort1"] = {"Gavekort - 10000 kr", "", nil, 0},
	["gavekort2"] = {"Gavekort - 25000 kr", "", nil, 0},
	["gavekort3"] = {"Gavekort - 50000 kr", "", nil, 0},
	["gavekort4"] = {"Gavekort - 100000 kr", "", nil, 0},
	["faxekondi"] = {"Faxekondi", "", nil, 0},

	["vasketøj"] = {"Beskidt vasketøj", "", nil, 25},
	-- [""] = {"Sure sokker", "", nil, 0.1},


-- FISH
	["fisk1"] = {"Laks", "", nil, 2.00},
	["fisk2"] = {"Gedde", "", nil, 2.00},
	["fisk3"] = {"Ål", "", nil, 1.00},
	["fisk4"] = {"Regnbueørred", "", nil, 4.00},
	["fisk5"] = {"Brasen", "", nil, 3.00},
	["fisk6"] = {"Aborre", "", nil, 0.50},


-- Radioer
	["radio"] = {"Radio", "", nil, 2.00},


}

-- load more items function
local function load_item_pack(name)
	local items = module("cfg/item/"..name)
	if items then
		for k,v in pairs(items) do
			cfg.items[k] = v
		end
	else
		print("[vRP] item pack ["..name.."] not found")
	end
end

-- PACKS
load_item_pack("ting")
load_item_pack("required")
load_item_pack("jobs")
load_item_pack("food")
load_item_pack("drugs")

return cfg
