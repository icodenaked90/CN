Config = {}

Config.OpenMenu = 289 -- Key: U
Config.AntiSpamCooldown = 2
Config.Language = {
    Title = "Inventar",
    PleaseWait = "Vent venligst...",
    Error = "Der opstod et problem.",
    WarningTitle = "Advarsel",
    WeaponNotEquipped = "Du har ikke taget våbnet i brug endnu.",
    CannotBeUsed = "Denne genstand kan ikke benyttes fra dit inventar",
    NotEnoughtSpace = "Personen har ikke plads i sin taske",
    NoNearby = "Ingen personer i nærheden"
}

items = {}
-- Drugs
items["hampblade"] = {"drug", 0, "weed.png"}
items["skunk"] = {"drug", 0, "bagofweed.png"}
items["kokainblade"] = {"drug", 0, "cocaleaves.png"}
items["kokain"] = {"snifcoke", 0, "bagofcoain.png"}
items["syre"] = {"drug", 0, "syre.png"}
items["lsd"] = {"taglsd", 0, "lsd.png"}
items["svampe"] = {"drug", 0, "none.png"}
items["tøret_ketamin"] = {"drug", 0, "none.png"}
items["ketamin"] = {"drug", 0, "none.png"}

-- Røveri jubel
items["guldklaede"] = {"none", 0, "guldk.png"}
items["rolex"] = {"none", 0, "rolex.png"}
items["gucci"] = {"none", 0, "gucci.png"}

--bank stuff
items["nationalbankenplan"] = {"item", 0, "none.png"}
items["goldencard"] = {"item", 0, "none.png"}
items["silvercard"] = {"item", 0, "none.png"}
items["thermite"] = {"item", 0, "none.png"}

-- Drinks
items["water"] = {"drink", -25, "water.png"}
items["milk"] = {"drink", -25, "milk.png"}
items["coffee"] = {"drink", -25, "coffee.png"}
items["tea"] = {"drink", -25, "tea.png"}
items["icetea"] = {"drink", -25, "icetea.png"}
items["orangejuice"] = {"drink", -25, "orangejuice.png"}
items["gocagola"] = {"drink", -25, "cola.png"}
items["redgull"] = {"drink", -25, "redgull.png"}
items["lemonlimonad"] = {"drink", -25, "lemonade.png"}
items["sure"] = {"alkohol", -25, "sure.png"}
items["vodka"] = {"alkohol", -25, "vodka.png"}
items["sodavand"] = {"drink", -25, "soda.png"}
items["romogcola"] = {"alkohol", -25, "rumandcoke.png"}
items["ginogtonic"] = {"alkohol", -25, "ginandtonic.png"}
items["tequilla"] = {"alkohol", -25, "tequilla.png"}
items["sexbeach"] = {"alkohol", -25, "sexonthebeach.png"}
items["whisky"] = {"alkohol", -25, "whisky.png"}
items["gin"] = {"alkohol", -25, "gin.png"}
items["vodkajuice"] = {"alkohol", -25, "vodkajuice.png"}
items["kinder"] = {"alkohol", -25, "Kinderg-shot.png"}
items["monsterh"] = {"drink", -25, "monsterh.png"}
items["monsterg"] = {"drink", -25, "monsterg.png"}
items["strawshake"] = {"drink", -10, "strawshake.png"}
items["banashake"] = {"drink", -10, "bananshake.png"}
items["drpepper"] = {"drink", -10, "drpepper.png"}
items["ol"] = {"alkohol", 0.25, "none.png"}
items["ginandlemon"] = {"alkohol", -25, "none.png"}
items["strawberrydaiquiri"] = {"alkohol", -25, "none.png"}
items["aeblekageshots"] = {"alkohol", -25, "none.png"}
items["tequilashot"] = {"alkohol", -25, "none.png"}
items["skumbanan"] = {"alkohol", -25, "none.png"}
items["mojito"] = {"alkohol", -25, "none.png"}
items["pinacolada"] = {"alkohol", -25, "none.png"}
items["champagneglas"] = {"alkohol", -25, "none.png"}
items["belvederevodka"] = {"alkohol", -25, "none.png"}
items["isbjoern"] = {"alkohol", -25, "none.png"}
items["groentuborg"] = {"alkohol", -25, "none.png"}
items["greygoosevodka"] = {"alkohol", -25, "none.png"}
items["newcastlebrownale"] = {"alkohol", -25, "none.png"}
items["guinnesskilkenny"] = {"alkohol", -25, "none.png"}
items["hvidvinsglas"] = {"alkohol", -25, "none.png"}
items["roedvinsglas"] = {"alkohol", -25, "none.png"}
items["aleno16"] = {"alkohol", -25, "none.png"}
items["ol1"] = {"alkohol", -25, "none.png"}
items["ol2"] = {"alkohol", -25, "none.png"}
items["ol3"] = {"alkohol", -25, "none.png"}



