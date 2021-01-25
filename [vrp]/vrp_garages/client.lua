--[[Proxy/Tunnel]]--

vRPgt = {}
Tunnel.bindInterface("vRP_garages",vRPgt)
Proxy.addInterface("vRP_garages",vRPgt)
vRP = Proxy.getInterface("vRP")
vRPsb = Proxy.getInterface("vrp_extended")

--[[Local/Global]]--

GVEHICLES = {}
local inrangeofgarage = false
local currentlocation = nil
local myplate = ""
local impounded = 0

local garages = {
  {name="Garage", colour=3, id=357, marker=27, coords = {215.55436706543,-788.25372314453,29.872000732422}, hidden=false}, -- Centrum P-Plads
  {name="Garage", colour=3, id=357, marker=27, coords = {-334.685, 289.773, 84.905}, hidden=false}, -- Tequilala ved P-Plads
  {name="Garage", colour=3, id=357, marker=27, coords = {-55.272, -1838.71, 25.638}, hidden=true}, -- Gang P-Plads
  {name="Garage", colour=3, id=357, marker=27, coords = {126.434, 6610.04, 30.880}, hidden=false}, -- Paleto Bay P-Plads
  {name="Garage", colour=3, id=357, marker=27, coords = {-1692.0040283203,-938.9443359375,6.6783599853516}, hidden=false}, -- Ved parkingsplads tæt på yachten
  {name="Garage", colour=3, id=357, marker=27, coords = {-1791.6076660156,459.33410644531,127.30799865723}, hidden=true}, -- Kartellet
  {name="Garage", colour=3, id=357, marker=27, coords = {-2035.372, -470.555, 10.466}, hidden=false}, -- Strand P-Plads
  {name="Garage", colour=3, id=357, marker=27, coords = {-976.59875488281, -2702.88671875, 12.9}, hidden=false}, -- Lufthavn
  {name="Garage", colour=3, id=357, marker=27, coords = {291.60162353516,-336.40170288086,43.919876098633}, hidden=false}, -- Retssal-garage
  {name="Garage", colour=3, id=357, marker=27, coords = {-107.45169067383,837.25415039063,234.67681884766}, hidden=true}, -- Vinewoodhills 2
  {name="Garage", colour=3, id=357, marker=27, coords = {2054.6848144531,3179.9624023438,44.21898727417}, hidden=false}, --Ved siden af Yellow Jack
  {name="Garage", colour=3, id=357, marker=27, coords = {-1063.9470214844, -1419.7119140625, 4.445440788269}, hidden=false}, --Vestlig P-Plads
  {name="Garage", colour=3, id=357, marker=27, coords = {436.12869262695, -1021.3997192383, 27.8041456604}, hidden=true}, -- Garage PD
  {name="Garage", colour=3, id=357, marker=27, coords = {-463.47357177734, 6037.0473632813, 30.340528488159}, hidden=true}, -- Paleto PD
  {name="Garage", colour=3, id=357, marker=27, coords = {126.73007202148,-2200.978515625,5.0333251953125}, hidden=true}, -- Slagterkælder
  {name="Garage", colour=3, id=357, marker=27, coords = {1189.2893066406, -3230.6276855469, 5.0287690162659}, hidden=true}, -- Lastbiljob
  {name="Garage", colour=3, id=357, marker=27, coords = {2661.7719726563, 2848.2077636719, 38.47466583252}, hidden=true}, -- P-Plads ved minearbejder
  {name="Garage", colour=3, id=357, marker=27, coords = {-796.51721191406, 303.63195800781, 84.700401306152}, hidden=true}, -- P-Plads Penthouse lejligheder
  {name="Garage", colour=3, id=357, marker=27, coords = {-136.80668640137,901.56072998047,234.66098022461}, hidden=true}, -- Vinewoodhills 3.
  {name="Garage", colour=3, id=357, marker=27, coords = {-561.38470458984,301.13241577148,83.132629394531}, hidden=true},  -- Tequilala garage
  {name="Garage", colour=3, id=357, marker=27, coords = {902.69830322266, -184.05155944824, 72.95}, hidden=true}, -- Taxa job
  {name="Garage", colour=3, id=357, marker=27, coords = {-576.91052246094, 5250.8061523438,  69.46715087891}, hidden=true}, -- Træhugger job
  {name="Garage", colour=3, id=357, marker=27, coords = {1862.4067382813, 2567.0131835938, 44.7}, hidden=true}, -- Fængsel
  {name="Garage", colour=3, id=357, marker=27, coords = {1866.0242919922, 3698.72265625,  32.68}, hidden=true}, -- PD i Sandy Shores
  {name="Garage", colour=3, id=357, marker=27, coords = {969.26153564453,-1824.6768798828,30.099637985229},hidden = true}, -- Nomads
  {name="Garage", colour=3, id=357, marker=27, coords = {822.17193603516,-2143.9265136719,28.787622451782}, hidden=true}, -- Våbenbutik
  {name="Garage", colour=3, id=357, marker=27, coords = {-360.65689086914,-124.52239990234,37.695983886719}, hidden=true}, -- Domingo auto garage
  {name="Garage", colour=3, id=357, marker=27, coords = {-96.847236633301,88.351211547852,70.804635620117}, hidden=true}, -- Domingo auto garage
  {name="Garage", colour=3, id=357, marker=27, coords = {546.48077392578,-141.13473510742,58.81547164917}, hidden=true}, -- Super Mechanics garage
  {name="Garage", colour=3, id=357, marker=27, coords = {-1575.7943115234,-85.924156188965,53.134586334229}, hidden=true}, --bolig33
  {name="Garage", colour=3, id=357, marker=27, coords = {-1576.0581054688,-79.404426574707,53.134586334229}, hidden=true}, --bolig33
  {name="Garage", colour=3, id=357, marker=27, coords = {3636.0817871094, 3760.9877929688, 27.515718460083}, hidden=true}, -- NAOH garage
  {name="Garage", colour=3, id=357, marker=27, coords = {332.63272094727,-2037.9891357422,20.045518875122}, hidden=true}, -- vagos garage
  {name="Garage", colour=3, id=357, marker=27, coords = {494.7096862793,-1966.8487548828,23.901721954346}, hidden=true},--Minebilen
  {name="Garage", colour=3, id=357, marker=27, coords = {-1578.7253417969,-265.63876342773,47.375653839111}, hidden=true},--Billige Lejligheder
  {name="Garage", colour=3, id=357, marker=27, coords = {-1192.8804931641,-1490.8082275391,3.3796672821045}, hidden=false},--Strand garage
  {name="Garage", colour=3, id=357, marker=27, coords = {-758.80419921875,-910.87615966797,18.514918823242}, hidden=true},--Luksus lejligheder
  {name="Garage", colour=3, id=357, marker=27, coords = {127.83580780029,578.03771972656,182.25244140625}, hidden=true},--Luksus lejligheder 2
  {name="Garage", colour=3, id=357, marker=27, coords = {-634.74047851563,56.416160583496,43.929175567627}, hidden=true},--Lejligheder Nordbyen
  {name="Garage", colour=3, id=357, marker=27, coords = {891.583984375,-3238.5327148438,-99.283004760742}, hidden=true},--bunker garagae
  {name="Garage", colour=3, id=357, marker=27, coords = {327.62478637695,-205.29089355469,53.086261749268}, hidden=true},--Pink cage motel
  {name="Garage", colour=3, id=357, marker=27, coords = {497.84094238281,-1332.9488525391,28.334928512573}, hidden=true},--Indbrudstyv garage
  {name="Garage", colour=3, id=357, marker=27, coords = {1547.1286621094,-2093.6647949219,76.256700134277}, hidden=true},--Skraldebil garage
  {name="Garage", colour=3, id=357, marker=27, coords = {1122.6381835938,2657.7644042969,36.997081756592}, hidden=true},--Motel SS
  {name="Garage", colour=3, id=357, marker=27, coords = {-1479.6070556641,-662.42199707031,28.943237304688}, hidden=true},--Motel Pennena Beach
  {name="Garage", colour=3, id=357, marker=27, coords = {-1769.7432861328,3065.1330566406,32.816833496094}, hidden=true},-- Drugdealer garage
  {name="Garage", colour=3, id=357, marker=27, coords = {307.78128051758,-1093.3569335938,27.489896774292}, hidden=true},-- lejligheder midtbyen
  {name="Garage", colour=3, id=357, marker=27, coords = {-1097.4008789063,359.60791015625,67.504898071289}, hidden=true},-- La eme
  {name="Garage", colour=3, id=357, marker=27, coords = {1430.7973632813,1112.3089599609,113.22887420654}, hidden=true},-- La eme
  {name="Garage", colour=3, id=357, marker=27, coords = {264.68438720703,-1786.3132324219,26.113025665283}, hidden=true},-- La eme lager
  {name="Garage", colour=3, id=357, marker=27, coords = {218.00485229492,378.4241027832,105.49760437012}, hidden=true},-- Lager bygning nordbyen
  {name="Garage", colour=3, id=357, marker=27, coords = {1515.9168701172,1705.1787109375,110.12971496582}, hidden=true},-- Lager bygning Skunk tøring
  {name="Garage", colour=3, id=357, marker=27, coords = {-1530.8994140625,82.708793640137,56.713233947754}, hidden=true},-- Playboymansion
  {name="Garage", colour=3, id=357, marker=27, coords = {-1547.9592285156,106.72329711914,55.779750823975}, hidden=true},-- Playboymansion 2
  {name="Garage", colour=3, id=357, marker=27, coords = {-821.45709228516,183.64402770996,71.002319335938}, hidden=true},-- Polo
  {name="Garage", colour=3, id=357, marker=27, coords = {-52.900573730469,-781.43963623047,44.236064910889}, hidden=true},-- sikkerhedsvagt garage
  {name="Garage", colour=3, id=357, marker=27, coords = {-25.133131027222,-1677.7164306641,28.470043182373}, hidden=true},-- brugtvognsforhandler 1
  {name="Garage", colour=3, id=357, marker=27, coords = {-1909.4935302734,2039.0633544922,139.73760986328}, hidden=true},-- Vingården
  {name="Garage", colour=3, id=357, marker=27, coords = {-31.661283493042,-1654.8876953125,28.486728668213}, hidden=true},-- Brugtvogn
  {name="Garage", colour=3, id=357, marker=27, coords = {-200.42204284668,-278.13729858398,48.16346346}, hidden=true},-- AKS
  {name="Garage", colour=3, id=357, marker=27, coords = {1956.8421630859,3769.3901367188,32.203243255615,89.650514221191}, hidden=false},-- Tanken i Sandy
  {name="Garage", colour=3, id=357, marker=27, coords = {1567.4272460938,3793.4919433594,33.285081481934}, hidden=false},-- Ved bådgarage i Sandy

  -- Gruppering / specielle huse garager
  {name="Garage", colour=3, id=357, marker=27, coords = {-814.5706, 160.5650,  70.0500}, hidden=true}, -- Rockford Hills 3
  {name="Garage", colour=3, id=357, marker=27, coords = {-292.29693603516,6307.0434570313,30.392248535156}, hidden=true}, -- P.E.T
  {name="Garage", colour=3, id=357, marker=27, coords = {-558.44458007813,334.86422729492,84.416313171387}, hidden=true},--Outlaws
  {name="Garage", colour=3, id=357, marker=27, coords = {12.7956, 548.4217,  174.8835}, hidden=true}, -- Whispymound Drive 3671
  {name="Garage", colour=3, id=357, marker=27, coords = {1393.4357, 1117.334,  113.8976}, hidden=true}, -- La Torre
  {name="Garage", colour=3, id=357, marker=27, coords = {970.2740, -138.7984,  72.4351}, hidden=true}, -- The Lost MC
  {name="Garage", colour=3, id=357, marker=27, coords = {1943.619140625, 3828.4538574219, 31.1}, hidden=true}, -- Uno Por Ciento
  {name="Garage", colour=3, id=357, marker=27, coords = {-103.9112,-607.6959, 35.0732}, hidden=true}, -- RoadRunners
  {name="Garage", colour=3, id=357, marker=27, coords = {-24.4812, -1439.1867, 29.7531}, hidden=true}, -- The Family
  {name="Garage", colour=3, id=357, marker=27, coords = {-96.407943725586,-806.22863769531,35.436679840088}, hidden=true}, -- Panther Security
  {name="Garage", colour=3, id=357, marker=27, coords = {353.79428100586, 437.59439086914, 145.10436340332}, hidden=true}, -- De Lilla
  {name="Garage", colour=3, id=357, marker=27, coords = {17.656946182251,3678.7897949219,38.755016326904}, hidden=true}, -- Stab city
  {name="Garage", colour=3, id=357, marker=27, coords = {-3031.5537109375,3334.0876464844,9.193376541138}, hidden=true}, -- Bunker
  {name="Garage", colour=3, id=357, marker=27, coords = {-335.58090209961,-757.57702636719,32.968517303467}}, -- Parkingshus
  {name="Garage", colour=3, id=357, marker=27, coords = {-615.70324707031,-920.34558105469,22.24633102417}, hidden=true}, -- Parkingshus
  {name="Garage", colour=3, id=357, marker=27, coords = {-1098.5596923828,-256.49667358398,36.586393737793}, hidden=true}, -- Lifeinvader
  {name="Garage", colour=3, id=357, marker=27, coords = {-1899.5939941406,-560.90447998047,10.696368598938}, hidden=true}, -- Psykolog
  {name="Garage", colour=3, id=357, marker=27, coords = {-8.1947259902954,-1083.6663818359,25.67590713501}, hidden=true}, -- Bilforhandler
  {name="Garage", colour=3, id=357, marker=27, coords = {1750.6068115234,3324.6889648438,40.20542678833}, hidden=true}, -- Autoværksted - Sandy
  {name="Garage", colour=3, id=357, marker=27, coords = {911.40606689453,-953.61669921875,38.499809265137}, hidden=true}, -- Autoværksted - Midtby
  {name="Garage", colour=3, id=357, marker=27, coords = {529.37799072266,166.49632263184,99.072547912598}, hidden=true}, -- Matthew Smith

  {name="Garage", colour=3, id=357, marker=27, coords = {88.136688232422,-1968.7805175781,19.547434616089}, hidden=true}, -- Grove st.
  {name="Garage", colour=3, id=357, marker=27, coords = {81.064102172852,-1931.3579101563,19.525780487061}, hidden=true}, -- Bolig LTF
  {name="Garage", colour=3, id=357, marker=27, coords = {116.80141448975,-1950.0343017578,19.551317977905}, hidden=true}, -- Bolig LTF
  {name="Garage", colour=3, id=357, marker=27, coords = {-1594.9522705078,-3230.1394042969,12.64495010376}, hidden=true}, -- Bolig 10
  {name="Garage", colour=3, id=357, marker=27, coords = {-53.234241485596,-1455.8657226563,30.864250946045}, hidden=true}, -- Bolig
  {name="Garage", colour=3, id=357, marker=27, coords = {-38.54821395874,-1447.6389160156,30.398317718506}, hidden=true}, -- Bolig 17
  {name="Garage", colour=3, id=357, marker=27, coords = {1976.2545166016,3826.6040039063,31.360130310059}, hidden=true}, -- Bolig 13
  {name="Garage", colour=3, id=357, marker=27, coords = {469.62716674805,-1577.0975341797,28.172610092163}, hidden=true}, -- Lejlighed #2
  {name="Garage", colour=3, id=357, marker=27, coords = {137.86364746094,316.90713500977,111.148671875}, hidden=true}, -- Clinton Ave
  {name="Garage", colour=3, id=357, marker=27, coords = {-129.43049621582,1003.2660522461,234.83207092285}, hidden=true}, -- Cali 1
  {name="Garage", colour=3, id=357, marker=27, coords = {-123.73100280762,1005.9843139648,234.83207092285}, hidden=true}, -- Cali 2
  {name="Garage", colour=3, id=357, marker=27, coords = {-2585.1677246094,1931.2307128906,166.3129119873}, hidden=true}, -- Bolig 6
  {name="Garage", colour=3, id=357, marker=27, coords = {-1057.9445800781,733.84393310547,164.44985961914}, hidden=true}, -- Bolig 5
  {name="Garage", colour=3, id=357, marker=27, coords = {-871.65405273438,-50.883419036865,37.354755401611}, hidden=true}, -- Bolig 1
  {name="Garage", colour=3, id=357, marker=27, coords = {169.698878288269,-1835.6181640625,23.636974716187}, hidden=true}, -- Bolig 17
  {name="Garage", colour=3, id=357, marker=27, coords = {33.200035095215,-1890.3310546875,22.241594314575}, hidden=true}, -- Bolig Grove 2
  {name="Garage", colour=3, id=357, marker=27, coords = {-748.16284179688,818.83630371094,212.35179138184}, hidden=true}, -- Bolig 28
  {name="Garage", colour=3, id=357, marker=27, coords = {1292.6281738281,-1732.0087890625,52.300384521484}, hidden=true}, -- El Burro Heights
  {name="Garage", colour=3, id=357, marker=27, coords = {6.27534532547,-1827.4763183594,24.04705619812}, hidden=true}, -- Grove nr. 1
  {name="Garage", colour=3, id=357, marker=27, coords = {-1546.1851806641,887.02026367188,179.79507995605}, hidden=true}, -- Bandehus
  {name="Garage", colour=3, id=357, marker=27, coords = {1989.77734375,3030.8176269531,46.056331634521}, hidden=true}, -- Bandidos Borgen
  {name="Garage", colour=3, id=357, marker=27, coords = {-53.49654006958,350.30773925781,111.44748687744}, hidden=true}, -- Gentry Lane
  --{name="Garage", colour=3, id=357, marker=27, coords = {1970.6782226563,5181.1284179688,46.892143249512}, hidden=true}, -- Sandy Lab
  {name="Garage", colour=3, id=357, marker=27, coords = {-2326.9614257813,3252.7316894531,31.637629089355}, hidden=true}, -- Militærbase
  {name="Garage", colour=3, id=357, marker=27, coords = {-1269.6842041016,504.94021606445,96.358241271973}, hidden=true}, -- Alex Vargas hulen
  {name="Garage", colour=3, id=357, marker=27, coords = {-693.73986816406,5777.0668945313,17.330945968628}, hidden=true}, -- Paleto Motel
  {name="Garage", colour=3, id=357, marker=27, coords = {3810.6931152344,4462.9213867188,4.2251958847046}, hidden=true}, -- Ketamin Garage
  {name="Garage", colour=3, id=357, marker=27, coords = {217.39163208008,757.47131347656,204.66734313965}, hidden=true}, -- Phille hus
  {name="Garage", colour=3, id=357, marker=27, coords = {972.8251953125,-1710.6752929688,29.134071350098}, hidden=true}, -- Max Lager
  {name="Garage", colour=3, id=357, marker=27, coords = {-439.89956665039,-2167.30859375,9.318187713623}, hidden=true}, -- Benja Lager
  {name="Garage", colour=3, id=357, marker=27, coords = {-1208.4318847656,272.35708618164,68.543479919434}, hidden=true}, -- Planke hus
}

