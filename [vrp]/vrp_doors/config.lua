--
-- Created by IntelliJ IDEA.
-- User: Sling
-- Date: 02-02-2019
-- Time: 19:14
-- Made for CiviliansNetwork
--

local cfg = {}

cfg.doors = {
    -- Centrum PD stue
    [1] = {locked = false, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -1215222675, coords={434.74145507813,-981.09252929688,30.712087631226}, pairs = 2}, -- fordør cords
    [2] = {locked = false, key = "key_lspd", permission="police.pc", name = "Politistation", hash = 320433149, coords={434.78842163086,-982.70825195313,30.689336776733}, pairs = 1}, -- fordør cords
    [3] = {locked = true, key = "key_lspd", permission="politi.ledelse.doors", name = "Ledelses Kontor", hash=-1320876379, coords={447.09362792969,-980.115234375,30.689315795898 }}, --Captain
    [4] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -1033001619, coords={453.13778686523,-982.68402099609,30.689304351807}}, -- våbenkammer
    [5] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -1033001619, coords={445.21319580078,-998.99169921875,30.724500656128}, pairs = 6}, -- Til garage fra PD
    [6] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -1033001619, coords={445.97244262695,-999.00250244141,30.724214553833}, pairs = 5}, -- Til garage fra PD
    [7] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = 1557126584, coords={449.88836669922,-986.57958984375,30.689334869385}}, -- Til omklædning
    [8] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = 185711165, coords={445.25473022461,-989.41534423828,30.68932342529}, pairs = 9}, -- Til Kælder og garage indenfor
    [9] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = 185711165, coords={443.95629882813,-989.46459960938,30.689332962036}, pairs = 8}, -- Til Kælder og garage indenfor
    --Centrum PD Kælder
    [10] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -543497392, coords={446.10592651367,-987.17254638672,26.674179077148}, pairs = 11}, -- Mugshot rum
    [11] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -543497392, coords={445.81097412109,-985.62121582031,26.674167633057}, pairs = 10}, -- Mugshot rum
    [12] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -131296141, coords={443.48999023438,-988.24291992188,26.67414855957}}, -- Mugshot rum kriminel
    [13] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -131296141, coords={442.04235839844,-985.70086669922,26.67414855957}}, -- Mugshot rum politi
    [14] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -543497392, coords={451.32507324219,-983.90393066406,26.67414093017}, pairs = 15}, -- dør ind til medical peters kontor og kontoer
    [15] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -543497392, coords={452.88571166992,-983.87670898438,26.674167633057}, pairs = 14}, -- dør ind til medical peters kontor og kontoer
    [16] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -543497392, coords={451.8215637207,-979.56518554688,26.668563842773}}, -- Briefing Rum
    [17] = {locked = true, key = "key_lspd", permission="politi.ledelse.doors", name = "Alex Vargas", hash = -543497392, coords={445.10922241211,-979.54260253906,26.668563842773}}, -- (peters kontor)
    [18] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -543497392, coords={439.17065429688,-979.5458984375,26.668539047241}}, -- medical
    [19] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -543497392, coords={465.5885925293,-990.67163085938,24.914691925049}, pairs = 20}, -- dør ind til lager, server og lab
    [20] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -543497392, coords={465.65283203125,-989.37585449219,24.914712905884}, pairs = 19}, -- dør ind til lager, server og lab
    [21] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -131296141, coords={471.36511230469,-985.28692626953,24.914691925049}}, -- lager evidence locker
    [22] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -131296141, coords={468.52066040039,-977.97973632813,24.9146900177}}, -- server rum
    [23] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -131296141, coords={463.60006713867,-981.39489746094,24.914720535278}}, -- lab
    [24] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -1033001619, coords={467.64984130859,-1003.5553588867,24.91471862793}}, -- INTERVIEW
    [25] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -1033001619, coords={472.13125610352,-1003.564453125,24.91471862793}}, -- INTERVIEW
    [26] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -1033001619, coords={476.36715698242,-1003.5130615234,24.91471862793}}, -- INTERVIEW
    [27] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -1033001619, coords={480.61016845703,-1003.3960571289,24.914709091187}}, -- INTERVIEW
    [28] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -1033001619, coords={480.93423461914,-996.42108154297,24.914709091187}}, -- lukkede Celler
    [29] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -1033001619, coords={476.57382202148,-996.46960449219,24.914716720581}}, -- lukkede Celler
    [30] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -1033001619, coords={472.13314819336,-996.43225097656,24.914716720581}}, -- lukkede Celler
    [31] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -1033001619, coords={467.87561035156,-996.43469238281,24.914691925049}}, -- lukkede Celler
    [32] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -1033001619, coords={464.31146240234,-1003.5274047852,24.914712905884}}, -- tremmer Celler til baggård
    [33] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = 631614199, coords={461.8151550293,-993.91912841797,24.914709091187}}, -- tremmer Celler 1
    [34] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = 631614199, coords={461.70974731445,-998.33215332031,24.914699554443}}, -- tremmer Celle 2
    [35] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = 631614199, coords={462.21188354492,-1001.8206176758,24.914699554443}}, -- tremmer Celler 3
    [36] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = 631614199, coords={463.93350219727,-992.8134765625,24.914714813232}}, -- tremmer Celler til kontor
    [37] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -543497392, coords={470.10549926758,-1009.692199707,26.386318206787}}, -- Meeting Room
    [38] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -543497392, coords={470.08413696289,-1011.1427612305,26.386318206787}}, -- Meeting Room
    [39] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -2023754432, coords={467.89376831055,-1014.5333251953,26.386333465576}}, -- til baggarage
    [40] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -2023754432, coords={469.44607543945,-1014.5020141602,26.386360168457}}, -- til baggarage

    --Centrum PD førstesal
    [41] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -131296141, coords={449.44653320313,-992.46514892578,35.931114196777}}, -- Floor dør fra trappen
    [42] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -131296141, coords={445.25543212891,-988.76287841797,35.931106567383}}, -- Floor dør fra trappen/central. #2
    [43] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -131296141, coords={449.61264038086,-982.98364257813,35.931106567383}}, -- Floor dør/ til central. #3
    [44] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -131296141, coords={451.95767211914,-980.42333984375,35.931083679199}}, -- Dør til office
    [45] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -131296141, coords={461.09130859375,-980.11962890625,35.931091308594}}, -- Dør til office
    [46] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -131296141, coords={463.59411621094,-984.28265380859,35.931064605713}}, -- Til Trappe.
    [47] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -131296141, coords={463.36575317383,-990.35021972656,35.931102752686}}, -- Rengøring.
    [48] = {locked = true, key = "key_lspd", permission="politi.ledelse.doors", name = "Ledelses Kontor", hash = -131296141, coords={460.05459594727,-994.28491210938,35.93111038208}}, -- Kontor til P3 og P4 Kun Til lederrank.
    [49] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -131296141, coords={460.10800170898,-997.21813964844,35.931083679199}}, -- Printer.
    [50] = {locked = true, key = "key_lspd", permission="politi.ledelse.doors", name = "Emil Hansen", hash = -1320876379, coords={462.28314208984,-1000.7785644531,35.931087493896}}, -- Emil Hansen Kontor Kun til lederrank.
    [51] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -131296141, coords={475.69418334961,-992.18109130859,35.931098937988}}, -- Møde rum
    [52] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -131296141, coords={485.02639770508,-992.42651367188,35.931114196777}}, -- Møde rum
    [53] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -131296141, coords={477.47750854492,-1001.4261474609,35.931114196777}}, -- office
    [54] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -131296141, coords={478.02691650391,-1010.7937011719,35.931106567383}}, -- office
    [55] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -603023671, coords={429.09060668945,-994.67742919922,35.73685836792}}, -- Trasse.
    [56] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -603023671, coords={429.11758422852,-995.61328125,35.736854553223}}, -- Trasse.
    [57] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = 1622278560, coords={423.60632324219,-993.431640625,30.710691452026}}, -- Dør til biludtagning.
    [58] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -1603817716, coords={409.58587646484,-1025.4364013672,29.387027740479},range = 10.0}, -- Port til biludtagning.
    [59] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -368655288, coords={416.71878051758,-1018.5625610352,29.285278320313}, pairs = 60}, -- dør 2 til biludtagning.
    [60] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = -368655288, coords={417.89157104492,-1018.6293945313,29.288066864014}, pairs = 59}, --dør 2 til biludtagning
    [61] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation", hash = 507213820, coords={463.39117431641,-1011.2541503906,32.987205505371}}, -- Personale Taresse.
    -- Centrum PD bagport
    [62] = {locked = true, key = "key_lspd", permission="police.pc", name = "Centrum PD", hash=-1603817716, coords={488.91033935547,-1017.6137695313,28.212596893311}, range = 10.0},


    -- Politi Skydebane
	[63] = {locked = true, key = "key_lspd", permission="politi.assistent.doors", name = "Skydebane", hash= -1603817716, coords={-1141.3863525391,-1750.2001953125,4.090744972229}, range = 10.0},
    --[63] = {locked = true, key = "key_lspd", permission="politi.assistent.doors", name = "Skydebane", hash=3875290964, coords={-1184.5869140625,-1770.1104736328,3.9084672927856}},
    --[64] = {locked = true, key = "key_lspd", permission="politi.assistent.doors", name = "Skydebane", hash=3875290964, coords={-1215.7121582031,-1785.4688720703,3.9084675312042}},
    --[65] = {locked = true, key = "key_lspd", permission="politi.assistent.doors", name = "Skydebane", hash=3875290964, coords={-1182.1441650391,-1806.1534423828,3.9085311889648}},
    --[66] = {locked = true, key = "key_lspd", permission="politi.assistent.doors", name = "Skydebane", hash=3875290964, coords={-1175.2947998047,-1783.7905273438,3.908465385437}},

    -- PD Paleto
    [67] = {locked = true, key = "key_lspd", permission="police.pc", name = "Paleto PD", hash=2793810241, coords={-443.67907714844,6016.8061523438,31.712211608887}, pairs = 68}, -- fordøre
    [68] = {locked = true, key = "key_lspd", permission="police.pc", name = "Paleto PD", hash=2793810241, coords={-442.93734741211,6016.236328125,31.712211608887}, pairs = 67}, -- fordøre
    [69] = {locked = true, key = "key_lspd", permission="police.pc", name = "Paleto PD", hash=964838196, coords={-441.63394165039,6012.2788085938,31.716333389282}, pairs = 70}, -- dør til kontor
    [70] = {locked = true, key = "key_lspd", permission="police.pc", name = "Paleto PD", hash=964838196, coords={-442.37756347656,6011.2958984375,31.716344833374}, pairs = 69}, -- dør til kontor
    [71] = {locked = true, key = "key_lspd", permission="police.pc", name = "Paleto PD", hash=-2023754432, coords={-450.27523803711,6015.9873046875,31.716388702393}}, -- afhørings lokale spejl
    [72] = {locked = true, key = "key_lspd", permission="police.pc", name = "Paleto PD", hash=-952356348, coords={-437.97308349609,6007.80859375,31.716356277466}}, -- kontor 1
    [73] = {locked = true, key = "key_lspd", permission="police.pc", name = "Paleto PD", hash=-952356348, coords={-441.54656982422,6004.4111328125,31.716325759888}}, -- kontor 2
    [74] = {locked = true, key = "key_lspd", permission="police.pc", name = "Paleto PD", hash=-1011692606, coords={-437.00134277344,5992.2841796875,31.716188430786}}, -- til våben
    [75] = {locked = true, key = "key_lspd", permission="police.pc", name = "Paleto PD", hash=-1156020871, coords={-440.88739013672,5989.5419921875,31.716192245483}}, -- lager
    [76] = {locked = true, key = "key_lspd", permission="police.pc", name = "Paleto PD", hash=631614199, coords={-432.63842773438,5992.5927734375,31.716184616089}}, -- cellerum
    [77] = {locked = true, key = "key_lspd", permission="police.pc", name = "Paleto PD", hash=631614199, coords={-428.546875,5997.2666015625,31.716184616089}}, -- celle 1
    [78] = {locked = true, key = "key_lspd", permission="police.pc", name = "Paleto PD", hash=631614199, coords={-431.59442138672,6000.330078125,31.71618270874}}, -- celle 2
    [79] = {locked = true, key = "key_lspd", permission="police.pc", name = "Paleto PD", hash=452874391, coords={-446.81097412109,6001.6904296875,31.703227996826}}, -- 1. Dør bagudgang
    [80] = {locked = true, key = "key_lspd", permission="police.pc", name = "Paleto PD", hash=452874391, coords={-451.60507202148,6006.6240234375,31.840156555176}}, -- 2. Dør bagudgang
    [81] = {locked = true, key = "key_lspd", permission="police.pc", name = "Paleto PD", hash=-519068795, coords={-453.82299804688,6011.41796875,31.716335296631}}, -- Dør til afhøringsrum.
    [82] = {locked = true, key = "key_lspd", permission="police.pc", name = "Paleto PD", hash=245182344, coords={-448.14004516602,6007.330078125,31.716348648071}, pairs = 83}, -- Dobbeltdør til gang bagved
    [83] = {locked = true, key = "key_lspd", permission="police.pc", name = "Paleto PD", hash=245182344, coords={-448.96374511719,6007.9780273438,31.716348648071}, pairs = 82}, -- Dobbeltdør til gang bagved
    [84] = {locked = true, key = "key_lspd", permission="police.pc", name = "Paleto PD", hash=1286535678, coords={-454.3698425293,6029.6538085938,31.340547561646}, range = 10.0},
        -- Sandy PD
    [90] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation",hash=-1765048490,coords={1854.9407958984,3683.9658203125,34.286643981934}}, -- hoved dør
    [91] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation",hash=1557126584,coords={1850.9223632813,3682.8266601563,34.286609649658}},
    [92] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation",hash=-2023754432,coords={1848.1094970703,3683.697265625,30.259233474731}, pairs = 93},
    [93] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation",hash=-2023754432,coords={1846.7718505859,3682.9912109375,30.25923538208}, pairs = 92},
    [94] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation",hash=749848321,coords={1852.3479003906,3686.1640625,30.25922203064}},
    [95] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation",hash=749848321,coords={1855.6027832031,3688.0544433594,30.259220123291}},
    [96] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation",hash=-1927754726,coords={1859.3497314453,3687.357421875,30.259227752686}},
    [97] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation",hash=-1927754726,coords={1862.3422851563,3689.1586914063,30.259225845337}},
    [98] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation",hash=-1927754726,coords={1860.5515136719,3692.2602539063,30.259225845337}},
    [99] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation",hash=-1927754726,coords={1858.6536865234,3695.4694824219,30.259218215942}},
	[398] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation",hash=-2023754432,coords={1846.8114013672,3682.9621582031,34.267040252686}, pairs = 399},
    [399] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation",hash=-2023754432,coords={1848.2172851563,3683.7424316406,34.267108917236}, pairs = 398},
	[400] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation",hash=-2023754432,coords={1850.0161132813,3683.5502929688,34.267093658447}, pairs = 401},
    [401] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation",hash=-2023754432,coords={1851.1146240234,3682.3688964844,34.267066955566}, pairs = 400},
	[402] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation",hash=-2023754432,coords={1848.7352294922,3690.8781738281,34.267066955566}, pairs = 403},
    [403] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation",hash=-2023754432,coords={1847.4620361328,3690.443359375,34.26708984375}, pairs = 402},
	[404] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation",hash=-519068795,coords={1844.6138916016,3693.5422363281,34.267032623291}},
	[405] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation",hash=-2023754432,coords={1848.9924316406,3692.9282226563,34.26708984375}},
	[406] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation",hash=-2023754432,coords={1852.380859375,3694.7045898438,34.267086029053}},
	[407] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation",hash=1526539404,coords={1857.4102783203,3698.8486328125,34.267086029053}},
	[408] = {locked = true, key = "key_lspd", permission="police.pc", name = "Politistation",hash=-2023754432,coords={1856.8505859375,3690.0349121094,34.267116546631}},



	--Danskenpillbox
	-- [102] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=-770740285,coords={331.79263305664,-571.28802490234,43.31714630127}, pairs = 103},
    -- [103] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=-770740285,coords={331.27462768555,-572.16351318359,43.317089080811}, pairs = 102},
	-- [104] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=-770740285,coords={318.84426879883,-573.17144775391,43.317363739014}, pairs = 105},
    -- [105] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=-770740285,coords={318.50445556641,-574.08642578125,43.317302703857}, pairs = 104},
    --Hospital ved CN auto
     [100] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=854291622,coords={308.14950561523,-597.47357177734,43.28401184082}},
     [101] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=854291622,coords={308.11547851563,-569.89660644531,43.284027099609}},

     [102] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=-434783486,coords={313.04125976563,-571.85571289063,43.284496307373}, pairs = 103},
     [103] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=-1700911976,coords={313.04125976563,-571.85571289063,43.284496307373}, pairs = 102},

     [104] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=-434783486,coords={318.99060058594,-574.18243408203,43.286819458008}, pairs = 105},
     [105] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=-1700911976,coords={318.99060058594,-574.18243408203,43.286819458008}, pairs = 104},

	 [106] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=-434783486,coords={324.36846923828,-576.19488525391,43.284042358398}, pairs = 107},
     [107] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=-1700911976,coords={324.36846923828,-576.19488525391,43.284042358398}, pairs = 106},

     [108] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=854291622,coords={336.74993896484,-580.40222167969,43.284015655518}},
     [109] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=854291622,coords={341.25985717773,-582.04022216797,43.284027099609}},
     [110] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=854291622,coords={339.83416748047,-587.03082275391,43.284019470215}},
     [111] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=854291622,coords={337.57846069336,-592.96667480469,43.284027099609}},
     [112] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=854291622,coords={357.06970214844,-580.43499755859,43.292686462402}},
     [113] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=854291622,coords={356.06695556641,-584.13745117188,43.284023284912}},
     [114] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=854291622,coords={361.46646118164,-589.19720458984,43.284023284912}},
     [115] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=854291622,coords={359.52954101563,-594.01477050781,43.284019470215}},
     [116] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=854291622,coords={352.0751953125,-594.95275878906,43.284023284912}},
     [117] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=854291622,coords={347.46548461914,-584.27642822266,43.284019470215}},
     [118] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=854291622,coords={350.62890625,-598.54248046875,43.284023284912}},
     [119] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=854291622,coords={346.94076538086,-592.81976318359,43.284027099609}},
		--Hospital Sandy Shores omega sejt
	[120] = {locked = false, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=1415151278,coords={1822.1851806641,3676.2680664063,34.271049499512}, pairs = 118},
    [121] = {locked = false, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=580361003,coords={1822.1851806641,3676.2680664063,34.271049499512}, pairs = 117},
    [122] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=-1726331785,coords={1831.2741699219,3689.693359375,34.271045684814}},

   --  [104] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=1859711902,coords={324.78228759766,-590.88757324219,28.791482925415}},


   -- [107] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=220394186,coords={337.71987915039,-578.62451171875,43.323749542236},pairs = 97},
   -- [108] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=220394186,coords={337.13333129883,-578.32446289063,43.33052444458},pairs = 96},

   -- [109] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=220394186,coords={338.00915527344,-582.12261962891,43.316654205322}, pairs = 99},
    --[110] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=220394186,coords={338.29824829102,-581.51739501953,43.316055297852},pairs = 98},

   -- [111] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=-770740285,coords={342.01885986328,-570.85668945313,28.791482925415},pairs = 101},
   -- [112] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=-770740285,coords={341.6357421875,-571.89086914063,28.791482925415},pairs = 100},

   -- [113] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=-770740285,coords={346.57092285156,-572.47283935547,28.791473388672},pairs = 103},
   -- [114] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=-770740285,coords={346.06076049805,-573.69519042969,28.791467666626},pairs = 102},

   -- [115] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=1415151278,coords={313.94961547852,-572.81518554688,28.791484832764},pairs = 105},
   -- [116] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=580361003,coords={313.52160644531,-574.26428222656,28.791458129883},pairs = 104},

    --[117] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=1415151278,coords={329.93609619141,-568.89300537109,28.791477203369},pairs = 107},
    --[118] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=580361003,coords={330.67660522461,-569.24359130859,28.791477203369},pairs = 106},

    --[119] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=1415151278,coords={336.0185546875,-571.45275878906,28.791465759277},pairs = 109},
    --[120] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=580361003,coords={337.4465637207,-572.20825195313,28.791465759277},pairs = 108},

    --Sandy mechanic
    [123] = {locked = true, key = "key_sandy", permission="domingo.adgang", name = "Sandy Airport", hash=-725970636,coords={1775.9456787109,3327.1655273438,41.433307647705}},
    [124] = {locked = true, key = "key_sandy", permission="domingo.adgang", name = "Sandy Airport", hash=-538477509,coords={1771.4328613281,3325.94921875,41.438488006592}},
    [125] = {locked = true, key = "key_sandy", permission="domingo.adgang", name = "Sandy Airport", hash=-538477509,coords={1773.0238037109,3320.5119628906,41.438488006592}},
    [126] = {locked = true, key = "key_sandy", permission="domingo.adgang", name = "Sandy Airport", hash=-538477509,coords={1768.8101806641,3318.115234375,41.438488006592}},
    [127] = {locked = true, key = "key_sandy", permission="domingo.adgang", name = "Sandy Airport", hash=-538477509,coords={1765.2514648438,3322.3037109375,41.438491821289}},
    [128] = {locked = true, key = "key_sandy", permission="domingo.adgang", name = "Sandy Airport", hash=-1859992197,coords={1764.74609375,3320.5632324219,41.432144165039}},
    [282] = {locked = true, key = "key_sandy", permission="domingo.adgang", name = "Sandy Airport", hash=-1603817716,coords={1758.6455078125,3330.11328125,41.416934967041}, range = 12.0},
    [281] = {locked = true, key = "key_sandy", permission="domingo.adgang", name = "Sandy Airport", hash=-250842784,coords={1759.3729248047,3312.5222167969,41.119091033936}, range = 12.0},


    -- Stripklub
    [139] = {locked = true, key = "key_stripklub2", permission="stripklubben.doors", name = "Stripklubben",hash=668467214,coords={95.586074829102,-1285.341796875,29.279767990112}},
    [140] = {locked = true, key = "key_stripklub2", permission="stripklubben.doors", name = "Stripklubben",hash=-626684119,coords={99.600341796875,-1293.2969970703,29.26876449585}},
    [141] = {locked = true, key = "key_stripklub2", permission="stripklubben.doors", name = "Stripklubben",hash=-1116041313,coords={128.51901245117,-1298.2335205078,29.269437789917}},
    [142] = {locked = true, key = "key_stripklub2", permission="stripklubben.doors", name = "Stripklubben",hash=-495720969,coords={113.72462463379,-1296.6437988281,29.268766403198}},
    [143] = {locked = true, key = "key_stripklub2", permission="stripklubben.doors", name = "Stripklubben",hash=-1881825907,coords={127.40795898438,-1279.5177001953,29.269552230835}},
    [161] = {locked = true, key = "key_stripklub2", permission="stripklubben.doors", name = "Stripklubben",hash=-1881825907,coords={132.83992004395,-1287.9035644531,29.269550323486}},

    --Yacht
    --[142] = {locked = true, key = "key_yachten", permission="", name = "Yacht",hash=330294775,coords={-2081.6567382813,-1024.7894287109,5.8841233253479}},
    --[143] = {locked = true, key = "key_yachten", permission="", name = "Yacht",hash=330294775,coords={-2071.1906738281,-1016.8517456055,5.8841271400452}},

    -- Ejendomsmægler
    [144] = {locked = true, key = "key_realestate", permission="realestate.key", name = "Ejendomsmægler",hash=220394186,coords={-140.21783447266,-626.10949707031,168.82043457031}, pairs = 145},
    [145] = {locked = true, key = "key_realestate", permission="realestate.key", name = "Ejendomsmægler",hash=220394186,coords={-139.44232788086,-626.13616943359,168.82040405273}, pairs = 144},

    -- Advokat
    [146] = {locked = true, key = "key_advokat", permission="advokat.duty", name = "Advokat",hash=-1821777087,coords={138.72561645508,-768.16802978516,242.1522064209}},
    [147] = {locked = true, key = "key_advokat", permission="advokat.duty", name = "Advokat",hash=-1821777087,coords={127.40701293945,-764.02618408203,242.15190124512}},
    [148] = {locked = true, key = "key_advokat", permission="advokat.duty", name = "Advokat",hash=-853859998,coords={133.0364074707,-767.99884033203,242.15209960938}},

    -- Lifeinvader
    [149] = {locked = false, key = "key_lifeinvader2", permission="lifeinvader.key", name = "Lifeinvader",hash=969847031,coords={-1063.1645507813,-240.16094970703,44.021224975586}},
    [150] = {locked = false, key = "key_lifeinvader2", permission="lifeinvader.key", name = "Lifeinvader",hash=969847031,coords={-1057.1466064453,-237.08456420898,44.0212059021}},
    [151] = {locked = false, key = "key_lifeinvader2", permission="lifeinvader.key", name = "Lifeinvader",hash=-1821777087,coords={-1048.0180664063,-237.37478637695,44.021160125732}, pairs = 152},
    [152] = {locked = false, key = "key_lifeinvader2", permission="lifeinvader.key", name = "Lifeinvader",hash=-1821777087,coords={-1047.4484863281,-238.62573242188,44.021152496338}, pairs = 151},
    -- Fordør
    [153] = {locked = true, key = "key_lifeinvader2", permission="lifeinvader.key", name = "Lifeinvader",hash=-1679881977,coords={-1083.0604248047,-260.00723266602,37.787815093994}, pairs = 154},
    [154] = {locked = true, key = "key_lifeinvader2", permission="lifeinvader.key", name = "Lifeinvader",hash=-1045015371,coords={-1081.5733642578,-259.30850219727,37.784679412842}, pairs = 153},
    -- Bagdør
    [155] = {locked = true, key = "key_lifeinvader2", permission="lifeinvader.key", name = "Lifeinvader",hash=1104171198,coords={-1045.5418701172,-231.27163696289,39.014629364014}, pairs = 156},
    [156] = {locked = true, key = "key_lifeinvader2", permission="lifeinvader.key", name = "Lifeinvader",hash=-1425071302,coords={-1046.1961669922,-229.98994445801,39.014659881592}, pairs = 155},

    --key_kartel huset
    [157] = {locked = true, key = "key_kartel3", permission="", name = "Kartellet",hash=-1032171637,coords={1390.5715332031,1131.7316894531,114.33407592773}, pairs = 158},
    [158] = {locked = true, key = "key_kartel3", permission="", name = "Kartellet",hash=-52575179,coords={1390.5875244141,1132.6441650391,114.33406829834}, pairs = 157},

    [159] = {locked = true, key = "key_kartel3", permission="", name = "Kartellet",hash=-52575179,coords={1399.9057617188,1128.2419433594,114.33451843262}, pairs = 160},
    [160] = {locked = true, key = "key_kartel3", permission="", name = "Kartellet",hash=-1032171637,coords={1401.1546630859,1128.2502441406,114.33450317383}, pairs = 159},
    [338] = {locked = true, key = "key_kartel3", permission="", name = "Kartellet",hash=262671971,coords={1407.0379638672,1128.2069091797,114.33419799805}},
   [339] = {locked = true, key = "key_kartel3", permission="", name = "Kartellet",hash=736699661,coords={1397.1781005859,1164.1448974609,114.33361053467}},
 --   [340] = {locked = true, key = "key_kartel12", permission="", name = "Kartellet",hash=1504256620,coords={1395.7955322266,1142.2257080078,114.6512298584}, pairs = 339},
    [341] = {locked = true, key = "key_kartel3", permission="", name = "Kartellet",hash=-52575179,coords={1390.4851074219,1162.3811035156,114.33333587646}, pairs = 342},
    [342] = {locked = true, key = "key_kartel3", permission="", name = "Kartellet",hash=-1032171637,coords={1390.4851074219,1162.3811035156,114.33333587646}, pairs = 341},
    [343] = {locked = true, key = "key_kartel3", permission="", name = "Kartellet",hash=-52575179,coords={1408.1264648438,1164.7235107422,114.33421325684}, pairs = 344},
    [344] = {locked = true, key = "key_kartel3", permission="", name = "Kartellet",hash=-1032171637,coords={1408.1264648438,1164.7235107422,114.33421325684}, pairs = 343},
    [345] = {locked = true, key = "key_kartel3", permission="", name = "Kartellet",hash=-52575179,coords={1408.2027587891,1160.033203125,114.33413696289}, pairs = 346},
    [346] = {locked = true, key = "key_kartel3", permission="", name = "Kartellet",hash=-1032171637,coords={1408.2027587891,1160.033203125,114.33413696289}, pairs = 345},

    --Kartellet gates
    [163] = {locked = true, key = "key_kartel3", permission="", name = "Kartellet",hash=3552507031,coords={1317.7819824219,1188.7006835938,106.90690612793}, range = 7.0, pairs = 164}, --gate 1
    [164] = {locked = true, key = "key_kartel3", permission="", name = "Kartellet",hash=1107349801,coords={1317.8514404297,1187.2886962891,106.85741424561}, range = 7.0, pairs = 163}, --gate 1
    [165] = {locked = true, key = "key_kartel3", permission="", name = "Kartellet",hash=3552507031,coords={1316.3784179688,1106.6414794922,105.85131072998}, range = 7.0, pairs = 166},--gate 2
    [166] = {locked = true, key = "key_kartel3", permission="", name = "Kartellet",hash=1107349801,coords={1316.7541503906,1105.373046875,105.85801696777}, range = 7.0, pairs = 165},--gate 2

    -- Bilforhandleren

    -- Indgang 1
    [167] = {locked = false, key = "key_bilforhandler", permission="bilforhandler.doors", name = "Bilforhandler",hash=2059227086,coords={-38.636848449707,-1108.3608398438,26.468864440918}, pairs = 168},
    [168] = {locked = false, key = "key_bilforhandler", permission="bilforhandler.doors", name = "Bilforhandler",hash=1417577297,coords={-37.818347930908,-1108.7191162109,26.468883514404}, pairs = 167},
    -- Kontor
    [169] = {locked = false, key = "key_bilforhandler", permission="bilforhandler.doors", name = "Bilforhandler",hash=-2051651622,coords={-34.122013092041,-1108.2292480469,26.422351837158}},
    [170] = {locked = false, key = "key_bilforhandler", permission="bilforhandler.doors", name = "Bilforhandler",hash=-2051651622,coords={-31.903076171875,-1102.4223632813,26.422357559204}},
     -- Indgang 2
    [171] = {locked = false, key = "key_bilforhandler", permission="bilforhandler.doors", name = "Bilforhandler",hash=2059227086,coords={-60.018104553223,-1093.4749755859,26.67373085022}, pairs = 172},
    [172] = {locked = false, key = "key_bilforhandler", permission="bilforhandler.doors", name = "Bilforhandler",hash=1417577297,coords={-60.425937652588,-1094.2043457031,26.673414230347}, pairs = 171},
    --port
    [173] = {locked = false, key = "key_bilforhandler", permission="bilforhandler.doors", name = "Bilforhandler",hash=1286535678,coords={-12.702404022217,-1088.6901855469,26.672050476074}, range = 10.0},


    -- Ejendomsmægler Boliger
    [174] = {locked = true, key = "key_realestate", permission="realestate.key", name = "Ejendomsmægler",hash=1939954886,coords={-131.4874420166,-637.57611083984,168.82037353516}, pairs = 175},
    [175] = {locked = true, key = "key_realestate", permission="realestate.key", name = "Ejendomsmægler",hash=1939954886,coords={-133.8650970459,-631.32440185547,168.82046508789}, pairs = 174},

    -- Bolig 1
    [176] = {locked = true, key = "key_bolig1", permission="", name = "Bolig1",hash=-1918480350,coords={-825.41851806641,-32.705406188965,38.633014678955}},
    [177] = {locked = true, key = "key_bolig1", permission="", name = "Bolig1",hash=-349730013,coords={-826.47338867188,-30.352327346802,38.658115386963}},
    -- Bolig 2
    --[126] = {locked = true, key = "key_bolig2", permission="realestate.key", name = "Bolig2",hash=3636940819,coords={-112.51403045654,986.23840332031,235.75790405273}},-- indgang
    [178] = {locked = true, key = "key_bolig2_1", permission="", name = "Bolig2",hash=3045375478,coords={-134.3065032959,971.99926757813,235.85278320313}, range = 7.0, pairs = 179}, --port 1
    [179] = {locked = true, key = "key_bolig2_1", permission="", name = "Bolig2",hash=546378757,coords={-136.30545043945,973.06182861328,235.85357666016}, range = 7.0, pairs = 178},-- port 2

    -- Bolig 7
    [180] = {locked = true, key = "key_bolig7", permission="", name = "Bolig7",hash=-1249591818,coords={-1800.9001464844,474.28771972656,133.68882751465}, pairs = 181},
    [181] = {locked = true, key = "key_bolig7", permission="", name = "Bolig7",hash=546378757,coords={-1799.7318115234,472.01876831055,133.69081115723}, pairs = 180},
    -- Bolig Grove
    [182] = {locked = true, key = "key_bloodz", permission="", name = "GROVE",hash=1436076651,coords={85.976364135742,-1960.1193847656,21.121284484863}}, --gammelt salgsted
    -- Bolig 6
    [183] = {locked = true, key = "key_bolig6", permission="", name = "Bolig6",hash=-1249591818,coords={-2557.2717285156,1914.5399169922,168.89500427246}, range = 7.0, pairs = 184}, --gate1
    [184] = {locked = true, key = "key_bolig6", permission="", name = "Bolig6",hash=546378757,coords={-2558.548828125,1912.0297851563,168.86601257324}, range = 7.0, pairs = 183},    --gate2
    -- Bolig 34
    --[185] = {locked = true, key = "key_bolig34", permission="", name = "Trailerpark",hash=668467214,coords={92.262031555176,3744.7619628906,40.704486846924}},
    --[186] = {locked = true, key = "key_bolig34", permission="", name = "Trailerpark",hash=668467214,coords={94.243362426758,3750.4816894531,40.766716003418}},



    -- Yellow Jack
    [187] = {locked = true, key = "key_yj2", permission="", name = "YellowJack",hash=-287662406,coords={1990.5233154297,3053.4594726563,47.21533203125}},
    [188] = {locked = true, key = "key_yj2", permission="", name = "YellowJack",hash=-1483471451,coords={1984.5187988281,3072.5773925781,46.974227905273}, range = 12.0},
    [189] = {locked = true, key = "key_yj2", permission="", name = "YellowJack",hash=-1483471451,coords={1967.3967285156,3045.2280273438,47.064655303955}, range = 12.0},
    [280] = {locked = true, key = "key_yj2", permission="", name = "YellowJack",hash=1289778077,coords={1980.7403564453,3050.2795410156,50.522174835205}},


    -- Fængsles Porte
    [190] = {locked = true, key = "key_lspd", permission="police.pc", name = "Fængsel", hash=741314661, coords={1845.0898,2609.6157,45.6005}, range = 10.0},
    [191] = {locked = true, key = "key_lspd", permission="police.pc", name = "Fængsel", hash=741314661, coords={1818.6126,2609.7465,45.6065}, range = 10.0},

    -- Bahmas Mamas
    -- [192] = {locked = true, key = "key_bahmas", permission="", name = "Bahmas Mamas", hash= 4163671155, coords={-1389.25, -587.9828, 30.49132}, pairs = 192},
    -- [193] = {locked = true, key = "key_bahmas", permission="", name = "Bahmas Mamas", hash= 4163671155, coords={-1387.077, -586.5358, 30.49563}, pairs = 191},
    [194] = {locked = true, key = "", permission="", name = "Bahmas Mamas", hash= -131296141, coords={-1391.7860107422,-592.28393554688,30.319549560547}, pairs = 195},
    [195] = {locked = true, key = "", permission="", name = "Bahmas Mamas", hash= -131296141, coords={-1392.7860107422,-592.28393554688,30.319549560547}, pairs = 194},



    -- Civilians Auto
    --[196] = {locked = true, key = "key_mekaniker", permission="civilians.adgang", name = "Kælderen",hash=-267021114,coords={1005.3516235352,-2997.404296875,-39.647727966309}},
    --[197] = {locked = true, key = "key_mekaniker", permission="civilians.adgang", name = "Kontor",hash=1289778077,coords={966.97296142578,-3007.4812011719,-39.639904022217}},
    --[198] = {locked = true, key = "key_mekaniker", permission="civilians.adgang", name = "Kontor",hash=-626684119,coords={961.43151855469,-2999.1525878906,-39.639919281006}},
    --[199] = {locked = true, key = "key_3", permission="", name = "bolig3",hash=-26664553,coords={2332.2573242188,2575.5356445313,46.681259155273}, pairs = 200},
    --[200] = {locked = true, key = "key_3", permission="", name = "bolig3",hash=914592203,coords={2330.6984863281,2576.2448730469,46.678100585938}, pairs = 199},
    --[201] = {locked = true, key = "key_4", permission="", name = "Bolig4",hash=1683288312,coords={-1589.4794921875,-3229.7475585938,26.335493087769}, pairs = 202},
    --[202] = {locked = true, key = "key_4", permission="", name = "Bolig4",hash=-99214212,coords={-1588.3715820313,-3230.46484375,26.331552505493}, pairs = 201},

	-- Tequila
    --[203] = {locked = true, key = "key_TL", permission="", name = "tequila la la",hash=993120320,coords={-562.07330322266,293.46951293945,87.627716064453}}, -- bagdør
    --[204] = {locked = true, key = "key_TL", permission="", name = "tequila la la",hash=-626684119,coords={-560.35723876953,292.21209716797,82.17618560791}}, -- kælder
	--[205] = {locked = true, key = "key_TL", permission="", name = "tequila la la",hash=993120320,coords={-564.39190673828,276.47872924805,83.135040283203}}, -- fordør

   -- AKS
	[206] = {locked = true, key = "key_AKS", permission="aks.vw", name = "AKS",hash=270330101,coords={-219.40299987793,-275.18411254883,48.967842102051},range = 15.0, pairs = 207}, -- højre port
	[207] = {locked = true, key = "key_AKS", permission="aks.vw", name = "AKS",hash=270330101,coords={-217.93850708008,-270.89782714844,48.968353271484},range = 15.0, pairs = 206}, -- venstre port

    -- bolig 22
	[208] = {locked = true, key = "key_bolig22", permission="", name = "Bolig 22",hash=-1686014385,coords={-816.1068,177.5109,72.82738}}, -- H hoved dør
	[209] = {locked = true, key = "key_bolig22", permission="", name = "Bolig 22",hash=159994461,coords={-816.716,179.098,72.82738}}, --  V hoved dør
	[210] = {locked = true, key = "key_bolig22", permission="", name = "Bolig 22",hash=-1568354151,coords={-849.43377685547,178.57821655273,69.812828063965}}, --  have port
	[211] = {locked = true, key = "key_bolig22", permission="", name = "Bolig 22",hash=30769481,coords={-815.68713378906,185.81648254395,72.477729797363}}, --  garage port
	[212] = {locked = true, key = "key_bolig22", permission="", name = "Bolig 22",hash=-2125423493,coords={-844.7734375,161.04446411133,66.724586486816}, range = 10.0}, --  indgangs dør
	[213] = {locked = true, key = "key_bolig22", permission="", name = "Bolig 22",hash=1245831483,coords={-793.98162841797,181.5675201416,72.834754943848}, pairs = 214}, -- venstre døre ud til haven
	[214] = {locked = true, key = "key_bolig22", permission="", name = "Bolig 22",hash=-1454760130,coords={-793.98162841797,181.5675201416,72.834754943848}, pairs = 213}, -- venstre døre ud til haven
	[215] = {locked = true, key = "key_bolig22", permission="", name = "Bolig 22",hash=1245831483,coords={-795.59790039063,177.7202911377,72.834747314453}, pairs = 216}, -- døre ud til haven
	[216] = {locked = true, key = "key_bolig22", permission="", name = "Bolig 22",hash=-1454760130,coords={-795.59790039063,177.7202911377,72.834747314453}, pairs = 215}, -- døre ud til haven
	[217] = {locked = true, key = "key_bolig22", permission="", name = "Bolig 22",hash=1204471037,coords={-803.24163818359,176.00537109375,76.740783691406}}, -- pige værelse 1 sal
	[218] = {locked = true, key = "key_bolig22", permission="", name = "Bolig 22",hash=3909991192,coords={-810.14111328125,177.61248779297,76.740776062012}}, -- soveværelse