-- Food
items["kinderegg"] = {"food", -10, "kinderegg.png"}
items["bread"] = {"food", -10, "bread.png"}
items["pizza"] = {"food", -30, "pizza.png"}
items["pizzasnegl"] = {"food", -30, "none.png"}
items["donut"] = {"food", -25, "donut.png"}
items["tacos"] = {"food", -15, "taco.png"}
items["sandwich"] = {"food", -20, "sandwich.png"}
items["kebab"] = {"food", -20, "durum.png"}
items["pdonut"] = {"food", -25, "donut.png"}
items["makrel2"] = {"food", -10, "makrel2.png"}
items["torsk2"] = {"food", -10, "none.png"}
items["reje2"] = {"food", -10, "none.png"}
items["brunkager"] = {"food", -10, "none.png"}
items["pebernødder"] = {"food", -10, "none.png"}
items["bedstemors_småkager"] = {"food", -10, "none.png"}
items["bigmac"] = {"food", -25, "bigmac.png"}
items["cct"] = {"food", -20, "cct.png"}
items["cheeseburger"] = {"food", -25, "cheeseburger.png"}
items["hamburger"] = {"food", -20, "hamburger.png"}
items["hotwings"] = {"food", -25, "hotwings.png"}
items["pulletpork"] = {"food", -20, "pulletpork.png"}
items["ccf"] = {"food", -15, "ccf.png"}
items["favburger"] = {"food", -25, "none.png"}
items["baconburg"] = {"food", -25, "cheeseburger.png"}
items["gayburger"] = {"food", -25, "cheeseburger.png"}
items["empsteak"] = {"food", -30, "none.png"}

items["chips1"] = {"food", -10, "none.png"}
items["chips2"] = {"food", -10, "none.png"}
items["chips3"] = {"food", -10, "none.png"}
items["chips4"] = {"food", -10, "none.png"}

--kasse
items["kasse1"] = {"kasse1", 0, "box.png"}
items["kasse2"] = {"kasse2", 0, "box.png"}
items["kasse3"] = {"kasse3", 0, "box.png"}
items["kasse4"] = {"kasse4", 0, "box.png"}
items["kasse5"] = {"kasse5", 0, "box.png"}
items["kasse6"] = {"kasse6", 0, "box.png"}
items["kasse7"] = {"kasse7", 0, "box.png"}
items["kasse8"] = {"kasse8", 0, "box.png"}
items["kasse9"] = {"kasse8", 0, "box.png"}
items["kasse10"] = {"kasse8", 0, "box.png"}
items["kasse11"] = {"kasse8", 0, "box.png"}
items["kasse12"] = {"kasse8", 0, "box.png"}
-- Fisk
items["fisk1"] = {"none", 0, "fish.png"}
items["fisk2"] = {"none", 0, "fish.png"}
items["fisk3"] = {"none", 0, "fish.png"}
items["fisk4"] = {"none", 0, "fish.png"}
items["fisk5"] = {"none", 0, "fish.png"}
items["fisk6"] = {"none", 0, "fish.png"}

-- Miner
items["kul"] = {"ammo", 0, "kul.png"}
items["diamant"] = {"ammo", 0, "diamond.png"}
items["guldmalm"] = {"ammo", 0, "goldore.png"}
items["guldbar"] = {"ammo", 0, "goldbar.png"}