local impound = {
  {name="Konfiskeret køretøjer", colour=47, id=524, marker=27, coords = {405.23922729492,-1643.7677001953,28.201948318481}, hidden=false},
}


vehicles = {}
garageSelected = {x=nil, y=nil, z=nil, h=nil}
selectedPage = 0

lang_string = {
  menu1 = "Tryk ~g~E~s~ for at parkere",
  menu2 = "Hent køretøj",
  menu3 = "Luk",
  menu4 = "Biler",
  menu5 = "Valgmuligheder",
  menu6 = "Hent",
  menu7 = "Tilbage",
  menu8 = "Tryk ~g~E~s~ for at åbne garagen",
  konfiskeret = "Tryk ~g~E~s~ for liste af konfiskeret køretøjer",
  menu9 = "Sælg",
  menu10 = "Tryk ~g~E~s~ for at sælge køretøjet",
  menu11 = "Opdater Garagen",
  menu12 = "Næste",
  daybournekek = "Du kan ikke bruge garagen når du er i koma",
  state1 = "Ude",
  state2 = "Inde",
  text1 = "Området er overfyldt",
  text2 = "Køretøjet er ikke parkeret",
  text3 = "Køretøjer er ude",
  text4 = "Dette er ikke dit køretøj",
  text5 = "Køretøj parkeret",
  text6 = "Intet køretøj i nærheden",
  text7 = "Køretøj solgt",
  text8 = "Køretøj købt, god tur",
  text9 = "Du har ikke råd",
  text10 = "Køretøj opdateret"
}
--[[Functions]]--