-- vinewood hills 2 og 3
    [219] = {locked = true, key = "key_vinewoodhills2", permission="", name = "vinewoodhills2",hash=546378757,coords={-103.53809356689,849.802734375,235.60151672363},pairs = 220}, --  port1
    [220] = {locked = true, key = "key_vinewoodhills2", permission="", name = "vinewoodhills2",hash=-1249591818,coords={-105.8264465332,850.08764648438,235.61012268066},pairs = 219}, --  port2

    [221] = {locked = true, key = "key_vinewoodhills3", permission="", name = "vinewoodhills3",hash=-1918480350,coords={-123.31006622314,900.50915527344,235.82135009766}, pairs = 222}, --  port1
    [222] = {locked = true, key = "key_vinewoodhills3", permission="", name = "vinewoodhills3",hash=-349730013,coords={-123.31006622314,900.50915527344,235.82135009766}, pairs = 221}, --  port2

    -- Galaxy Night Club
    [224] = {locked = true, key = "key_galaxy2", permission="", name = "VIP",hash=-1555108147,coords={-1607.4963378906,-3006.2575683594,-75.205184936523}}, --  VIP dør
    [225] = {locked = true, key = "key_galaxy2", permission="", name = "Bar",hash=1743859485,coords={-1583.5958251953,-3005.7094726563,-76.004974365234}}, --  Dør til bar
    [226] = {locked = true, key = "key_galaxy2", permission="", name = "Garage",hash=1743859485,coords={-1610.8250732422,-3005.1223144531,-79.005958557129}}, --  Dør til Garage
    [227] = {locked = true, key = "key_galaxy2", permission="", name = "VIP",hash=-1119680854,coords={-1621.8510742188,-3015.9230957031,-75.205055236816}}, --  glasdør VIP
    [228] = {locked = true, key = "key_galaxy2", permission="", name = "VIP",hash=1695461688,coords={-1621.4819335938,-3019.1513671875,-75.205055236816}}, --  Dør VIP fra garage
    [238] = {locked = true, key = "key_galaxy2", permission="", name = "VIP",hash=-218019333,coords={-1578.2242431641,-3010.8227539063,-79.005905151367}}, --  Dør fra gaden
    --Civilians Vagtfirma
    [229] = {locked = true, key = "key_panthersecurity", permission="security.key", name = "Panther Security",hash=220394186,coords={-74.863716125488,-821.83911132813,243.38580322266}, pairs = 230},
    [230] = {locked = true, key = "key_panthersecurity", permission="security.key", name = "Panther Security",hash=220394186,coords={-74.863716125488,-821.83911132813,243.38580322266}, pairs = 229},
    [231] = {locked = true, key = "key_panthersecurity", permission="security.key", name = "Panther Security",hash=-88942360,coords={-77.677696228027,-814.48388671875,243.38592529297}},
    [232] = {locked = true, key = "key_panthersecurity", permission="security.key", name = "Panther Security",hash=-88942360,coords={-77.468421936035,-807.853515625,243.38592529297}},
	[233] = {locked = true, key = "key_panthersecurity", permission="security.key", name = "Panther Security",hash=725274945,coords={-80.195762634277,-786.32458496094,38.354438781738},range = 10.0, pairs = 234},
    [234] = {locked = true, key = "key_panthersecurity", permission="security.key", name = "Panther Security",hash=725274945,coords={-78.519882202148,-785.85284423828,38.358306884766},range = 10.0, pairs = 233},

    [234] = {locked = true, key = "key_bolig33", permission="", name = "Bolig33",hash=865041037,coords={-1589.9442138672,-89.143165588379,54.334331512451}},
    [235] = {locked = true, key = "key_bolig33", permission="", name = "Bolig33",hash=1523529669,coords={-1582.4499511719,-87.381690979004,54.334487915039}},
    --  Sam Austin Drive Nr 4
    [236] = {locked = true, key = "key_bolig33", permission="", name = "Bolig33",hash=-349730013,coords={-1531.5701904297,-40.928825378418,57.052787780762},range = 10.0},
    [237] = {locked = true, key = "key_bolig33", permission="", name = "Bolig33",hash=-1918480350 ,coords={-1531.5701904297,-40.928825378418,57.052787780762}, range = 10.0},
    --grovestreet lager
    [238] = {locked = true, key = "key_bolig32", permission="", name = "Bolig32", hash = 1413743677, coords={254.25741577148,-1808.9074707031,27.267713546753}},
    [239] = {locked = true, key = "key_bolig32", permission="", name = "Bolig32", hash = 1335311341, coords={266.76733398438,-1808.6379394531,26.913581848145}},
    --[238] = {locked = true, key = "key_bolig32", permission="", name = "Bolig32", hash = -250842784, coords={249.62106323242,-1804.3575439453,27.113012313843},range = 5.0},

    [240] = {locked = true, key = "key_borgen", permission="", name = "Borgen", hash = -433207992, coords={981.12701416016,-102.28578186035,74.845031738281},range = 5.0},
    [241] = {locked = true, key = "key_borgen", permission="", name = "Borgen", hash = -250842784, coords={957.47033691406,-138.12895202637,74.476936340332},range = 10.0},

    [242] = {locked = true, key = "key_dommer", permission="court.doors", name = "Dommer", hash = -1516927114, coords={255.0715637207,-441.23345947266,-22.817935943604}},
    [243] = {locked = true, key = "key_dommer", permission="court.doors", name = "Dommer", hash = 956182085, coords={253.37094116211,-446.52893066406,-22.817937850952}},
    [244] = {locked = true, key = "key_dommer", permission="court.doors", name = "Dommer", hash = 631614199, coords={251.65299987793,-443.3483581543,-22.81795501709}}, -- celle 1
    [245] = {locked = true, key = "key_dommer", permission="court.doors", name = "Dommer", hash = 631614199, coords={247.56806945801,-441.93701171875,-22.81795501709}},-- celle 2
    [246] = {locked = true, key = "key_dommer", permission="court.doors", name = "Dommer", hash = 631614199, coords={243.59327697754,-440.64907836914,-22.81795501709}},-- celle 3
    -- lost MC
    [247] = {locked = true, key = "key_lostmc", permission="", name = "trailerpark", hash = -768731720, coords={80.47176361084,3632.6374511719,39.7121925354},range = 10.0},
    [248] = {locked = true, key = "key_lostmc", permission="", name = "trailerpark", hash = -768731720, coords={63.402523040771,3632.1118164063,39.634605407715},range = 10.0},
    [249] = {locked = true, key = "key_lostmc", permission="", name = "trailerpark", hash = -419676332, coords={83.73225402832,3765.5712890625,39.645713806152},range = 5.0},
    [250] = {locked = true, key = "key_lostmc", permission="", name = "trailerpark", hash = 190770132, coords={60.104637145996,3691.7392578125,39.921283721924}},
    [251] = {locked = true, key = "key_lager", permission="", name = "lager", hash = -1230442770, coords={242.10089111328,360.95553588867,105.73810577393},range = 10.0},

    [252] = {locked = true, key = "key_sandyairport", permission="domingo.adgang", name = "Sandy Airport", hash = 741314661, coords={1777.61328125,3299.0180664063,41.377105712891},range = 10.0},
    -- Juggalo
    [253] = {locked = true, key = "key_juggalo", permission="", name = "Juggalo Klub", hash = -1603817716, coords={962.29876708984,-1815.8504638672,31.079879760742},range = 5.0},
    [254] = {locked = true, key = "key_juggalo", permission="", name = "Juggalo Klub", hash = -267021114, coords={967.69378662109,-1829.7764892578,31.296045303345},range = 5.0},
    [255] = {locked = true, key = "key_juggalo", permission="", name = "Juggalo Klub", hash = -190780785, coords={976.53283691406,-1832.0933837891,31.28303527832},range = 5.0},

	-- Da Vinci Crime Family
    [256] = {locked = true, key = "key_vcf", permission="vcf.key", name = "Vinci Crime Family",hash=-1918480350,coords={-1477.7044677734,884.88952636719,182.87655639648},range = 5.0, pairs = 257},
    [257] = {locked = true, key = "key_vcf", permission="vcf.key", name = "Vinci Crime Family",hash=-349730013,coords={-1477.7044677734,884.88952636719,182.87655639648},range = 5.0, pairs = 256},

	-- Drugdealer
	[258] = {locked = true, key = "key_drugdealer", permission="drugdealer.adgang", name = "Værksted",hash=1652829067,coords={-1790.1740722656,3096.4208984375,32.813182830811,164.15167236328}}, -- højre dør
	[259] = {locked = true, key = "key_drugdealer", permission="drugdealer.adgang", name = "Værksted",hash=1652829067,coords={-1792.767578125,3091.7497558594,32.812812805176,150.24024963379}}, -- venstre dør
	[260] = {locked = true, key = "key_drugdealer", permission="drugdealer.adgang", name = "Indgang",hash=-768731720,coords={-1756.9144287109,3128.5639648438,32.788944244385},range = 10.0}, -- Indgangs port Højre
	[261] = {locked = true, key = "key_drugdealer", permission="drugdealer.adgang", name = "Indgang",hash=-768731720,coords={-1757.1759033203,3128.4084472656,35.302613067627},range = 10.0}, -- Indgangs port Ventre
	[262] = {locked = true, key = "key_drugdealer", permission="drugdealer.adgang", name = "Indgang",hash=1890297615,coords={-1763.0712890625,3139.3061523438,32.953552246094}}, -- Indgans dør
	[330] = {locked = true, key = "key_drugdealer", permission="drugdealer.adgang", name = "Indgang",hash=1248599813,coords={-2342.9357910156,3266.4494628906,32.827629089355}, pairs = 331}, -- Indgans dør
	[331] = {locked = true, key = "key_drugdealer", permission="drugdealer.adgang", name = "Indgang",hash=-1421582160,coords={-2342.9357910156,3266.4494628906,32.827629089355}, pairs = 330}, -- Indgans dør
	[332] = {locked = true, key = "key_drugdealer", permission="drugdealer.adgang", name = "Indgang",hash=-2083448347,coords={-2350.7014160156,3258.9138183594,32.810760498047}}, -- Indgans dør

  --El Forsyning ApS

	[263] = {locked = true, key = "key_elforsyning", permission="", name = "Indgang",hash=-1023447729,coords={735.94586181641,132.73344421387,80.726654052734}}, -- Indgangs dør

  --Mad Wayne thunder Dr
	[264] = {locked = true, key = "key_madwayne", permission="", name = "Indgang",hash=1930237257,coords={-1091.3889160156,369.93975830078,68.706237792969}, range = 10.0}, -- Indgangs dør
	[265] = {locked = true, key = "key_madwayne", permission="", name = "Indgang",hash=-2139443164,coords={-1129.2388916016,389.11965942383,70.761138916016}, range = 10.0}, -- Indgangs dør 2
	--Våben butik
	[266] = {locked = true, key = "key_drugdealer", permission="weapons.dealer", name = "Indgang",hash=-8873588,coords={811.23699951172,-2148.2788085938,29.619029998779}, pairs = 267}, -- Indgangs dør
	[267] = {locked = true, key = "key_drugdealer", permission="weapons.dealer", name = "Indgang",hash=97297972,coords={812.48699951172,-2148.2639160156,29.61900138855}, pairs = 266}, -- Indgangs dør
	[268] = {locked = true, key = "key_drugdealer", permission="weapons.dealer", name = "Indgang",hash=452874391,coords={826.70233154297,-2160.4514160156,29.618896484375}}, -- Indgangs dør

  --Mikkel Kures hus
	[269] = {locked = true, key = "key_kure", permission="", name = "Indgang",hash=-2029892494,coords={-23.135446548462,-1450.6931152344,30.708549499512}, range = 5.0, pairs = 270}, -- Indgangs dør
	[270] = {locked = true, key = "key_kure", permission="", name = "Indgang",hash=-2029892494,coords={-26.183792114258,-1451.0163574219,30.812255859375}, range = 5.0, pairs = 269}, -- Indgangs dør

  --Playboy Mansion
	[271] = {locked = true, key = "key_playboy", permission="", name = "Indgang",hash=-1563640173,coords={-1500.7536621094,103.48965454102,55.667831420898}}, -- Husdør
	[272] = {locked = true, key = "key_playboy", permission="", name = "Indgang",hash=-1563640173,coords={-1522.5258789063,143.15466308594,55.664138793945}}, -- Dør 2
	[273] = {locked = true, key = "key_playboy", permission="", name = "Indgang",hash=1033441082,coords={-1536.7124023438,130.96929931641,57.372093200684}}, -- Dør 3
	[274] = {locked = true, key = "key_playboy", permission="", name = "Indgang",hash=-2125423493,coords={-1614.060546875,78.017364501953,61.574886322021}, range = 10.0}, -- Port 1
	[275] = {locked = true, key = "key_playboy", permission="", name = "Indgang",hash=-2125423493,coords={-1471.1779785156,68.280288696289,53.297859191895}, range = 10.0}, -- Port 2
	[276] = {locked = true, key = "key_playboy", permission="", name = "Indgang",hash=-1859471240,coords={-1461.6138916016,65.82608795166,52.926692962646}}, -- Dør 4
	[277] = {locked = true, key = "key_playboy", permission="", name = "Indgang",hash=-1859471240,coords={-1441.3552246094,172.3882598877,55.802925109863}}, -- Dør 5
	[326] = {locked = true, key = "key_playboy", permission="", name = "Indgang",hash=-1859471240,coords={-1434.6364746094,235.60098266602,59.958110809326}}, -- Dør 6
	[327] = {locked = true, key = "key_playboy", permission="", name = "Indgang",hash=-1859471240,coords={-1579.1339111328,153.05020141602,58.682697296143}}, -- Dør 7
	[328] = {locked = true, key = "key_playboy", permission="", name = "Indgang",hash=-1141522158,coords={-1526.9544677734,118.64108276367,55.692718505859}, pairs = 329}, --Køleskab
	[329] = {locked = true, key = "key_playboy", permission="", name = "Indgang",hash=988364535,coords={-1526.9544677734,118.64108276367,55.692718505859}, pairs = 328}, --Køleskab

  --Brugtvogns Forhandler.
  	[278] = {locked = true, key = "key_brugtvogn", permission="", name = "Indgang",hash=-1603817716,coords={-50.20739364624,-1669.2833251953,29.297657012939}, range = 12.0}, -- Port 1
    [279] = {locked = true, key = "key_brugtvogn", permission="", name = "Indgang",hash=-1603817716,coords={-49.422149658203,-1668.2388916016,29.293087005615}, range = 12.0}, -- Port 2
    [283] = {locked = true, key = "key_brugtvogn", permission="", name = "Indgang",hash=-1603817716,coords={-34.441059112549,-1690.0166015625,29.294765472412}, range = 12.0}, -- Port 3
    [284] = {locked = true, key = "key_brugtvogn", permission="", name = "Indgang",hash=-1603817716,coords={-33.006893157959,-1689.5777587891,29.292552947998}, range = 12.0}, -- Port 4