-- Våbendealer
items["snsframe"] = {"ammo", 0, "none.png"}
items["pistolframe"] = {"ammo", 0, "none.png"}
items["heavypistolframe"] = {"ammo", 0, "none.png"}
items["pistol50frame"] = {"ammo", 0, "none.png"}
items["appistolframe"] = {"ammo", 0, "none.png"}
items["tec9pistolframe"] = {"ammo", 0, "none.png"}
items["oversavetjagtgeværframe"] = {"ammo", 0, "none.png"}
items["microsmgframe"] = {"ammo", 0, "none.png"}
items["snsbarrel"] = {"ammo", 0, "none.png"}
items["pistolbarrel"] = {"ammo", 0, "none.png"}
items["heavypistolbarrel"] = {"ammo", 0, "none.png"}
items["pistol50barrel"] = {"ammo", 0, "none.png"}
items["appistolbarrel"] = {"ammo", 0, "none.png"}
items["tec9pistolbarrel"] = {"ammo", 0, "none.png"}
items["oversavetjagtgeværbarrel"] = {"ammo", 0, "none.png"}
items["microsmgbarrel"] = {"ammo", 0, "none.png"}
items["snstrigger"] = {"ammo", 0, "none.png"}
items["pistoltrigger"] = {"ammo", 0, "none.png"}
items["heavypistoltrigger"] = {"ammo", 0, "none.png"}
items["pistol50trigger"] = {"ammo", 0, "none.png"}
items["appistoltrigger"] = {"ammo", 0, "none.png"}
items["tec9pistoltrigger"] = {"ammo", 0, "none.png"}
items["oversavetjagtgeværtrigger"] = {"ammo", 0, "none.png"}
items["microsmgtrigger"] = {"ammo", 0, "none.png"}
items["gunpowder"] = {"ammo", 0, "none.png"}
items["aluminium"] = {"ammo", 0, "none.png"}
items["aluminiumbar"] = {"ammo", 0, "none.png"}
items["steel"] = {"ammo", 0, "none.png"}
items["stainless"] = {"ammo", 0, "none.png"}
items["chromium"] = {"ammo", 0, "none.png"}
items["nickel"] = {"ammo", 0, "none.png"}
items["sulfur"] = {"ammo", 0, "sulfur.png"}

-- Items
items["paraply"] = {"item", 0, "umbrella.png"}
items["stok"] = {"item", 0, "stok.png"}
items["kuffert"] = {"item", 0, "suitcase.png"}
items["box"] = {"box", 0, "box.png"}
items["unicorn"] = {"item", 0, "hobbyhorse.png"}
items["dirty_money"] = {"item", 0, "money.png"}
items["bank_Penge"] = {"item", 0, "money.png"}
items["træ"] = {"item", 0, "wood.png"}
items["planke"] = {"item", 0, "plank.png"}
items["rod"] = {"item", 0, "none.png"}
items["regentsglas"] = {"item", 0, "none.png"}
items["vindruer"] = {"item", 0, "grape.png"}
items["pakke"] = {"item", 0, "box.png"}
items["brev"] = {"item", 0, "none.png"}
items["lægerapport"] = {"item", 0, "none.png"}
items["medicin"] = {"item", 0, "none.png"}
items["førstehjælpskasse"] = {"item", 0, "none.png"}
items["dive"] = {"item", 0, "dive.png"}
items["amfetamin"] = {"item", 0, "amphetamine.png"}
items["p2np"] = {"item", 0, "p2np.png"}
items["isopropanol"] = {"item", 0, "isopropanol.png"}
items["sølvpapir"] = {"item", 0, "tinfoil.png"}
items["eddikesyre"] = {"item", 0, "eddikesyre.png"}
items["naoh"] = {"item", 0, "NaOH.png"}
items["h2so4"] = {"item", 0, "h2so4.png"}
items["natrium"] = {"item", 0, "natrium.png"}
items["skaerebraender"] = {"skaere", 0, "firetorch.png"}
items["koben"] = {"item", 0, "crowbar.png"}
items["strip"] = {"strips", 0, "strip.png"}
items["bandage"] = {"item", 0, "bandage.png"}
items["repairkit"] = {"repairkit", 0, "repairkit.png"}
items["medkit"] = {"item", 0, "medkit.png"}
items["pills"] = {"item", 0, "pills.png"}
items["joint"] = {"smokejoint", 0, "joint.png"}
items["cigaret"] = {"rygcig", 0, "cigaret.png"}
items["ristetcigaret"] = {"item", 0, "cigaret.png"}
items["lighter"] = {"ristcig", 0, "lighter.png"}
items["paper"] = {"ruljoint", 0, "paper.png"}
items["cigaretpakke"] = {"cigpakke", 0, "cigaretpakke.png"}
items["hammer"] = {"item", 0, "hammer.png"}
items["kamera"] = {"item", 0, "kamera.png"}
items["fiskestang"] = {"item", 0, "none.png"}
items["guitar"] = {"item", 0, "none.png"}
items["kort"] = {"item", 0, "none.png"}
items["hotwingsb"] = {"hotwing", 0, "none.png"}
items["kikkert"] = {"kikkert", 0, "kikkert.png"}
items["pengepose"] = {"pengepose", 0, "none.png"}
items["money"] = {"money", 0, "money.png"}
items["gelatine"] = {"item", 0, "gelatine.png"}
items["klud"] = {"item", 0, "klud.png"}
items["flaske"] = {"item", 0, "flaske.png"}
items["benzin"] = {"item", 0, "patrolcan.png"}
items["GADGET_PARACHUTE"] = {"item", 0, "parachute.png"}
items["wammo|WEAPON_SNOWBALL"] = {"item", 0, "snebold.png"}
items["wammo|WEAPON_BALL"] = {"item", 0, "ball.png"}
items["c4"] = {"item", 0, "none.png"}