function vRPgt.spawnGarageVehicle(vtype, name, vehicle_plate, vehicle_colorprimary, vehicle_colorsecondary, vehicle_pearlescentcolor, vehicle_wheelcolor, vehicle_plateindex, vehicle_neoncolor1, vehicle_neoncolor2, vehicle_neoncolor3, vehicle_windowtint, vehicle_wheeltype, vehicle_mods0, vehicle_mods1, vehicle_mods2, vehicle_mods3, vehicle_mods4, vehicle_mods5, vehicle_mods6, vehicle_mods7, vehicle_mods8, vehicle_mods9, vehicle_mods10, vehicle_mods11, vehicle_mods12, vehicle_mods13, vehicle_mods14, vehicle_mods15, vehicle_mods16, vehicle_turbo, vehicle_tiresmoke, vehicle_xenon, vehicle_mods23, vehicle_mods24, vehicle_neon0, vehicle_neon1, vehicle_neon2, vehicle_neon3, vehicle_bulletproof, vehicle_smokecolor1, vehicle_smokecolor2, vehicle_smokecolor3, vehicle_modvariation, fuel, damage) -- vtype is the vehicle type (one vehicle per type allowed at the same time)
  myplate = vehicle_plate
  local vehicle = vehicles[vtype]
  if vehicle and not IsVehicleDriveable(vehicle[3]) then -- precheck if vehicle is undriveable
    -- despawn vehicle
    SetVehicleHasBeenOwnedByPlayer(vehicle[3],false)
    Citizen.InvokeNative(0xAD738C3085FE7E11, vehicle[3], false, true) -- set not as mission entity
    SetVehicleAsNoLongerNeeded(Citizen.PointerValueIntInitialized(vehicle[3]))
    Citizen.InvokeNative(0xEA386986E786A54F, Citizen.PointerValueIntInitialized(vehicle[3]))


    TriggerEvent("vrp_garages:setVehicle", vtype, nil)
  end

  vehicle = vehicles[vtype]
  if vehicle == nil then
    -- load vehicle model
    local mhash = GetHashKey(name)
    TriggerServerEvent("vrp_extended:collectvehicles",mhash,name)
    local i = 0
    while not HasModelLoaded(mhash) do
      RequestModel(mhash)
      Citizen.Wait(10)
      -- i = i+1
    end

    -- spawn car
    if HasModelLoaded(mhash) then
      local x,y,z = vRP.getPosition({})
      -- FreezeEntityPosition(GetPlayerPed(-1),true)
      TriggerEvent("pNotify:SendNotification",{text = "Dit køretøj er ved at blive gjort klar",type = "info",timeout = (5000),layout = "bottomCenter",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
      Wait(5000)
      -- FreezeEntityPosition(GetPlayerPed(-1),false)

      local x2,y2,z2 = vRP.getPosition({})
      local dist = GetDistanceBetweenCoords(x,y,z,x2,y2,z2, true)
      if dist > 2 or IsPedBeingStunned(GetPlayerPed(-1)) or IsPedRagdoll(PlayerPedId()) then
        TriggerEvent("pNotify:SendNotification",{text = "Du gik for langt væk og køretøjet blev derfor i garagen",type = "info",timeout = (5000),layout = "bottomCenter",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
        return
      end
      local nveh = CreateVehicle(mhash, x,y,z+0.5, GetEntityHeading(GetPlayerPed(-1)), true, false) -- added player heading
      SetVehicleOnGroundProperly(nveh)
      SetVehRadioStation(nveh, "OFF")
      SetEntityInvincible(nveh,false)
      SetPedIntoVehicle(GetPlayerPed(-1),nveh,-1) -- put player inside
      if vRPsb.getUser().job == "Våbendealer" then
        vRP.changeNummerPlate(5)
      else
        SetVehicleNumberPlateText(nveh, "P " .. vRP.getRegistrationNumber({}))
      end
      --Citizen.InvokeNative(0xAD738C3085FE7E11, nveh, true, true) -- set as mission entity
      SetVehicleHasBeenOwnedByPlayer(nveh,true)

      local nid = NetworkGetNetworkIdFromEntity(nveh)
      SetNetworkIdCanMigrate(nid,true)

      TriggerEvent("vrp_garages:setVehicle", vtype, {vtype,name,nveh})

      SetModelAsNoLongerNeeded(mhash)



      --grabbing customization
      local plate = plate
      local primarycolor = tonumber(vehicle_colorprimary)
      local secondarycolor = tonumber(vehicle_colorsecondary)
      local pearlescentcolor = vehicle_pearlescentcolor
      local wheelcolor = vehicle_wheelcolor
      local plateindex = tonumber(vehicle_plateindex)
      local neoncolor = {vehicle_neoncolor1,vehicle_neoncolor2,vehicle_neoncolor3}
      local windowtint = vehicle_windowtint
      local wheeltype = tonumber(vehicle_wheeltype)
      local mods0 = tonumber(vehicle_mods0)
      local mods1 = tonumber(vehicle_mods1)
      local mods2 = tonumber(vehicle_mods2)
      local mods3 = tonumber(vehicle_mods3)
      local mods4 = tonumber(vehicle_mods4)
      local mods5 = tonumber(vehicle_mods5)
      local mods6 = tonumber(vehicle_mods6)
      local mods7 = tonumber(vehicle_mods7)
      local mods8 = tonumber(vehicle_mods8)
      local mods9 = tonumber(vehicle_mods9)
      local mods10 = tonumber(vehicle_mods10)
      local mods11 = tonumber(vehicle_mods11)
      local mods12 = tonumber(vehicle_mods12)
      local mods13 = tonumber(vehicle_mods13)
      local mods14 = tonumber(vehicle_mods14)
      local mods15 = tonumber(vehicle_mods15)
      local mods16 = tonumber(vehicle_mods16)
      local turbo = vehicle_turbo
      local tiresmoke = vehicle_tiresmoke
      local xenon = vehicle_xenon
      local mods23 = tonumber(vehicle_mods23)
      local mods24 = tonumber(vehicle_mods24)
      local neon0 = vehicle_neon0
      local neon1 = vehicle_neon1
      local neon2 = vehicle_neon2
      local neon3 = vehicle_neon3
      local bulletproof = vehicle_bulletproof
      local smokecolor1 = vehicle_smokecolor1
      local smokecolor2 = vehicle_smokecolor2
      local smokecolor3 = vehicle_smokecolor3
      local variation = vehicle_modvariation

      local fuel = tonumber(fuel)
      local damage = tonumber(damage)

      --setting customization
      SetVehicleColours(nveh, primarycolor, secondarycolor)
      SetVehicleExtraColours(nveh, tonumber(pearlescentcolor), tonumber(wheelcolor))
      SetVehicleNumberPlateTextIndex(nveh,plateindex)
      SetVehicleNeonLightsColour(nveh,tonumber(neoncolor[1]),tonumber(neoncolor[2]),tonumber(neoncolor[3]))
      SetVehicleTyreSmokeColor(nveh,tonumber(smokecolor1),tonumber(smokecolor2),tonumber(smokecolor3))
      SetVehicleModKit(nveh,0)
      SetVehicleMod(nveh, 0, mods0)
      SetVehicleMod(nveh, 1, mods1)
      SetVehicleMod(nveh, 2, mods2)
      SetVehicleMod(nveh, 3, mods3)
      SetVehicleMod(nveh, 4, mods4)
      SetVehicleMod(nveh, 5, mods5)
      SetVehicleMod(nveh, 6, mods6)
      SetVehicleMod(nveh, 7, mods7)
      SetVehicleMod(nveh, 8, mods8)
      SetVehicleMod(nveh, 9, mods9)
      SetVehicleMod(nveh, 10, mods10)
      SetVehicleMod(nveh, 11, mods11)
      SetVehicleMod(nveh, 12, mods12)
      SetVehicleMod(nveh, 13, mods13)
      SetVehicleMod(nveh, 14, mods14)
      SetVehicleMod(nveh, 15, mods15)
      SetVehicleMod(nveh, 16, mods16)

      SetVehicleFuelLevel(nveh, fuel)
      SetVehicleEngineHealth(nveh, damage)

      if turbo == "on" then
        ToggleVehicleMod(nveh, 18, true)
      else
        ToggleVehicleMod(nveh, 18, false)
      end
      if tiresmoke == "on" then
        ToggleVehicleMod(nveh, 20, true)
      else
        ToggleVehicleMod(nveh, 20, false)
      end
      if xenon == "on" then
        ToggleVehicleMod(nveh, 22, true)
      else
        ToggleVehicleMod(nveh, 22, false)
      end
      SetVehicleWheelType(nveh, tonumber(wheeltype))
      SetVehicleMod(nveh, 23, mods23)
      SetVehicleMod(nveh, 24, mods24)
      if neon0 == "on" then
        SetVehicleNeonLightEnabled(nveh,0, true)
      else
        SetVehicleNeonLightEnabled(nveh,0, false)
      end
      if neon1 == "on" then
        SetVehicleNeonLightEnabled(nveh,1, true)
      else
        SetVehicleNeonLightEnabled(nveh,1, false)
      end
      if neon2 == "on" then
        SetVehicleNeonLightEnabled(nveh,2, true)
      else
        SetVehicleNeonLightEnabled(nveh,2, false)
      end
      if neon3 == "on" then
        SetVehicleNeonLightEnabled(nveh,3, true)
      else
        SetVehicleNeonLightEnabled(nveh,3, false)
      end
      if bulletproof == "on" then
        SetVehicleTyresCanBurst(nveh, false)
      else
        SetVehicleTyresCanBurst(nveh, true)
      end
      --if variation == "on" then
      --  SetVehicleModVariation(nveh,23)
      --else
      --  SetVehicleModVariation(nveh,23, false)
      --end
      SetVehicleWindowTint(nveh,tonumber(windowtint))

      local playerVeh = GetVehiclePedIsIn(GetPlayerPed(-1), false)
      local VehicleModel = GetEntityModel(playerVeh)
      local model =  GetDisplayNameFromVehicleModel(VehicleModel)
      TriggerServerEvent("LSC:applyModifications",model,playerVeh)

      SetVehicleMod(nveh, 11, mods11)
      SetVehicleMod(nveh, 12, mods12)
      SetVehicleMod(nveh, 13, mods13)
      if turbo == "on" then
        ToggleVehicleMod(nveh, 18, true)
      else
        ToggleVehicleMod(nveh, 18, false)
      end


    end
  else
    local cartype = ""
    if vtype == "car" then
      cartype = "bil"
    elseif vtype == "bike" then
      cartype = "motorcykel"
    elseif vtype == "citybike" then
      cartype = "cykel"
    end
    TriggerEvent("pNotify:SendNotification",{text = "Du kan kun have én <b style='color:#B22222'>"..cartype.."</b> ude",type = "info",timeout = (2000),layout = "bottomCenter",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
  end
end

function vRPgt.spawnBoughtVehicle(vtype, name)
  local vehicle = vehicles[vtype]
  if vehicle then -- precheck if vehicle is undriveable
    -- despawn vehicle
    SetVehicleHasBeenOwnedByPlayer(vehicle[3],false)
    SetEntityAsMissionEntity(vehicle[3], false, true) -- set not as mission entity
    SetVehicleAsNoLongerNeeded(Citizen.PointerValueIntInitialized(vehicle[3]))
    Citizen.InvokeNative(0xEA386986E786A54F, Citizen.PointerValueIntInitialized(vehicle[3]))
    TriggerEvent("vrp_garages:setVehicle", vtype, nil)
  end

  vehicle = vehicles[vtype]
  if vehicle == nil then
    -- load vehicle model
    local mhash = GetHashKey(name)

    local i = 0
    while not HasModelLoaded(mhash) and i < 10000 do
      RequestModel(mhash)
      Citizen.Wait(10)
      i = i+1
    end

    -- spawn car
    if HasModelLoaded(mhash) then
      local x,y,z = vRP.getPosition({})
      local nveh = CreateVehicle(mhash, x,y,z+0.5, GetEntityHeading(GetPlayerPed(-1)), true, false) -- added player heading
      SetVehicleOnGroundProperly(nveh)
      SetVehRadioStation(nveh, "OFF")
      SetEntityInvincible(nveh,false)
      SetPedIntoVehicle(GetPlayerPed(-1),nveh,-1) -- put player inside
      SetVehicleNumberPlateText(nveh, "P " .. vRP.getRegistrationNumber({}))
      Citizen.InvokeNative(0xAD738C3085FE7E11, nveh, true, true) -- set as mission entity
      SetVehicleHasBeenOwnedByPlayer(nveh,true)

      local nid = NetworkGetNetworkIdFromEntity(nveh)
      SetNetworkIdCanMigrate(nid,true)

      TriggerEvent("vrp_garages:setVehicle", vtype, {vtype,name,nveh})



      SetModelAsNoLongerNeeded(mhash)
    end
  else
    if vtype == "car" then
      local cartype = "bil"
    elseif vtype == "bike" then
      local cartype = "motorcykel"
    elseif vtype == "citybike" then
      local cartype = "cykel"
    end
    TriggerEvent("pNotify:SendNotification",{text = "Du kan kun have én <b style='color:#B22222'>"..cartype.."</b> ude",type = "info",timeout = (2000),layout = "bottomRight",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
  end
end

function vRPgt.despawnGarageVehicle(caissei)

  -- remove vehicle
  SetVehicleHasBeenOwnedByPlayer(caissei,false)
  Citizen.InvokeNative(0xAD738C3085FE7E11, caissei, false, true) -- set not as mission entity
  SetVehicleAsNoLongerNeeded(Citizen.PointerValueIntInitialized(caissei))
  Citizen.InvokeNative(0xEA386986E786A54F, Citizen.PointerValueIntInitialized(caissei))
  DetachEntity(caissei, 1, 1)
  DeleteEntity(caissei)
  DeleteObject(caissei)
  local vtype = "car"
  if IsThisModelABike(GetEntityModel(caissei)) and not IsThisModelABicycle(GetEntityModel(caissei)) then
    vtype = "bike"
  end
  if IsThisModelAQuadbike(GetEntityModel(caissei)) then
    vtype = "bike"
  end
  if IsThisModelABicycle(GetEntityModel(caissei)) then
    vtype = "citybike"
  end
  TriggerEvent("vrp_garages:setVehicle", vtype, nil)

  TriggerEvent("pNotify:SendNotification",{text = "Køretøj <b style='color:#4E9350'>parkeret</b>",type = "success",timeout = (3000),layout = "bottomCenter",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
end

function MenuGarage()
  ped = GetPlayerPed(-1)
  selectedPage = 0
  MenuTitle = "Garage"
  ClearMenu()
  Menu.addButton(lang_string.menu2,"ListVehicle",selectedPage)
  Menu.addButton(lang_string.menu3,"CloseMenu",nil)
  Menu.addButton(lang_string.menu11,"CloseMenu",nil)
end

function MenuImpoundGarage()
  ped = GetPlayerPed(-1)
  selectedPage = 0
  MenuTitle = "Konfiskeret"
  ClearMenu()
  Menu.addButton("Liste af køretøjer","ListImpoundedVehicle",selectedPage)
  Menu.addButton(lang_string.menu3,"CloseMenu",nil)
end

function StoreVehicle()
  Citizen.CreateThread(function()
    local caissei = GetVehiclePedIsUsing(GetPlayerPed(-1))
    SetEntityAsMissionEntity(caissei, true, true)
    local plate = GetVehicleNumberPlateText(caissei)
    local vtype = "car"
    if IsThisModelABike(GetEntityModel(caissei)) and not IsThisModelABicycle(GetEntityModel(caissei)) then
      vtype = "bike"
    end
    if IsThisModelAQuadbike(GetEntityModel(caissei)) then
      vtype = "bike"
    end
    if IsThisModelABicycle(GetEntityModel(caissei)) then
      vtype = "citybike"
    end
    if DoesEntityExist(caissei) then
      if plate:upper() == myplate:upper() or myplate == "" or vRPsb.getUser().job == "Våbendealer" then
        local fuel = GetVehicleFuelLevel(caissei)
        local damage = GetVehicleEngineHealth(caissei)
        local vehicle = vehicles[vtype]
        vRPgt.despawnGarageVehicle(caissei)
        if vehicle ~= nil then
          TriggerServerEvent("ply_garages:CheckForVeh", plate, vehicle[2],fuel,damage)
        end
      else
        TriggerEvent("pNotify:SendNotification",{text = "Du kan kun parkere dit eget køretøj!",type = "error",timeout = (2000),layout = "bottomCenter",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
      end
    else
      TriggerEvent("pNotify:SendNotification",{text = "Du skal sidde i køretøjet!",type = "error",timeout = (2000),layout = "bottomCenter",queue = "global",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    end
  end)
  CloseMenu()
end

function ListVehicle(page)
  ped = GetPlayerPed(-1)
  selectedPage = page
  MenuTitle = lang_string.menu4
  ClearMenu()
  local count = 0
  for ind, value in pairs(GVEHICLES) do
    if ((count >= (page*10)) and (count < ((page*10)+10))) then
      if value.vehicle_impound == 0 then
        Menu.addButton(firstToUpper(tostring(value.vehicle_name)), "OptionVehicle", tostring(value.vehicle_model))
      end
    end
    count = count + 1
  end
  Menu.addButton(lang_string.menu12,"ListVehicle",page+1)
  if page == 0 then
    Menu.addButton(lang_string.menu7,"MenuGarage",nil)
  else
    Menu.addButton(lang_string.menu7,"ListVehicle",page-1)
  end
end

function ListImpoundedVehicle(page)
  ped = GetPlayerPed(-1)
  selectedPage = page
  MenuTitle = lang_string.menu4
  ClearMenu()
  local count = 0
  for ind, value in pairs(GVEHICLES) do
    if ((count >= (page*10)) and (count < ((page*10)+10))) then
      if value.vehicle_impound == 1 then
        Menu.addButton(firstToUpper(tostring(value.vehicle_model)), "OptionImpoundVehicle", {vehid=tostring(value.vehicle_model),reason=tostring(value.vehicle_impound_reason)})
      end
    end
    count = count + 1
  end
  Menu.addButton(lang_string.menu12,"ListImpoundedVehicle",page+1)
  if page == 0 then
    Menu.addButton(lang_string.menu7,"MenuImpoundGarage",nil)
  else
    Menu.addButton(lang_string.menu7,"ListImpoundedVehicle",page-1)
  end
end

function OptionVehicle(vehID)
  local vehID = vehID
  MenuTitle = "Valg"
  ClearMenu()
  Menu.addButton(lang_string.menu6, "SpawnVehicle", vehID)
  Menu.addButton(lang_string.menu7, "ListVehicle", selectedPage)
end

local impoundreason = ""
function OptionImpoundVehicle(data)
  MenuTitle = "KØB "..data.vehid.." FRI"
  impoundreason = data.reason
  ClearMenu()
  Menu.addButton("Betal "..format_thousand(cfggarage.PayFreePrice), "PayVehicle", data.vehid)
  Menu.addButton("Annuller", "ListImpoundedVehicle", selectedPage)
end

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1)
    if Menu.hidden == false and impoundreason ~= "" then
      DrawRect(0.5, 0.94, 0.3, 0.10, 0,0,0,200)
      ply_drawTxt("Beslaglag årsag:",4,1,0.5,0.896,0.6,255,255,255,255)
      ply_drawTxt(impoundreason,4,1,0.5,0.94,0.5,255,255,255,255)
    else
      if impoundreason ~= "" then
        impoundreason=""
      end
    end
  end
end)


function PayVehicle(vehID)
  TriggerServerEvent('ply_garages:impoundvehfree', vehID)
  CloseMenu()
end

function SpawnVehicle(vehID)
  TriggerServerEvent('ply_garages:CheckForSpawnVeh', vehID)
  CloseMenu()
end

function drawNotification(text)
  SetNotificationTextEntry("STRING")
  AddTextComponentString(text)
  DrawNotification(false, false)
end

function CloseMenu()
  Menu.hidden = true
end

function LocalPed()
  return GetPlayerPed(-1)
end

function IsPlayerInRangeOfGarage()
  return inrangeofgarage
end

function Chat(debugg)
  TriggerEvent('chatMessage', '', { 0, 0x99, 255 }, tostring(debugg))
end

function DrawText3d(x, y, z, text)
  local onScreen, _x, _y = World3dToScreen2d(x, y, z)
  local px, py, pz = table.unpack(GetGameplayCamCoords())

  SetTextScale(0.35, 0.35)
  SetTextFont(4)
  SetTextProportional(1)
  SetTextColour(255, 255, 255, 215)
  SetTextEntry("STRING")
  SetTextCentre(1)
  AddTextComponentString(text)
  DrawText(_x, _y)
  local factor = (string.len(text)) / 370
  DrawRect(_x, _y + 0.0125, 0.015 + factor, 0.03, 20,20,20,150)
end

--[[Citizen]]--
local delay = 0
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    if delay > 0 then delay = delay-1 end
    local player = GetPlayerPed(-1)
    local isInVeh = IsPedInAnyVehicle(player, false)
    local entityCoords = GetEntityCoords(player)
    for _, garage in pairs(garages) do
      if GetDistanceBetweenCoords(garage.coords[1], garage.coords[2], garage.coords[3], entityCoords) < 7 then
        DrawMarker(27, garage.coords[1], garage.coords[2], garage.coords[3],0,0,0,0,0,0,3.0001,3.0001,3.0001, 0, 232, 255,200,0,0,0,50)
      end
      if GetDistanceBetweenCoords(garage.coords[1], garage.coords[2], garage.coords[3], entityCoords) < 2 then

          if isInVeh then
            DrawText3d(garage.coords[1], garage.coords[2], garage.coords[3] + 1, lang_string.menu1)
            if IsControlJustPressed(1, 51) then
              StoreVehicle()
            end
          else
            DrawText3d(garage.coords[1], garage.coords[2], garage.coords[3] + 1, lang_string.menu8)
            if IsControlJustPressed(1, 51) then
              garageSelected.x = garage.coords[1]
              garageSelected.y = garage.coords[2]
              garageSelected.z = garage.coords[3]
              MenuGarage()
              Menu.hidden = not Menu.hidden
              if delay == 0 then
                delay = 6000
                TriggerServerEvent("ply_garages:CheckGarageForVeh")
              end
            end
          end
          Menu.renderGUI()

      end
    end

    if IsControlJustPressed(1, 177) then
      CloseMenu()
    end

    for _, impound in pairs(impound) do
      if GetDistanceBetweenCoords(impound.coords[1], impound.coords[2], impound.coords[3], entityCoords) < 7 then
        DrawMarker(27, impound.coords[1], impound.coords[2], impound.coords[3],0,0,0,0,0,0,3.0001,3.0001,3.0001, 0, 232, 255,200,0,0,0,50)
      end
      if GetDistanceBetweenCoords(impound.coords[1], impound.coords[2], impound.coords[3], entityCoords) < 2 then
          if IsPedInAnyVehicle(player, false) then
            DrawText3d(impound.coords[1], impound.coords[2], impound.coords[3] + 1, lang_string.menu1)
            if IsControlJustPressed(1, 51) then
              StoreVehicle()
            end
          else
            DrawText3d(impound.coords[1], impound.coords[2], impound.coords[3] + 1, lang_string.konfiskeret)
            if IsControlJustPressed(1, 51) then
              garageSelected.x = impound.coords[1]
              garageSelected.y = impound.coords[2]
              garageSelected.z = impound.coords[3]
              MenuImpoundGarage()
              Menu.hidden = not Menu.hidden
              if delay == 0 then
                delay = 6000
                TriggerServerEvent("ply_garages:CheckGarageForVeh")
              end
            end
          end
          Menu.renderGUI()
      end
    end
  end
end)

Citizen.CreateThread(function()
for _, item in pairs(garages) do
  if not item.hidden then
    item.blip = AddBlipForCoord(item.coords[1], item.coords[2], item.coords[3])
    SetBlipSprite(item.blip, item.id)
    SetBlipAsShortRange(item.blip, true)
    SetBlipColour(item.blip, item.colour)
    SetBlipScale(item.blip, 0.8)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(item.name)
    EndTextCommandSetBlipName(item.blip)
  end
end
for _, item in pairs(impound) do
  if not item.hidden then
    item.blip = AddBlipForCoord(item.coords[1], item.coords[2], item.coords[3])
    SetBlipSprite(item.blip, item.id)
    SetBlipAsShortRange(item.blip, true)
    SetBlipColour(item.blip, item.colour)
    SetBlipScale(item.blip, 0.8)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(item.name)
    EndTextCommandSetBlipName(item.blip)
  end
end
  while true do
    local near = false
    Citizen.Wait(0)

    local player = GetPlayerPed(-1)
    local isInVeh = IsPedInAnyVehicle(player, false)
    local entityCoords = GetEntityCoords(player)

    for _, garage in pairs(garages) do
      if (GetDistanceBetweenCoords(garage.coords[1], garage.coords[2], garage.coords[3], entityCoords) < 3 and near ~= true) then
        near = true
      end
    end
    for _, impound in pairs(impound) do
      if (GetDistanceBetweenCoords(impound.coords[1], impound.coords[2], impound.coords[3], entityCoords) < 3 and near ~= true) then
        near = true
      end
    end
    if near == false then
      Menu.hidden = true
    end
  end
end)




--[[Events]]--

RegisterNetEvent('vrp_garages:setVehicle')
AddEventHandler('vrp_garages:setVehicle', function(vtype, vehicle)
  vehicles[vtype] = vehicle
end)

RegisterNetEvent('ply_garages:addAptGarage')
AddEventHandler('ply_garages:addAptGarage', function(gx,gy,gz,gh)
  local alreadyExists = false
  for _, garage in pairs(garages) do
    if garage.coords[1] == gx and garage.coords[2] == gy then
      alreadyExists = true
    end
  end
  if not alreadyExists then
    table.insert(garages, #garages + 1, {name="Lejligheds garage", colour=3, id=357, x=gx, y=gy, z=gz, h=gh})
  end
end)

RegisterNetEvent('ply_garages:getVehicles')
AddEventHandler("ply_garages:getVehicles", function(THEVEHICLES)
  impounded = 0
  for k,v in pairs(THEVEHICLES) do
    if v.vehicle_impound == 1 then
      impounded = impounded+1
    end
  end
  Menu.updateImpounded(impounded)
  GVEHICLES = {}
  GVEHICLES = THEVEHICLES
end)

function ply_drawTxt(text,font,centre,x,y,scale,r,g,b,a)
  SetTextFont(font)
  SetTextProportional(0)
  SetTextScale(scale, scale)
  SetTextColour(r, g, b, a)
  SetTextDropShadow(0, 0, 0, 0,255)
  SetTextEdge(1, 0, 0, 0, 255)
  SetTextDropShadow()
  SetTextOutline()
  SetTextEntry("STRING")
  AddTextComponentString(text)
  SetTextCentre(centre)
  DrawText(x , y)
end

function firstToUpper(str)
  return (str:gsub("^%l", string.upper))
end

function format_thousand(v)
  local s = string.format("%d", math.floor(v))
  local pos = string.len(s) % 3
  if pos == 0 then pos = 3 end
  return string.sub(s, 1, pos)
          .. string.gsub(string.sub(s, pos+1), "(...)", ".%1")
end