-- Cokelab Sandy
  	[285] = {locked = true, key = "key_sandylab", permission="", name = "Indgang",hash=1286535678,coords={1932.6458740234,5158.4995117188,44.893810272217}, range = 15.0}, -- Port indgang
  	[286] = {locked = true, key = "key_sandylab", permission="", name = "Indgang",hash=776184575,coords={1956.9342041016,5174.451171875,48.085361480713}}, -- Dør til lade

-- Okaus Auto Midtby
    [287] = {locked = true, key = "key_sandy", permission="domingo.adgang", name = "Sandy Airport", hash=1289778077,coords={948.51702880859,-964.70404052734,39.50679397583}},
    [288] = {locked = true, key = "key_sandy", permission="domingo.adgang", name = "Sandy Airport", hash=-626684119,coords={954.59191894531,-972.55871582031,39.506736755371}},

--Vingården
    [289] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1077118233,coords={-1889.5582275391,2052.0229492188,141.01428222656}, pairs = 290},
    [290] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1077118233,coords={-1888.4501953125,2051.6123046875,141.00901794434}, pairs = 289},
    [291] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1077118233,coords={-1886.9470214844,2050.9106445313,141.00761413574}, pairs = 292},
    [292] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1077118233,coords={-1885.8067626953,2050.7346191406,141.00849914551}, pairs = 291},
    [293] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1843224684,coords={-1908.1851806641,2072.4362792969,140.40837097168}, pairs = 294},
    [294] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1843224684,coords={-1908.9870605469,2073.0437011719,140.40692138672}, pairs = 293},
    [295] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1843224684,coords={-1910.6384277344,2074.3525390625,140.40142822266}, pairs = 296},
    [296] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1843224684,coords={-1911.4051513672,2075.0734863281,140.40740966797}, pairs = 295},
    [297] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1843224684,coords={-1911.2692871094,2079.2717285156,140.40574645996}, pairs = 298},
    [298] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1843224684,coords={-1910.5539550781,2080.0788574219,140.40751647949}, pairs = 297},
    [299] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1843224684,coords={-1907.2359619141,2084.1862792969,140.39529418945}, pairs = 300},
    [300] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1843224684,coords={-1906.4099121094,2084.9401855469,140.44924926758}, pairs = 299},
    [301] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1843224684,coords={-1902.4361572266,2086.1000976563,140.40347290039}, pairs = 302},
    [302] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1843224684,coords={-1901.6147460938,2085.3176269531,140.40791320801}, pairs = 301},
    [303] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1843224684,coords={-1899.82421875,2083.9777832031,140.40098571777}, pairs = 304},
    [304] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1843224684,coords={-1899.2318115234,2083.2368164063,140.40794372559}, pairs = 303},
    [305] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1077118233,coords={-1886.6395263672,2074.0419921875,140.99830627441}, pairs = 306},
    [306] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1077118233,coords={-1885.6127929688,2073.7260742188,141.00694274902}, pairs = 305},
    [307] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1077118233,coords={-1875.0906982422,2069.7297363281,140.9974822998}, pairs = 308},
    [308] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1077118233,coords={-1874.1032714844,2069.2875976563,140.99655151367}, pairs = 307},
    [309] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1077118233,coords={-1859.8555908203,2054.1320800781,141.00971984863}, pairs = 310},
    [310] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1077118233,coords={-1860.9278564453,2054.2165527344,141.00944519043}, pairs = 309},
    [311] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1077118233,coords={-1893.4396972656,2074.880859375,141.00793457031}, pairs = 312},
    [312] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=1077118233,coords={-1894.2457275391,2075.5148925781,141.00793457031}, pairs = 311},
    [313] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=-1141522158,coords={-1864.2348632813,2060.5366210938,141.12348937988}, pairs = 314},
    [314] = {locked = true, key = "key_vineyard", permission="weapons.dealer", name = "Vingården", boomAble=true, hash=988364535,coords={-1864.2348632813,2060.5366210938,141.12348937988}, pairs = 313},

    --West Vinewood hus
    [315] = {locked = true, key = "key_westvw", permission="", name = "West Vinewood", hash=-1317124183,coords={-213.67515563965,399.11318969727,111.31444549561}},
    [316] = {locked = true, key = "key_westvw", permission="", name = "West Vinewood", hash=-2093749483,coords={-200.05059814453,383.39651489258,109.49488830566}, pairs = 317},
    [317] = {locked = true, key = "key_westvw", permission="", name = "West Vinewood", hash=-1492167262,coords={-200.65650939941,383.31768798828,109.49559783936}, pairs = 316},
    [318] = {locked = true, key = "key_westvw2", permission="", name = "West Vinewood 2", hash=1423576674,coords={-217.15550231934,381.12612915039,109.49566650391}},

    --Kures hus hegn port
    [319] = {locked = true, key = "key_kure", permission="", name = "Kures hus", hash=1127922797,coords={-14.137663841248,-1450.0708007813,30.570928573608}, range = 2.0},

	-- Matthew smith hus - Gentry Lane
    [320] = {locked = true, key = "key_gentrylane", permission="domingo.adgang", name = "Gentry lane", hash=-1603817716,coords={-65.238578796387,325.50305175781,110.36267089844}, range = 12.0, pairs = 321}, -- Indgangs dør
	[321] = {locked = true, key = "key_gentrylane", permission="domingo.adgang", name = "Gentry Lane", hash=-1603817716,coords={-62.995090484619,324.79638671875,110.39839172363}, range = 12.0, pairs = 320}, -- Indgangs dør
	[322] = {locked = true, key = "key_gentrylane", permission="domingo.adgang", name = "Gentry Lane", hash=-1857663329,coords={-62.277019500732,352.58795166016,113.58661651611}, range = 5.0},
	[323] = {locked = true, key = "key_gentrylane", permission="domingo.adgang", name = "Gentry Lane", hash=1286535678,coords={-91.773857116699,395.57485961914,112.4263381958}, range = 10.0},
	[324] = {locked = true, key = "key_gentrylane", permission="domingo.adgang", name = "Gentry Lane", hash=-610054759,coords={-77.04109954834,364.60983276367,112.44248199463}},
	[325] = {locked = true, key = "key_gentrylane", permission="domingo.adgang", name = "Gentry Lane", hash=1309269072,coords={-47.737461090088,348.82946777344,114.74925994873}},

	-- Soa borgen. (The lost midtby)
	[333] = {locked = true, key = "key_soa", permission="", name = "Sons of Anarchy", hash=-930593859,coords={960.46173095703,-140.2001953125,74.483779907227}, range = 10.0},
	[334] = {locked = true, key = "key_soa", permission="", name = "Sons of Anarchy", hash=190770132,coords={981.50079345703,-102.73731994629,74.845146179199}},
	[335] = {locked = true, key = "key_soa", permission="", name = "Sons of Anarchy", hash=-710818483,coords={991.49975585938,-133.11405944824,74.106468200684}},
	[336] = {locked = true, key = "key_soa", permission="", name = "Sons of Anarchy", hash=-710818483,coords={995.03149414063,-120.2964630127,74.061111450195}},
	[337] = {locked = true, key = "key_soa", permission="", name = "Sons of Anarchy", hash=-197537718,coords={982.59216308594,-125.40476226807,74.061088562012}, range = 10.0},


  -- Hospital midtby fløje
  [347] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=-434783486,coords={325.39520263672,-589.80267333984,43.291843414307}, pairs = 348},
  [348] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=-1700911976,coords={325.39520263672,-589.80267333984,43.291843414307}, pairs = 347},
  [349] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=-434783486,coords={327.75350952148,-593.91424560547,43.285713195801}, pairs = 350},
  [350] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=-1700911976,coords={327.75350952148,-593.91424560547,43.285713195801}, pairs = 349},
  [351] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=-434783486,coords={326.2561340332,-579.40692138672,43.284004211426}, pairs = 352},
  [352] = {locked = true, key = "key_hospital", permission="emergency.key", name = "Hospital",hash=-1700911976,coords={326.2561340332,-579.40692138672,43.284004211426}, pairs = 351},


  -- Alex Vargas' bollehule
	[353] = {locked = true, key = "key_vargas", permission="", name = "Alex Vargas", hash=-349730013,coords={-1254.0610351563,487.69711303711,94.298751831055}, range = 10.0, pairs = 354},
	[354] = {locked = true, key = "key_vargas", permission="", name = "Alex Vargas", hash=-1918480350,coords={-1254.0610351563,487.69711303711,94.298751831055}, range = 10.0, pairs = 353},
  [355] = {locked = true, key = "key_vargas", permission="", name = "Alex Vargas", hash=-484560128,coords={-1278.3989257813,496.73919677734,97.893928527832}, pairs = 356},
  [356] = {locked = true, key = "key_vargas", permission="", name = "Alex Vargas", hash=1438423099,coords={-1278.4489746094,497.56359863281,97.894523620605}, pairs = 355},
	[357] = {locked = true, key = "key_vargas", permission="", name = "Alex Vargas", hash=-2126458741,coords={-1288.4593505859,500.0944519043,97.782600402832}, pairs = 358},
	[358] = {locked = true, key = "key_vargas", permission="", name = "Alex Vargas", hash=-561083607,coords={-1288.6154785156,501.10781860352,97.754737854004}, pairs = 357},
	[359] = {locked = true, key = "key_vargas", permission="", name = "Alex Vargas", hash=-1165125699,coords={-1270.8934326172,512.87390136719,97.492416381836}},
	[360] = {locked = true, key = "key_vargas", permission="", name = "Alex Vargas", hash=-746075727,coords={-1266.1763916016,512.93218994141,97.373756408691}},
	[361] = {locked = true, key = "key_vargas", permission="", name = "Alex Vargas", hash=-1716946115,coords={-1284.6452636719,508.00524902344,97.559761047363}},
	[362] = {locked = true, key = "key_vargas", permission="", name = "Alex Vargas", hash=-1716946115,coords={-1288.4373779297,509.18606567383,97.559684753418}},
	[363] = {locked = true, key = "key_vargas", permission="", name = "Alex Vargas", hash=-168889920,coords={-1275.1096191406,518.14038085938,97.55867767334}},

  -- Vagos Base
	[364] = {locked = true, key = "key_vagos", permission="", name = "Russian Brotherhood", hash=1349340477,coords={332.74328613281,-2018.3618164063,22.385932922363}},
	[365] = {locked = true, key = "key_vagos", permission="", name = "Russian Brotherhood", hash=1349340477,coords={336.3005065918,-2021.2888183594,22.378791809082}},
	[366] = {locked = true, key = "key_vagos", permission="", name = "Russian Brotherhood", hash=1349340477,coords={343.69625854492,-2027.3187255859,22.394102096558}},
	[367] = {locked = true, key = "key_vagos", permission="", name = "Russian Brotherhood", hash=1349340477,coords={345.1149597168,-2028.6617431641,22.391883850098}},
	[368] = {locked = true, key = "key_vagos", permission="", name = "Russian Brotherhood", hash=1349340477,coords={352.36096191406,-2034.5635986328,22.389190673828}},
	[369] = {locked = true, key = "key_vagos", permission="", name = "Russian Brotherhood", hash=1349340477,coords={353.74108886719,-2035.8297119141,22.39323425293}},
	[370] = {locked = true, key = "key_vagos", permission="", name = "Russian Brotherhood", hash=1349340477,coords={361.26187133789,-2041.9177246094,22.392692565918}},
	[371] = {locked = true, key = "key_vagos", permission="", name = "Russian Brotherhood", hash=1349340477,coords={364.72909545898,-2045.1810302734,22.38348197937}},
	[372] = {locked = true, key = "key_vagos", permission="", name = "Russian Brotherhood", hash=1349340477,coords={336.14672851563,-2011.1501464844,22.387281417847}},
	[373] = {locked = true, key = "key_vagos", permission="", name = "Russian Brotherhood", hash=1349340477,coords={345.16024780273,-2015.9768066406,22.39621925354}},
	[374] = {locked = true, key = "key_vagos", permission="", name = "Russian Brotherhood", hash=1349340477,coords={353.42059326172,-2022.7860107422,22.395509719849}},
	[375] = {locked = true, key = "key_vagos", permission="", name = "Russian Brotherhood", hash=1349340477,coords={356.23889160156,-2025.2626953125,22.395721435547}},
	[376] = {locked = true, key = "key_vagos", permission="", name = "Russian Brotherhood", hash=1349340477,coords={362.00476074219,-2029.8811035156,22.395215988159}},
	[377] = {locked = true, key = "key_vagos", permission="", name = "Russian Brotherhood", hash=1349340477,coords={364.76275634766,-2032.404296875,22.395826339722}},
	[378] = {locked = true, key = "key_vagos", permission="", name = "Russian Brotherhood", hash=1349340477,coords={371.09490966797,-2040.4752197266,22.390386581421}},


	--church
	[379] = {locked = false, key = "key_kirke", permission="", name = "Kirken", hash=2583879643,coords={-767.68737792969,-23.18984413147,41.081958770752}},
	[380] = {locked = false, key = "key_kirke", permission="", name = "Kirken", hash=3889691332,coords={-766.78692626953,-22.570976257324,41.081382751465}},

  -- Nationalbanken
	[381] = {locked = true, key = "", permission="politi.bank", name = "Banken", hash=-222270721,coords={257.05178833008,220.59799194336,106.28520202637}},
	[382] = {locked = true, key = "", permission="politi.bank", name = "Banken", hash=746855201,coords={261.56207275391,221.82202148438,106.28345489502}},
	[383] = {locked = true, key = "", permission="politi.bank", name = "Banken", hash=961976194,coords={253.79254150391,224.58407592773,101.87554168701},heading = 0.0, heading2= -200.0,freeze = true},
	--[383] = {locked = true, key = "", permission="police.pc", name = "Banken", hash=961976194,coords={253.79254150391,224.58407592773,101.87554168701},heading2= -200.0},

    --Alm. Brand Bank (Alta - Nord for LS Midtby)
    [384] = {locked = true, key = "", permission="politi.bank", name = "Banken", hash=2121050683,coords={311.97497558594,-283.65689086914,54.1647605896},heading = -200.0, heading2 = -110.0, freeze = true},
    --[386] = {locked = true, key = "", permission="police.pc", name = "Banken", hash=2121050683,coords={312.2073059082,-283.59387207031,54.143005371094},heading2 = -110.0},
    [385] = {locked = true, key = "", permission="politi.bank", name = "Banken", hash=-1591004109,coords={313.89852905273,-285.77478027344,54.143043518066}},

    --Sydbank
    [386] = {locked = true, key = "", permission="politi.bank", name = "Banken", hash=2121050683,coords={-1210.8043212891,-335.20571899414,37.777481079102},heading = -200.0, heading2 = -65.0, freeze = true},
    --[389] = {locked = true, key = "", permission="police.pc", name = "Banken", hash=2121050683,coords={-1210.8043212891,-335.20571899414,37.777481079102},heading = -110.0},
    [387] = {locked = true, key = "", permission="politi.bank", name = "Banken", hash=-1591004109,coords={-1208.0363769531,-335.56130981445,37.759269714355}},

    --Jyskebank
    [388] = {locked = true, key = "", permission="politi.bank", name = "Banken", hash=-1185205679,coords={-105.32761383057,6472.8159179688,31.626712799072},heading = -180.0, heading2 = 45.0, freeze = true},
    --[392] = {locked = true, key = "", permission="police.pc", name = "Banken", hash=1622278560,coords={-105.32761383057,6472.8159179688,31.626712799072},heading = 45.0},
    [389] = {locked = true, key = "", permission="politi.bank", name = "Banken", hash=1309269072,coords={-105.86994171143,6475.7109375,31.626710891724}},

    -- Ringkjøbing LandboBank
    [390] = {locked = true, key = "", permission="politi.bank", name = "Banken", hash=2121050683,coords={1175.2554931641,2711.6921386719,38.066223144531},heading = -5.0, heading2 = -270.0, freeze = true},
    --[395] = {locked = true, key = "", permission="police.pc", name = "Banken", hash=2121050683,coords={1175.2554931641,2711.6921386719,38.066223144531},heading = 90.0},
    [391] = {locked = true, key = "", permission="politi.bank", name = "Banken", hash=-1591004109,coords={1173.0814208984,2713.173828125,38.066265106201}},

    -- Nordea Bank
    [392] = {locked = true, key = "", permission="politi.bank", name = "Banken", hash=-63539571,coords={-2957.8088378906,482.41696166992,15.675259590149},heading = -110.0, heading2 = -3.0, freeze = true},
    --[398] = {locked = true, key = "", permission="police.pc", name = "Banken", hash=-63539571,coords={-2957.8088378906,482.41696166992,15.675259590149},heading = 90.0},
    [393] = {locked = true, key = "", permission="politi.bank", name = "Banken", hash=-1591004109,coords={-2956.234375,484.50592041016,15.675326347351}},

    -- Midtby Bank
    [394] = {locked = true, key = "", permission="politi.bank", name = "Banken", hash=2121050683,coords={147.86676025391,-1045.3984375,29.346273422241},heading = -200.0, heading2 = -110.0, freeze = true},
    --[401] = {locked = true, key = "", permission="politi.bank", name = "Banken", hash=2121050683,coords={147.86676025391,-1045.3984375,29.346273422241},heading = 90.0},
    [395] = {locked = true, key = "", permission="politi.bank", name = "Banken", hash=-1591004109,coords={149.48538208008,-1047.3760986328,29.346326828003}},

	-- Alex og musti's tøjbutik
	[396] = {locked = true, key = "key_a&m", permission="", name = "Alex Musti", hash=-1922281023,coords={-156.65487670898,-304.93368530273,39.733322143555}, pairs = 397},
	[397] = {locked = true, key = "key_a&m", permission="", name = "Alex Musti", hash=-1922281023,coords={-157.05023193359,-305.99588012695,39.733287811279}, pairs = 396},


	}
return cfg