-- Phones
items["iphone"] = {"item", 0, "phone.png"}
items["samsung"] = {"item", 0, "phone.png"}
items["oneplus"] = {"item", 0, "phone.png"}
items["mobile_amf"] = {"item", 0, "phone.png"}
items["mobile_skunk"] = {"item", 0, "phone.png"}
items["mobile_kokain"] = {"item", 0, "phone.png"}
items["mobile_lsd"] = {"item", 0, "phone.png"}
items["blackmarketmobil"] = {"item", 0, "phone.png"}

--buglary
items["tyvegods"] = {"item", 0, "box.png"}

-- Keys
items["key_borgen"] = {"key", 0, "key.png"}
items["key_vagos"] = {"key", 0, "key.png"}
items["key_TL"] = {"key", 0, "key.png"}
items["key_stripklub2"] = {"key", 0, "key.png"}
items["key_advokat"] = {"key", 0, "key.png"}
items["key_realestate"] = {"key", 0, "key.png"}
items["key_lifeinvader2"] = {"key", 0, "key.png"}
items["key_bilforhandler"] = {"key", 0, "key.png"}
items["key_bolig1"] = {"key", 0, "key.png"}
items["key_bolig2_1"] = {"key", 0, "key.png"}
items["key_bolig6"] = {"key", 0, "key.png"}
items["key_bolig7"] = {"key", 0, "key.png"}
items["key_bolig22"] = {"key", 0, "key.png"}
items["key_bolig32"] = {"key", 0, "key.png"}
items["key_bolig33"] = {"key", 0, "key.png"}
items["key_kartel3"] = {"key", 0, "key.png"}
items["key_yj2"] = {"key", 0, "key.png"}
items["key_vinewoodhills2"] = {"key", 0, "key.png"}
items["key_vinewoodhills3"] = {"key", 0, "key.png"}
items["key_bahmas"] = {"key", 0, "key.png"}
items["key_galaxy2"] = {"key", 0, "key.png"}
items["key_panthersecurity"] = {"key", 0, "key.png"}
items["key_lostmc"] = {"key", 0, "key.png"}
items["key_lager"] = {"key", 0, "key.png"}
items["key_sandyairport"] = {"key", 0, "key.png"}
items["key_juggalo"] = {"key", 0, "key.png"}
items["key_vcf"] = {"key", 0, "key.png"}
items["key_elforsyning"] = {"key", 0, "key.png"}
items["key_drugdealer"] = {"key", 0, "key.png"}
items["key_madwayne"] = {"key", 0, "key.png"}
items["key_kure"] = {"key", 0, "key.png"}
items["key_playboy"] = {"key", 0, "key.png"}
items["key_brugtvogn"] = {"key", 0, "key.png"}
items["key_sandylab"] = {"key", 0, "key.png"}
items["key_vineyard"] = {"key", 0, "key.png"}
items["key_westvw"] = {"key", 0, "key.png"}
items["key_westvw2"] = {"key", 0, "key.png"}
items["key_gentrylane"] = {"key", 0, "key.png"}
items["key_soa"] = {"key", 0, "key.png"}
items["key_vargas"] = {"key", 0, "key.png"}
items["key_kirke"] = {"key", 0, "key.png"}
items["key_bloodz"] = {"key", 0, "key.png"}
items["key_am"] = {"key", 0, "key.png"}

-- Våben
items["wbody|WEAPON_VINTAGEPISTOL"] = {"weapon", 0, "pistol.png"}
items["wammo|WEAPON_VINTAGEPISTOL"] = {"ammo", 0, "pistol_ammo.png"}
items["wbody|WEAPON_PISTOL"] = {"weapon", 0, "pistol.png"}
items["wammo|WEAPON_PISTOL"] = {"ammo", 0, "pistol_ammo.png"}
items["wbody|WEAPON_PISTOL_MK2"] = {"weapon", 0, "pistol.png"}
items["wammo|WEAPON_PISTOL_MK2"] = {"ammo", 0, "pistol_ammo.png"}
items["wbody|WEAPON_SMG_MK2"] = {"weapon", 0, "none.png"}
items["wammo|WEAPON_SMG_MK2"] = {"ammo", 0, "none.png"}
items["wbody|WEAPON_MARKSMANPISTOL"] = {"weapon", 0, "pistol.png"}
items["wammo|WEAPON_MARKSMANPISTOL"] = {"ammo", 0, "pistol_ammo.png"}
items["wbody|WEAPON_SNSPISTOL"] = {"weapon", 0, "snspistol.png"}
items["wammo|WEAPON_SNSPISTOL"] = {"ammo", 0, "pistol_ammo.png"}
items["wbody|WEAPON_REVOLVER"] = {"weapon", 0, "pistol.png"}
items["wammo|WEAPON_REVOLVER"] = {"ammo", 0, "pistol_ammo.png"}
items["wbody|WEAPON_HEAVYPISTOL"] = {"weapon", 0, "deagle.png"}
items["wammo|WEAPON_HEAVYPISTOL"] = {"ammo", 0, "pistol_ammo.png"}
items["wbody|WEAPON_MACHINEPISTOL"] = {"weapon", 0, "appistol.png"}
items["wammo|WEAPON_MACHINEPISTOL"] = {"ammo", 0, "pistol_ammo.png"}
items["wbody|WEAPON_PISTOL50"] = {"weapon", 0, "deagle.png"}
items["wammo|WEAPON_PISTOL50"] = {"ammo", 0, "pistol_ammo.png"}
items["wbody|WEAPON_SNSPISTOL_MK2"] = {"weapon", 0, "deagle.png"}
items["wammo|WEAPON_SNSPISTOL_MK2"] = {"ammo", 0, "pistol_ammo.png"}
--items["wbody|WEAPON_MOLOTOV"] = {"weapon", 0, "molotov.png"}
--items["wammo|WEAPON_MOLOTOV"] = {"ammo", 0, "molotov.png"}
items["wbody|WEAPON_PUMPSHOTGUN"] = {"weapon", 0, "shotgun.png"}
items["wammo|WEAPON_PUMPSHOTGUN"] = {"ammo", 0, "pistol_ammo.png"}
items["wbody|WEAPON_ASSAULTSHOTGUN"] = {"weapon", 0, "shotgun.png"}
items["wammo|WEAPON_ASSAULTSHOTGUN"] = {"ammo", 0, "pistol_ammo.png"}
items["wbody|WEAPON_SAWNOFFSHOTGUN"] = {"weapon", 0, "shotgun.png"}
items["wammo|WEAPON_SAWNOFFSHOTGUN"] = {"ammo", 0, "pistol_ammo.png"}
items["wbody|WEAPON_ASSAULTRIFLE"] = {"weapon", 0, "carbinerifle.png"}
items["wammo|WEAPON_ASSAULTRIFLE"] = {"ammo", 0, "pistol_ammo_.png"}
items["wbody|WEAPON_GRENADELAUNCHER"] = {"weapon", 0, "none.png"}
items["wammo|WEAPON_GRENADELAUNCHER"] = {"ammo", 0, "none.png"}
items["wbody|WEAPON_CARBINERIFLE"] = {"weapon", 0, "carbinerifle.png"}
items["wammo|WEAPON_CARBINERIFLE"] = {"ammo", 0, "pistol_ammo.png"}
items["wbody|WEAPON_HEAVYSNIPER"] = {"weapon", 0, "none.png"}
items["wammo|WEAPON_HEAVYSNIPER"] = {"ammo", 0, "none.png"}
items["wbody|WEAPON_SNIPERRIFLE"] = {"weapon", 0, "none.png"}
items["wammo|WEAPON_SNIPERRIFLE"] = {"ammo", 0, "none.png"}
items["wbody|WEAPON_GUSENBERG"] = {"weapon", 0, "none.png"}
items["wammo|WEAPON_GUSENBERG"] = {"ammo", 0, "none.png"}
items["wbody|WEAPON_STUNGUN"] = {"weapon", 0, "stungun.png"}
items["wammo|WEAPON_STUNGUN"] = {"ammo", 0, "none.png"}
items["wbody|WEAPON_COMBATPISTOL"] = {"weapon", 0, "combatpistol.png"}
items["wammo|WEAPON_COMBATPISTOL"] = {"ammo", 0, "pistol_ammo.png"}
items["wbody|WEAPON_COMBATPDW"] = {"weapon", 0, "none.png"}
items["wammo|WEAPON_COMBATPDW"] = {"ammo", 0, "none.png"}
items["wbody|WEAPON_CARBINERIFLE_MK2"] = {"weapon", 0, "carbinerifle.png"}
items["wammo|WEAPON_CARBINERIFLE_MK2"] = {"ammo", 0, "none.png"}
items["wbody|WEAPON_HEAVYSNIPER_MK2"] = {"weapon", 0, "none.png"}
items["wammo|WEAPON_HEAVYSNIPER_MK2"] = {"ammo", 0, "none.png"}
items["wbody|WEAPON_SMG"] = {"weapon", 0, "smg.png"}
items["wammo|WEAPON_SMG"] = {"ammo", 0, "pistol_ammo.png"}
items["wbody|WEAPON_MINISMG"] = {"weapon", 0, "minismg.png"}
items["wammo|WEAPON_MINISMG"] = {"ammo", 0, "pistol_ammo.png"}
items["wbody|WEAPON_MICROSMG"] = {"weapon", 0, "microsmg.png"}
items["wammo|WEAPON_MICROSMG"] = {"ammo", 0, "pistol_ammo.png"}
items["wbody|WEAPON_COMPACTRIFLE"] = {"weapon", 0, "none.png"}
items["wammo|WEAPON_COMPACTRIFLE"] = {"ammo", 0, "pistol_ammo.png"}
items["wbody|WEAPON_BATTLEAXE"] = {"weapon", 0, "battleaxe.png"}
items["wbody|WEAPON_BALL"] = {"weapon", 0, "ball.png"}
items["wbody|WEAPON_GOLFCLUB"] = {"weapon", 0, "golfclub.png"}
items["wbody|WEAPON_KNIFE"] = {"weapon", 0, "knife.png"}
items["wbody|WEAPON_BAT"] = {"weapon", 0, "bat.png"}
items["wbody|WEAPON_POOLCUE"] = {"weapon", 0, "bat.png"}
items["wbody|WEAPON_MACHETE"] = {"weapon", 0, "machete.png"}
items["wbody|WEAPON_CROWBAR"] = {"weapon", 0, "crowbar.png"}
items["wbody|WEAPON_SWITCHBLADE"] = {"weapon", 0, "switchblade.png"}
items["wbody|WEAPON_KNUCKLE"] = {"weapon", 0, "brassknuckles.png"}
items["wbody|WEAPON_WRENCH"] = {"weapon", 0, "wrench.png"}
items["wbody|WEAPON_HAMMER"] = {"weapon", 0, "hammer.png"}
items["wbody|WEAPON_SNOWBALL"] = {"weapon", 0, "snebold.png"}
items["wbody|WEAPON_FLASHLIGHT"] = {"weapon", 0, "flashlight.png"}
items["wbody|WEAPON_PETROLCAN"] = {"weapon", 0, "patrolcan.png"}
items["wammo|WEAPON_PETROLCAN"] = {"weapon", 0, "none.png"}
items["wbody|WEAPON_NIGHTSTICK"] = {"weapon", 0, "nightstick.png"}
items["wbody|WEAPON_APPISTOL"] = {"weapon", 0, "appistol.png"}
items["wammo|WEAPON_APPISTOL"] = {"ammo", 0, "appistol_ammo.png"}
items["wbody|WEAPON_FIREEXTINGUISHER"] = {"weapon", 0, "none.png"}
items["wammo|WEAPON_FIREEXTINGUISHER"] = {"ammo", 0, "none.png"}
items["wbody|WEAPON_DIGISCANNER"] = {"weapon", 0, "none.png"}
items["wbody|WEAPON_RAYMINIGUN"] = {"weapon", 0, "none.png"}
items["wammo|WEAPON_RAYMINIGUN"] = {"ammo", 0, "none.png"}

--components
items["extended|WEAPON_VINTAGEPISTOL"] = {"extended", 0, "none.png"}
items["extended|WEAPON_SNSPISTOL"] = {"extended", 0, "none.png"}
items["extended|WEAPON_PISTOL"] = {"extended", 0, "none.png"}
items["silencer|WEAPON_VINTAGEPISTOL"] = {"silencer", 0, "none.png"}
items["silencer|WEAPON_PISTOL_MK2"] = {"silencer", 0, "none.png"}
items["silencer|WEAPON_PISTOL"] = {"silencer", 0, "none.png"}
items["skin|WEAPON_PISTOL"] = {"skin", 0, "none.png"}
items["skin|WEAPON_HEAVYPISTOL"] = {"skin", 0, "none.png"}
items["skin|WEAPON_SAWNOFFSHOTGUN"] = {"skin", 0, "none.png"}
items["skin|WEAPON_APPISTOL"] = {"skin", 0, "none.png"}
items["skin|WEAPON_MICROSMG"] = {"skin", 0, "none.png"}


items["body_armor"] = {"armor1", 0, "bodyarmor.png"}
items["body_armor1"] = {"armor2", 0, "bodyarmor.png"}

items["mechabo"] = {"item", 0, "none.png"}
--items["wbody|WEAPON_ARMOR"] = {"ARMOR1", 0, "bodyarmor.png"}
--items["wbody|WEAPON_ARMOR"] = {"ARMOR", 0, "bodyarmor.png"}

--Radioer

items["radio_våbendealer"] = {"item", 0, "none.png"}
items["radio_aks"] = {"item", 0, "none.png"}
items["radio_drugdealer"] = {"item", 0, "none.png"}

items["radio_cali"] = {"item", 0, "none.png"}
items["radio_lastidda"] = {"item", 0, "none.png"}
items["radio_vagos"] = {"item", 0, "none.png"}
items["radio_soa"] = {"item", 0, "none.png"}
items["radio_polo"] = {"item", 0, "none.png"}
items["radio_thelost"] = {"item", 0, "none.png"}
items["radio_loszetas"] = {"item", 0, "none.png"}

items["radio"] = {"item", 0, "none.png"}


items["gavekort1"] = {"item", 0, "none.png"}
items["gavekort2"] = {"item", 0, "none.png"}
items["gavekort3"] = {"item", 0, "none.png"}
items["gavekort4"] = {"item", 0, "none.png"}

items["faxekondi"] = {"faxekondi", 0, "none.png"}
