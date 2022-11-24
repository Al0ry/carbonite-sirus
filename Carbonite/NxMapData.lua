---------------------------------------------------------------------------------------
-- NxMapData - Map code
-- Copyright 2007-2012 Carbon Based Creations, LLC
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
-- Carbonite - Addon for World of Warcraft(tm)
-- Copyright 2007-2012 Carbon Based Creations, LLC
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
---------------------------------------------------------------------------------------

--[[

4 = Durotar
9 = Mulgore
11 = Barrens (Northern Barrens)
13 = Kalimdor (continent 1)
14 = Azeroth (continent 2)
15 = Alterac
16 = Arathi
17 = Badlands
19 = BlastedLands
20 = Tirisfal
21 = Silverpine
22 = WesternPlaguelands
23 = EasternPlaguelands
24 = Hilsbrad
26 = Hinterlands
27 = DunMorogh
28 = SearingGorge
29 = BurningSteppes
30 = Elwynn
32 = DeadwindPass
34 = Duskwood
35 = LochModan
36 = Redridge
37 = Stranglethorn (Northern Stranglethorn)
38 = SwampOfSorrows
39 = Westfall
40 = Wetlands
41 = Teldrassil
42 = Darkshore
43 = Ashenvale
61 = ThousandNeedles
81 = StonetalonMountains
101 = Desolace
121 = Feralas
141 = Dustwallow
161 = Tanaris
181 = Aszhara
182 = Felwood
201 = UngoroCrater
241 = Moonglade
261 = Silithus
281 = Winterspring
301 = Stormwind
321 = Ogrimmar
341 = Ironforge
362 = ThunderBluff
381 = Darnassis
382 = Undercity
401 = AlteracValley
443 = WarsongGulch
461 = ArathiBasin
462 = EversongWoods
463 = Ghostlands
464 = AzuremystIsle
465 = Hellfire
466 = Expansion01 (continent 3 Outland)
467 = Zangarmarsh
471 = TheExodar
473 = ShadowmoonValley
475 = BladesEdgeMountains
476 = BloodmystIsle
477 = Nagrand
478 = TerokkarForest
479 = Netherstorm
480 = SilvermoonCity
481 = ShattrathCity
482 = NetherstormArena
485 = Northrend (continent 4)
486 = BoreanTundra
488 = Dragonblight
490 = GrizzlyHills
491 = HowlingFjord
492 = IcecrownGlacier
493 = SholazarBasin
495 = TheStormPeaks
496 = ZulDrak
499 = Sunwell
501 = LakeWintergrasp
502 = ScarletEnclave
504 = Dalaran
510 = CrystalsongForest
512 = StrandoftheAncients
520 = TheNexus
521 = CoTStratholme
522 = Ahnkahet
523 = UtgardeKeep
524 = UtgardePinnacle
525 = HallsofLightning
526 = Ulduar77
527 = TheEyeofEternity
528 = Nexus80
529 = Ulduar
530 = Gundrak
531 = TheObsidianSanctum
532 = VaultofArchavon
533 = AzjolNerub
534 = DrakTharonKeep
535 = Naxxramas
536 = VioletHold
540 = IsleofConquest
541 = HrothgarsLanding
542 = TheArgentColiseum
609 = RubySanctum

Cataclysm

-- Continent 1
606 = Mount Hyjal
607 = Southern Barrens
720 = Uldum
772 = Ahn'Qiraj: The Fallen Kingdom

-- Continent 2
689 = Stranglethorn Vale (full map)
673 = The Cape of Stranglethorn (south part)

-- Continent 2 (Vashj'ir sub continent of EK)
613 = Vashj'ir (full map)
610 = Kelp'thar Forest
614 = Abyssal Depths
615 = Shimmering Expanse

-- Continent 5 (The Maelstrom)
751 = The Maelstrom (continent)
544 = The Lost Isles (goblin starting)
605 = Kezan (goblin city)
640 = Deepholm
737 = The Maelstrom

545 = Gilneas (starting phase)
611 = GilneasCity (starting city phase)
626 = TwinPeaks (battle ground)
680 = RagefireChasm
685 = Ruins of Gilneas City (Worgen city)
686 = ZulFarrak
687 = TheTempleOfAtalHakkar
688 = BlackfathomDeeps
690 = TheStockade
691 = Gnomeregan
692 = Uldaman
696 = MoltenCore
699 = DireMaul (multiple layers for each wing)
700 = Twilight Highlands
704 = BlackrockDepths
708 = Tol Barad (battle ground)
709 = Tol Barad Peninsula
717 = RuinsofAhnQiraj
718 = OnyxiasLair
721 = BlackrockSpire
736 = BattleForGilneas (battle ground)
747 = LostCityOfTheTolvir
749 = WailingCaverns
750 = Maraudon
752 = BardinHold
753 = BlackrockCaverns
754 = BlackwingDescent
755 = BlackwingLair
756 = TheDeadmines
757 = GrimBatol
758 = BastionOfTwilight
759 = HallsOfOrigination
760 = RazorfenDowns
761 = RazorfenKraul
762 = ScarletMonastery (multiple layers for each wing)
763 = Scholomance
764 = ShadowfangKeep
765 = Stratholme
766 = AhnQiraj
767 = ThroneOfTheTides
768 = TheStonecore
769 = TheVortexPinnacle
773 = ThroneOfTheFourWinds
--]]

-- Local

local Map = Nx.Map

--------
-- Map tables

Map.MapInfo = {
	[0] = {	-- Dummy
		Name = "Instance",
		X = 0,
		Y = 0,
	},
	{
		Name = "Kalimdor",
		FileName = "Kalimdor",
		X = 0,
		Y = 500,
		Min = 1001,
		Max = 1026,
	},
	{
		Name = "Eastern Kingdoms",
		FileName = "Azeroth",
		X = 3784,
		Y = -200,
		Min = 2001,
		Max = 2036,
	},
	{
		Name = "Outland",
		FileName = "Expansion01",
		X = 3000,
		Y = 4000,
		Min = 3001,
		Max = 3009,
	},
	{
		Name = "Northrend",
		FileName = "Northrend",
		X = 600,
		Y = -4000,
		Min = 4001,
		Max = 4013,
	},
	{
		Name = "Forbes Island",
		FileName = "VIP-PRIME",
		X = 1429,
		Y = 1657,
		Min = 5001,
		Max = 5002,
	},
	-- [6] = {
	    -- Name = "Pandaria",
		-- FileName = "Pandaria",
		-- X = 2400,
		-- Y = 2500,
		-- Min = 6001,
		-- Max = 6011,
	-- },
	[8] = {
		Name = "Instance",
		X = 2000,
		Y = 100,
	},
	[9] = {
		Name = "BG",
		X = 2000,
		Y = 500,
	},
}

Map.BXO=-503
Map.BYO=516
Map.DXO=-3500
Map.DYO=-2010


Map.MapWorldInfo = {
[0]={10,0,0,0,0,Overlay="barrens",},
[1000]={73.3282,-3398.85,-2552.91,},
[1001]={Name="Ashenvale",11.53329,-339.9963,-934.5858,Overlay="ashenvale",Fish = 150,},
[1002]={Name="Azshara",10.1416,655.4186,-1068.333,Overlay="aszhara",Fish = 300,},
[1003]={Name="Azuremyst Isle",8.141665,Map.DXO+2100.001,Map.DYO+558.7514,Overlay="azuremystisle",MId=1003,Fish = 25,},
[1004]={Name="Bloodmyst Isle",6.525004,Map.DXO+2015,Map.DYO+151.667,Overlay="bloodmystisle",MId=1003,Fish = 75,},
[1005]={Name="Darkshore",13.10007,-588.3355,-1666.666,Overlay="darkshore",Fish = 75,},
[1006]={Name="Darnassus",2.116669,-587.6726,-2047.663,Overlay="darnassis",City = true,MMOutside = true,Fish = 75,},
[1007]={Name="Desolace",8.99169,-846.6668,-90.41775,Overlay="desolace",Fish = 225,},
[1008]={Name="Durotar",10.575,392.5,-361.6666,Overlay="durotar",Fish = 25,},
[1009]={Name="Dustwallow Marsh",10.500006,195.0004,406.6614,Overlay="dustwallow",Fish = 225,},
[1010]={Name="Felwood",11.50004,-328.3354,-1426.666,Overlay="felwood",Fish = 300,},
[1011]={Name="Feralas",13.89998,-1088.332,473.3343,Overlay="feralas",Fish = 300,},
[1012]={Name="Moonglade",4.616656,276.2508,-1698.333,Overlay="moonglade",Fish = 300,},
[1013]={Name="Mulgore",10.275012,-409.5834,54.58379,Overlay="mulgore",Fish = 25,},
[1014]={Name="Orgrimmar",2.805208,736.1202,-454.7754,Overlay="ogrimmar",City = true,Fish = 75,},
[1015]={Name="Silithus",6.966681,-507.5004,1191.667,Overlay="silithus",Fish = 425,},
[1016]={Name="Stonetalon Mountains",9.766648,-649.1656,-583.331,Overlay="stonetalonmountains",Fish = 150,},
[1017]={Name="Tanaris",13.79999,43.75034,1175,Overlay="tanaris",Fish = 300,},
[1018]={Name="Teldrassil",10.18333,-762.9161,-2366.25,Overlay="teldrassil",Fish = 25,},
[1019]={Name="The Barrens",20.26656,-524.5772,-322.4962,Overlay="barrens",Fish = 75,},
[1020]={Name="The Exodar",2.113537,Map.DXO+2213.274,Map.DYO+721.9364,Overlay="theexodar",City = true,MId=1003,},
[1021]={Name="Thousand Needles",8.800012,86.6665,793.3343,Overlay="thousandneedles",Fish = 225,},
[1022]={Name="Thunder Bluff",2.087504,-103.3333,170,Overlay="thunderbluff",City = true,MMOutside = true,Fish = 75,},
[1023]={Name="Un'Goro Crater",7.399998,-106.6661,1193.333,Overlay="ungorocrater",Fish = 300,},
[1024]={Name="Winterspring",14.20029,63.32512,-1706.666,Overlay="winterspring",Fish = 425,},
[1025]={Name="Hyjal",0,0,0,Overlay="hyjal",Fish = 425,},
[1026]={Name="Wailing Caverns",0,0,0,Overlay="wailingcaverns",Fish = 425,},
--
[2000]={81.53,-3645.96,-2249.31,},
[2001]={Name="Alterac Mountains",5.599993,-156.6661,-299.9998,Overlay="alterac",Fish = 225,},
[2002]={Name="Arathi Highlands",7.199987,173.3343,26.66715,Overlay="arathi",Fish = 225,},
[2003]={Name="Badlands",4.974991,415.8339,1177.917,Overlay="badlands",},
[2004]={Name="Blasted Lands",6.699956,248.3361,2113.333,Overlay="blastedlands",},
[2005]={Name="Burning Steppes",5.85836,53.33179,1406.25,Overlay="burningsteppes",Fish = 425,},
[2006]={Name="Deadwind Pass",4.999989,166.6672,1973.333,Overlay="deadwindpass",Fish = 425,},
[2007]={Name="Dun Morogh",9.849867,-360.4126,775.4073,Overlay="dunmorogh",Fish = 25,},
[2008]={Name="Duskwood",5.399999,-166.6662,1943.333,Overlay="duskwood",Fish = 150,},
[2009]={Name="Eastern Plaguelands",8.0563,457.592712,-740.542767,Overlay="easternplaguelands",Fish = 425,},
[2010]={Name="Elwynn Forest",6.941641,-307.082,1587.917,Overlay="elwynn",Fish = 25,},
[2011]={Name="Eversong Woods",9.850039,Map.BXO+897.499,Map.BYO-2208.334,Overlay="eversongwoods",MId=2011,Fish = 25,},
[2012]={Name="Ghostlands",6.600027,Map.BXO+1056.666,Map.BYO-1653.333,Overlay="ghostlands",MId=2011,Fish = 75,},
[2013]={Name="Hillsbrad Foothills",6.399936,-213.3293,-79.99989,Overlay="hilsbrad",Fish = 150,},
[2014]={Name="Ironforge",1.581249,142.7185,913.8483,Overlay="ironforge",City = true,Fish = 75,},
[2015]={Name="Loch Modan",5.516659,398.7504,897.5004,Overlay="lochmodan",Fish = 75,},
[2016]={Name="Redridge Mountains",4.341669,314.1668,1715,Overlay="redridge",Fish = 150,},
[2017]={Name="Searing Gorge",4.462489,64.58443,1220,Overlay="searinggorge",},
[2018]={Name="Silvermoon City",2.42292,Map.BXO+1280.15,Map.BYO-2030.742,Overlay="silvermooncity",City = true,MId=2011,},
[2019]={Name="Silverpine Forest",8.399968,-689.998,-333.3325,Overlay="silverpine",Fish = 75,},
[2020]={Name="Stormwind City",3.4732,-344.46097,1599.206616,Overlay="stormwind",City = true,Fish = 75,},
[2021]={Name="Stranglethorn Vale",12.76268,-444.1722,2233.75,Overlay="stranglethorn",Fish = 225,},
[2022]={Name="Swamp of Sorrows",4.587497,444.5835,1924.166,Overlay="swampofsorrows",Fish = 225,},
[2023]={Name="The Hinterlands",7.699974,315.0007,-293.3329,Overlay="hinterlands",Fish = 300,},
[2024]={Name="Tirisfal Glades",9.037504,-606.6664,-767.4979,Overlay="tirisfal",Fish = 25,},
[2025]={Name="Undercity",1.9187478,-174.6383,-375.589,Overlay="undercity",City = true,Fish = 75,},
[2026]={Name="Western Plaguelands",8.599958,-83.33159,-673.3347,Overlay="westernplaguelands",Fish = 300,},
[2027]={Name="Westfall",7.000001,-603.3333,1880.002,Overlay="westfall",Fish = 75,},
[2028]={Name="Wetlands",8.27078,77.92012,429.5833,Overlay="wetlands",Fish = 150,},
[2029]={Name="Isle of Quel'Danas",6.655,Map.BXO+1060.404,Map.BYO-2713.859,Overlay="sunwell",MId=2011,Fish = 450,},
[2030]={Name="Plaguelands: The Scarlet Enclave",6.32,1200,-650,Overlay="scarletenclave",City = true,UseAId = true,},
[2031]={Name="Scarlet Monastery",0.41,132.002,-589.765,Overlay="scarletmonasteryentrance",City = true,Fish = 425,UseAId = true,},
[2032]={Name="Gilneas",0--[[ 3.5 ]],-457,150,Overlay="fireworld",City = true,Fish = 425,},
[2033]={Name="Tol'Garod",5.54,-1040,561.8,Overlay="tolgarod",Explored = true, ScaleAdjX = 0.84,UseAId = true,},
[2034]={Name="Blackrock Mountain",1.4253,152.24,1465.03,Overlay="blackrockmountain1",City = true, Fish = 225,},
[2035]={Name="Blackrock Mountain1",1.52,125.5,1417.4,Overlay="blackrockmountain2",City = true, Fish = 225,},
[2036]={Name="Blackrock Mountain2",0.5,229,1496.5,Overlay="blackrockmountain3",City = true, Fish = 225,},
--
[3000]={34.606,-2587.3,-1151.7,},
[3001]={Name="Blade's Edge Mountains",10.85003,-1769.168,-881.6678,Overlay="bladesedgemountains",QAchievementId=1193,},
[3002]={Name="Hellfire Peninsula",10.32915,-1107.916,-296.2509,Overlay="hellfire",Fish = 375,QAchievementId=1189,QAchievementIdH=1271,},
[3003]={Name="Nagrand",11.05005,-2059.17,-8.333105,Overlay="nagrand",Fish = 475,QAchievementId=1192,QAchievementIdH=1273,},
[3004]={Name="Netherstorm",11.14996,-1096.665,-1091.25,Overlay="netherstorm",Fish = 475,QAchievementId=1194,},
[3005]={Name="Shadowmoon Valley",11,-845.0001,389.5833,Overlay="shadowmoonvalley",Fish = 375,QAchievementId=1195,},
[3006]={Name="Shattrath City",2.6125,-1227.052,294.7909,Overlay="shattrathcity",City = true,MMOutside = true,},
[3007]={Name="Terokkar Forest",10.8,-1416.667,200,Overlay="terokkarforest",Fish = 450,QAchievementId=1191,QAchievementIdH=1272,},
[3008]={Name="Zangarmarsh",10.05418,-1895,-387.0831,Overlay="zangarmarsh",Fish = 400,QAchievementId=1190,},
[3009]={Name="Shar'gel",4.16,109,42,Overlay="twistingnether", Explored = true, UseAId = true},
[4000]={35.5,0,-0,},
[4001]={Name="Borean Tundra",11.521,125.764810,1139.054323,Overlay="boreantundra",Fish = 475,QAchievementId=33,QAchievementIdH=1358,},
[4002]={Name="Crystalsong Forest",5.4416,1550.386409,817.907816,Overlay="crystalsongforest",Fish = 500,},
[4003]={Name="Dalaran",1.6589/1.3,1629,861,Overlay="dalaran",MapBaseName = "dalaran1_",City = true,ScaleAdjust = 1.3,Fish = 525,Level2Id=4004,},
[4004]={Name="Dalaran Underbelly",1.6589/1.3,1629,861,Overlay="dalaransewerage",MapBaseName = "dalaransewerage1_",City = true,ScaleAdjust = 1.3,Fish = 525,Level1Id=4003,},
[4005]={Name="Dragonblight",11.21,1113.94,1003.78,Overlay="dragonblight",Fish = 475,QAchievementId=35,QAchievementIdH=1359,},
[4006]={Name="Grizzly Hills",10.5,2061.032452,1015.273026,Overlay="grizzlyhills",Fish = 475,QAchievementId=37,QAchievementIdH=1357,},
[4007]={Name="Howling Fjord",12.085,2119.306683,1495.527721,Overlay="howlingfjord",Fish = 475,QAchievementId=34,QAchievementIdH=1356,},
[4008]={Name="Icecrown",12.533,750.941881,233.475172,Overlay="icecrownglacier",QAchievementId=40,},
[4009]={Name="Sholazar Basin",8.7057,453.792401,661.305837,Overlay="sholazarbasin",Fish = 525,QAchievementId=39,},
[4010]={Name="The Storm Peaks",14.214,1471.175866,79.244441,Overlay="thestormpeaks",QAchievementId=38,},
[4011]={Name="Wintergrasp",5.9455,973.388866,975.227557,Overlay="lakewintergrasp",Explored = true,},
[4012]={Name="Zul'Drak",9.98,1959.324066,584.635173,Overlay="zuldrak",QAchievementId=36,},
[4013]={Name="Hrothgar's Landing",7.35,1280,-37.5,Overlay="hrothgarslanding",Explored = true,},
[5000]={6.4,0,-0,},
[5001]={Name="VIP",1.48,296,45,Overlay="vip",City = true,Fish = 25,},
[5002]={Name="PRIME",2.7,156,232,Overlay="prime",City = true,Fish = 25,},
[9000]={1,0,0,},
[9001]={Name="Arathi Basin",3.508,0,-1600,Short = "AB",},
[9002]={Name="Warsong Gulch",2.29,0,-800,Short = "WG",},
[9003]={Name="Alterac Valley",8.471,0,0,Short = "AV",},
[9004]={Name="Eye of the Storm",4.538,0,800,Short = "EOS",},
[9005]={Name="Blade's Edge Arena",1,0,0,Short = "BEA",Arena = true},
[9006]={Name="Nagrand Arena",1,0,0,Short = "NA",Arena = true},
[9007]={Name="Ruins of Lordaeron",1,0,0,Short = "RL",Arena = true},
[9008]={Name="Strand of the Ancients",3.486,0,1600,Short = "SoA",},
[9009]={Name="Isle of Conquest",5.295,0,-2400,Short = "IC",},
[11024]={0,0,.02},
[11025]={0,0,.04},
[11147]={0,0,.06},
[12017]={0,.01,0},
[12061]={0,0,.01},
[13027]={0,.0,-.0},
[13028]={0,-.04,.0},
[13029]={0,-.02,.0},
[13030]={0,.02,.00},
}

--------

--Map.HotspotInfo = {
--}

--------
-- "Atlas\Images\Maps"

Map.AtlasInstanceInfo = {
	Atlas = 1,					-- Flag table as Atlas maps
	[13006] = {
		129 / 512, 386 / 512,		"AuchAuchenaiCrypts"
	},
	[13007] = {
		109 / 512, 44 / 512,		"AuchManaTombs",
	},
	[13008] = {
		458 / 512, 236 / 512,		"AuchSethekkHalls",
	},
	[13009] = {
		61 / 512, 77 / 512,		"AuchShadowLabyrinth", },
	[13013] = {
		104 / 512, 458 / 512,		"BlackTempleStart",
		104 / 512 - 1, 458 / 512,		"BlackTempleBasement",
		104 / 512, 458 / 512 + 1,		"BlackTempleTop",
	},
	[11014] = {
		171 / 512, 59 / 512,		"BlackfathomDeeps",
	},
	[12015] = {
		126 / 512, 420 / 512,		"BlackrockDepths",	},
	[12017] = {
		16 / 512, 71 / 512,		"BlackrockSpireLower",
		16 / 512, 71 / 512 + 1,		"BlackrockSpireUpper",
	},
	[12018] = {
		342 / 512, 361 / 512,		"BlackwingLair",
	},
	[11023] = {
		108 / 512, 252 / 512,		"CoTHyjal",
	},
	[11024] = {
		71 / 512, 206 / 512,		"CoTOldHillsbrad",
	},
	[11025] = {
		267 / 512, 135 / 512,		"CoTBlackMorass",
	},
	[13027] = {
		12 / 512, 339 / 512,		"CFRSerpentshrineCavern",
	},
	[13028] = {
		126 / 512, 119 / 512,		"CFRTheSlavePens",
	},
	[13029] = {
		14 / 512, 181 / 512,		"CFRTheSteamvault",
	},
	[13030] = {
		124 / 512, 341 / 512,		"CFRTheUnderbog",
	},
	[11036] = {
		385 / 512, 405 / 512,		"DireMaulNorth",
		385 / 512 + 1, 405 / 512,		"DireMaulWest",
		385 / 512 - 1, 405 / 512,		"DireMaulEast",
	},
	[12048] = {
		405 / 512, 73 / 512,		"Gnomeregan",
	},
	[13049] = {
		447 / 512, 364 / 512,	"GruulsLair",
	},
	[13051] = {
		213 / 512, 330 / 512,	"HCHellfireRamparts",
	},
	[13052] = {
		101 / 512, 81 / 512,		"HCMagtheridonsLair",
	},
	[13053] = {
		242 / 512, 473 / 512,	"HCBloodFurnace",
	},
	[13054] = {
		341 / 512, 497 / 512,	"HCTheShatteredHalls",
	},
	[12058] = {
		144 / 512, 217 / 512,		"KarazhanStart",
		144 / 512 - 1, 217 / 512,	"KarazhanEnd",
	},
	[11060] = {
		378 / 512, 63 / 512,		"Maraudon",
	},
	[12061] = {
		19 / 512, 114 / 512,		"MoltenCore",
	},
	[14065] = {
		210 / 512, 211 / 512,	"Naxxramas",
	},
	[11067] = {
		50 / 512, 66 / 512,		"OnyxiasLair",
	},
	[11069] = {
		379 / 512, 14 / 512,		"RagefireChasm",
	},
	[11070] = {
		26 / 512, 123 / 512,		"RazorfenDowns",
	},
	[11071] = {
		359 / 512, 361 / 512,	"RazorfenKraul",
	},
	[11073] = {
		320 / 512, 36 / 512,		"TheRuinsofAhnQiraj",
	},
	[12074] = {
		512 / 512, 512 / 512,	"SMArmory",
		0 / 512, 512 / 512,		"SMCathedral",
		512 / 512, 0 / 512,		"SMGraveyard",
		0 / 512, 0 / 512,			"SMLibrary",
	},
	[12075] = {
		124 / 512, 174 / 512,	"Scholomance",
	},
	[12077] = {
		373 / 512, 325 / 512,	"ShadowfangKeep",
	},
	[12086] = {
		266 / 512, 460 / 512,	"Stratholme",
	},
	[12087] = {
		307 / 512, 11 / 512,		"TheSunkenTemple",
	},
	[13091] = {
		193 / 512, 485 / 512,		"TempestKeepArcatraz",
	},
	[13092] = {
		494 / 512, 218 / 512,		"TempestKeepBotanica",
	},
	[13093] = {
		230 / 512, 482 / 512,		"TempestKeepTheEye",
	},
	[13094] = {
		219 / 512, 475 / 512,		"TempestKeepMechanar",
	},
	[11095] = {
		127 / 512, 193 / 512,		"TheTempleofAhnQiraj",
	},
	[12098] = {
		62 / 512, 100 / 512,		"TheDeadmines",
	},
	[12101] = {
		257 / 512, 347 / 512,		"TheStockade",
	},
	[12106] = {
		458 / 512, 379 / 512,		"Uldaman",
	},
	[11109] = {
		220 / 512, 298 / 512,		"WailingCaverns",
	},
	[12116] = {
		399 / 512, 453 / 512,		"ZulFarrak",
	},
	[12117] = {
		39 / 512, 259 / 512,		"ZulGurub",
	},
	[12118] = {
		39 / 512, 271 / 512,		"ZulAman",
	},
	[12120] = {
		209 / 512, 401 / 512,	"MagistersTerrace",
	},
	[12121] = {
		164 / 512, 69 / 512,		"SunwellPlateau",
	},
	[14133] = { 438 / 512, 349 / 512, "AhnKahet", },
	[14134] = { 108 / 512, 214 / 512, "AzjolNerub",	},
	[14135] = {  17 / 512, 279 / 512, "DrakTharonKeep", },
	[14136] = { 375 / 512, 172 / 512, "Gundrak", },
	[14137] = { 186 / 512, 459 / 512, "TheNexus", },
	[14138] = { 250 / 512, 244 / 512, "TheOculus", },
	[14139] = { 236 / 512, 481 / 512, "VioletHold", },
	[14140] = {   9 / 512, 154 / 512, "UlduarHallsofLightning", },
	[14141] = {  62 / 512, 209 / 512, "UlduarHallsofStone", },
	[14142] = { 334 / 512, 271 / 512, "UtgardeKeep", },
	[14144] = { 265 / 512, 257 / 512, "ObsidianSanctum", },
	[14145] = { 185 / 512,   9 / 512, "UtgardePinnacle", },
	[11147] = { 398 / 512, 489 / 512, "CoTOldStratholme", },
}

Map.InstanceInfo = {			-- Blizzard instance maps (SetInstanceMap uses size of 3 for table entries)

	-- Cataclysm
	[15188] = { 0, 0,			"Baradinhold\\Baradinhold1_", },
	[11014] = { 0, 0,			"BlackFathomDeeps\\BlackFathomDeeps1_",
					0, -100,		"BlackFathomDeeps\\BlackFathomDeeps2_",
					0, -200,		"BlackFathomDeeps\\BlackFathomDeeps3_", },
	[12189] = { 0, 0,			"BlackrockCaverns\\BlackrockCaverns1_",
					0, -100,		"BlackrockCaverns\\BlackrockCaverns2_", },
	[12015] = { 0, 0,			"BlackrockDepths\\BlackrockDepths1_",
					0, -100,		"BlackrockDepths\\BlackrockDepths2_", },
	[12017] = { 0, 0,			"BlackrockSpire\\BlackrockSpire1_",
					0, -100,		"BlackrockSpire\\BlackrockSpire2_",
					0, -200,		"BlackrockSpire\\BlackrockSpire3_",
					0, -300,		"BlackrockSpire\\BlackrockSpire4_",
					0, -400,		"BlackrockSpire\\BlackrockSpire5_",
					0, -500,		"BlackrockSpire\\BlackrockSpire6_",
					0, -600,		"BlackrockSpire\\BlackrockSpire7_", },
	[12190] = { 0, 0,			"BlackwingDescent\\BlackwingDescent1_",
					0, -100,		"BlackwingDescent\\BlackwingDescent2_", },
	[12018] = { 0, 0,			"BlackwingLair\\BlackwingLair1_",
					0, -100,		"BlackwingLair\\BlackwingLair2_",
					0, -200,		"BlackwingLair\\BlackwingLair3_",
					0, -300,		"BlackwingLair\\BlackwingLair4_", },
	[11036] = { 0, 0,			"DireMaul\\DireMaul1_",
					0, -100,		"DireMaul\\DireMaul2_",
					0, -200,		"DireMaul\\DireMaul3_",
					0, -300,		"DireMaul\\DireMaul4_",
					0, -400,		"DireMaul\\DireMaul5_",
					0, -500,		"DireMaul\\DireMaul6_", },
	[12048] = { 0, 0,			"Gnomeregan\\Gnomeregan1_",
					0, -100,		"Gnomeregan\\Gnomeregan2_",
					0, -200,		"Gnomeregan\\Gnomeregan3_",
					0, -300,		"Gnomeregan\\Gnomeregan4_", },
	[12191] = { 0, 0,			"GrimBatol\\GrimBatol1_", },
	[11193] = { 0, 0,			"HallsOfOrigination\\HallsOfOrigination1_",
					0, -100,		"HallsOfOrigination\\HallsOfOrigination2_",
					0, -200,		"HallsOfOrigination\\HallsOfOrigination3_", },
	[11186] = { 0, 0,			"LostCityofTolvir\\LostCityofTolvir", },
	[11060] = { 0, 0,			"Maraudon\\Maraudon1_",
					0, -100,		"Maraudon\\Maraudon2_", },
	[12061] = { 0, 0,			"MoltenCore\\MoltenCore1_", },
	[11069] = { 0, 0,			"Ragefire\\Ragefire1_", },
	[11070] = { 0, 0,			"RazorfenDowns\\RazorfenDowns1_", },
	[11071] = { 0, 0,			"RazorfenKraul\\RazorfenKraul1_", },
	[11073] = { 0, 0,			"RuinsofAhnQiraj\\RuinsofAhnQiraj", },
	[12074] = { 0, 0,			"ScarletMonastery1\\ScarletMonastery1",},
    [12171] = { 0, 0,			"ScarletMonastery2\\ScarletMonastery2",},
    [12172] = { 0, 0,			"ScarletMonastery3\\ScarletMonastery3",},
    [12173] = { 0, 0,			"ScarletMonastery4\\ScarletMonastery4",},
    [12175] = { 0, 0,			"TolGarodJail\\TolGarodJail",},
	[12075] = { 0, 0,			"Scholomance\\Scholomance1_",
					0, -100, 	"Scholomance\\Scholomance2_",
					0, -200,	"Scholomance\\Scholomance3_",
					0, -300, 	"Scholomance\\Scholomance4_", },
	[12077] = { 0, 0,			"ShadowfangKeep\\ShadowfangKeep1_",
					0, -100,		"ShadowfangKeep\\ShadowfangKeep2_",
					0, -200,		"ShadowfangKeep\\ShadowfangKeep3_",
					0, -300,		"ShadowfangKeep\\ShadowfangKeep4_",
					0, -400,		"ShadowfangKeep\\ShadowfangKeep5_",
					0, -500,		"ShadowfangKeep\\ShadowfangKeep6_",
					0, -600,		"ShadowfangKeep\\ShadowfangKeep7_", },
	[12086] = { 0, 0,			"Stratholme\\Stratholme1_",
                0, -100,		"Stratholme\\Stratholme2_",  },
	[12192] = { 0, 0,			"TheBastionofTwilight\\TheBastionofTwilight1_",
					0, -100,		"TheBastionofTwilight\\TheBastionofTwilight2_",
					0, -200,		"TheBastionofTwilight\\TheBastionofTwilight3_", },
	[12098] = { 0, 0,			"TheDeadmines\\TheDeadmines1_",
					0, -100,		"TheDeadmines\\TheDeadmines2_", },
	[12101] = { 0, 0,			"TheStockade\\TheStockade", },
	[15195] = { 0, 0,			"TheStoneCore\\TheStoneCore1_", },
	[12087] = { 0, 0,			"TheTempleOfAtalHakkar\\TheTempleOfAtalHakkar1_", },
	[11198] = { 0, 0,			"Throneofthefourwinds\\Throneofthefourwinds1_", },
	[11196] = { 0, 0,			"SkywallDungeon\\SkywallDungeon1_", },
	[12194] = { 0, 0,			"ThroneOfTides\\ThroneOfTides1_",
					0, -100,		"ThroneOfTides\\ThroneOfTides2_", },
	[12106] = { 0, 0,			"Uldaman\\Uldaman1_", },
	[11109] = { 0, 0,			"WailingCaverns\\WailingCaverns1_", },
	[12118] = { 0, 0,			"ZulAman\\ZulAman", },
	[11116] = { 0, 0,			"ZulFarrak\\ZulFarrak", },
    
	-- WotLK
	[14065] = { 0, 0,			"Naxxramas\\Naxxramas1_",
					0, -100,		"Naxxramas\\Naxxramas2_",
					0, -200,		"Naxxramas\\Naxxramas3_",
					0, -300,		"Naxxramas\\Naxxramas4_",
					0, -400,		"Naxxramas\\Naxxramas5_",
					0, -500,		"Naxxramas\\Naxxramas6_", },
	[14133] = { 0, 0,			"AhnKahet\\Ahnkahet1_",
					0, -100,		"AhnKahet\\Ahnkahet2_", },
	[14134] = { 0, 0,			"AzjolNerub\\AzjolNerub1_",
					0, -100,		"AzjolNerub\\AzjolNerub2_",
					0, -200,		"AzjolNerub\\AzjolNerub3_", },
	[14135] = { 0, 0,			"DrakTharonKeep\\DrakTharonKeep1_",
					0, -100,		"DrakTharonKeep\\DrakTharonKeep2_", },
	[14158] = { 0, 0,			"GunDrak\\GunDrak1_", },
	[14137] = { 0, 0,			"TheNexus\\TheNexus1_", },
	[14138] = { 0, 0,			"TheOculus\\TheOculus1_",
					0, -100,		"TheOculus\\TheOculus2_",
					0, -200,		"TheOculus\\TheOculus3_",
					0, -300,		"TheOculus\\TheOculus4_", },
	[14139] = { 0, 0,			"VioletHold\\VioletHold1_", },
	[14140] = { 0, 0,			"HallsofLightning\\HallsofLightning1_",
					0, -100,		"HallsofLightning\\HallsofLightning2_", },
	[14141] = { 0, 0,			"HallsofStone\\HallsofStone1_", },
	[14142] = { 0, 0,			"UtgardeKeep\\UtgardeKeep1_",
					0, -100,		"UtgardeKeep\\UtgardeKeep2_",
					0, -200,		"UtgardeKeep\\UtgardeKeep3_", },
	[14144] = { 0, 0,			"TheObsidianSanctum\\TheObsidianSanctum", },
	[14145] = { 0, 0,			"UtgardePinnacle\\UtgardePinnacle1_",
					0, -100,		"UtgardePinnacle\\UtgardePinnacle2_", },
	[11147] = { 0, 0,			"CoTStratholme\\CoTStratholme1_",
					0, -100,		"CoTStratholme\\CoTStratholme", },
	[14149] = { 0, 0,			"Ulduar\\Ulduar",
					0, -100,		"Ulduar\\Ulduar1_",
					0, -200,		"Ulduar\\Ulduar2_",
					0, -300,		"Ulduar\\Ulduar3_",
					0, -400,		"Ulduar\\Ulduar4_", },
	[14151] = { 0, 0,			"TheArgentColiseum\\TheArgentColiseum1_",
                0, -100,		"TheArgentColiseum\\TheArgentColiseum2_",  },
	[14152] = { 0, 0,			"TheArgentColiseum\\TheArgentColiseum1_",
                0, -100,		"TheArgentColiseum\\TheArgentColiseum2_", },
	[14153] = { 0, 0,			"TheForgeofSouls\\TheForgeofSouls1_", },
	[14154] = { 0, 0,			"IcecrownCitadel\\IcecrownCitadel1_",
					0, -100,		"IcecrownCitadel\\IcecrownCitadel2_",
					0, -200,		"IcecrownCitadel\\IcecrownCitadel3_",
					0, -300,		"IcecrownCitadel\\IcecrownCitadel4_",
					0, -400,		"IcecrownCitadel\\IcecrownCitadel5_",
					0, -500,		"IcecrownCitadel\\IcecrownCitadel6_",
					0, -600,		"IcecrownCitadel\\IcecrownCitadel7_",
					0, -700,		"IcecrownCitadel\\IcecrownCitadel8_", },
	[11067] = { 0, 0,			"onyxiasLair\\onyxiasLair", },
	[14155] = { 0, 0,			"PitofSaron\\PitofSaron", },
	[14156] = { 0, 0,			"HallsofReflection\\HallsofReflection1_", },
	[14159] = { 0, 0,			"VaultofArchavon\\VaultofArchavon1_", },
    [14160] = { 0, 0,			"TheRubySanctum\\TheRubySanctum", },
    [14174] = { 0, 0,			"BronzeSanctuary\\BronzeSanctuary", },
	[16226] = { 0, 0,			"TheGreatWall\\theGreatWall1_",
					0, -100,	"TheGreatWall\\TheGreatWall2_", },
	[16227] = { 0, 0,			"MogushanPalace\\MogushanPalace1_",
					0, -100,	"MogushanPalace\\MogushanPalace2_",
					0, -200,	"MogushanPalace\\MogushanPalace3_", },
	[16228] = { 0, 0,			"ShadowpanHideout\\ShadowpanHideout",
					0, -100,	"ShadowpanHideout\\ShadowpanHideout1_",
					0, -200,	"ShadowpanHideout\\ShadowpanHideout2_",
					0, -300,	"ShadowpanHideout\\ShadowpanHideout3_", },
	[16229] = { 0, 0,			"Siegeofniuzaotemple\\SiegeofNiuzaoTemple",
					0, -100,	"SiegeofNiuzaoTemple\\SiegeofNiuzaoTemple1_",
					0, -200,	"SiegeofNiuzaoTemple\\SiegeofNiuzaoTemple2_", },
	[16230] = { 0, 0,			"StormstoutBrewery\\StormstoutBrewery1_",
					0, -100,	"StormstoutBrewery\\StormstoutBrewery2_",
					0, -200,	"StormstoutBrewery\\StormstoutBrewery3_",
					0, -300,	"StormstoutBrewery\\StormstoutBrewery4_", },
	[16231] = { 0, 0,			"EastTemple\\EastTemple1_",
					0, -100,	"EastTemple\\EastTemple2_", },
	[16232] = { 0, 0,			"Heartoffear\\Heartoffear1_",
					0, -100,	"Heartoffear\\Heartoffear2_", },
	[16233] = { 0, 0,			"Mogushanvaults\\Mogushanvaults1_",
					0, -100,	"Mogushanvaults\\Mogushanvaults2_",
					0, -200,	"Mogushanvaults\\Mogushanvaults3_", },
	[16234] = { 0, 0,			"TerraceOfEndlessSpring\\TerraceOfEndlessSpring", },
    [13006] = { 0 ,0,			"AuchenaiCrypts\\AuchenaiCrypts1_",
					0, -100,	"AuchenaiCrypts\\AuchenaiCrypts2_", },
	[13007] = { 0, 0,			"ManaTombs\\ManaTombs1_", },
	[13008] = { 0, 0,			"SethekkHalls\\SethekkHalls1_",
					0, -100,	"SethekkHalls\\SethekkHalls2_", },
	[13009] = { 0, 0,			"ShadowLabyrinth\\ShadowLabrinth1_", },
	[13013] = { 0, 0,			"BlackTemple\\BlackTemple",
					0, -100,	"BlackTemple\\BlackTemple1_",
					0, -200,	"BlackTemple\\BlackTemple2_",
					0, -300,	"BlackTemple\\BlackTemple3_",
					0, -400,	"BlackTemple\\BlackTemple4_",
					0, -500,	"BlackTemple\\BlackTemple5_",
					0, -600,	"BlackTemple\\BlackTemple6_",
					0, -700,	"BlackTemple\\BlackTemple7_", },
	[13027] = { 0, 0,			"CoilfangReservoir\\CoilfangReservoir1_", },
	[13028] = { 0, 0,			"TheSlavePens\\TheSlavePens1_", },
	[13029] = { 0, 0,			"TheSteamVault\\TheSteamVault1_",
					0, -100,	"TheSteamVault\\TheSteamVault2_", },
	[13030] = { 0, 0,			"TheUnderBog\\TheUnderBog1_", },
	[13049] = { 0, 0,			"GruulsLair\\GruulsLair1_", },
	[13051] = { 0, 0,			"HellfireRamparts1_", },
	[13052] = { 0, 0,			"Magtheridonslair\\Magtheridonslair1_", },
	[13053] = { 0, 0,			"TheBloodFurnace\\TheBloodFurnace1_", },
	[13054] = { 0, 0,			"TheShatteredHalls\\TheShatteredHalls1_", },
	[13091] = { 0, 0,			"TheArcatraz\\TheArcatraz1_",
					0, -100,	"TheArcatraz\\TheArcatraz2_",
					0, -200,	"TheArcatraz\\TheArcatraz3_", },
	[13092] = { 0, 0,			"TheBotanica1_", },
	[13093] = { 0, 0,			"TempestKeep\\TempestKeep1_", },
	[13094] = { 0, 0,			"TheMechanar\\TheMechanar1_",
					0, -100,	"TheMechanar\\TheMechanar2_", },
	[11024] = { 0, 0,			"CoTHillsbradFoothills\\CoTHillsbradFoothills", },
	[11025] = { 0, 0,			"CoTTheBlackMorass\\CoTTheBlackMorass", },
	[11023] = { 0, 0,			"CoTMountHyjal\\CoTMountHyjal", },
	[12058] = { 0, 0,		"Karazhan\\Karazhan1_",
				0, -100,	"Karazhan\\Karazhan2_",
				0, -200,	"Karazhan\\Karazhan3_",
				0, -300,	"Karazhan\\Karazhan4_",
				0, -400,	"Karazhan\\Karazhan5_",
				0, -500,	"Karazhan\\Karazhan6_",
				0, -600,	"Karazhan\\Karazhan7_",
				0, -700,	"Karazhan\\Karazhan8_",
				0, -800,	"Karazhan\\Karazhan9_",
				0, -900,	"Karazhan\\Karazhan10_",
				0, -1000,	"Karazhan\\Karazhan11_",
				0, -1100,	"Karazhan\\Karazhan12_",
				0, -1200,	"Karazhan\\Karazhan13_",
				0, -1300,	"Karazhan\\Karazhan14_",
				0, -1400,	"Karazhan\\Karazhan15_",
				0, -1500,	"Karazhan\\Karazhan16_",
				0, -1600,	"Karazhan\\Karazhan17_",
                0, 0,       "Karazhan\\Karazhan18_",
                0, -100,	"Karazhan\\Karazhan19_",
				0, -200,	"Karazhan\\Karazhan20_",
				0, -300,	"Karazhan\\Karazhan21_",
				0, -400,	"Karazhan\\Karazhan22_",
				0, -500,	"Karazhan\\Karazhan23_",
				0, -600,	"Karazhan\\Karazhan24_",
				0, -700,	"Karazhan\\Karazhan25_",
				0, -800,	"Karazhan\\Karazhan26_",
				0, -900,	"Karazhan\\Karazhan27_",
				0, -1000,	"Karazhan\\Karazhan28_",
				0, -1100,	"Karazhan\\Karazhan29_",
				0, -1200,	"Karazhan\\Karazhan30_",
				0, -1300,	"Karazhan\\Karazhan31_",
				0, -1400,	"Karazhan\\Karazhan32_",
				0, -1500,	"Karazhan\\Karazhan33_",
				0, -1600,	"Karazhan\\Karazhan34_",},
	[12120] = { 0, 0,			"MagistersTerrace\\MagistersTerrace1_",
					0, -100,	"MagistersTerrace\\MagistersTerrace2_", },
	[12121] = { 0, 0,			"SunwellPlateau\\SunwellPlateau",
					0, -100,	"SunwellPlateau\\SunwellPlateau1_", },
	[11236] = { 0, 0,			"DustwallowMarshScenario\\DustwallowMarshScenario", },
	[11237] = { 0, 0,			"DustwallowMarshScenarioAlliance\\DustwallowMarshScenarioAlliance", },
	[16239] = { 0, 0,			"BrewmasterScenario01\\BrewmasterScenario01", },
	[16240] = { 0, 0,			"AncientMoguCrypt\\AncientMoguCrypt1_",
					0, -100,	"AncientMoguCrypt\\AncientMoguCrypt2_", },
	[16241] = { 0, 0,			"TheJadeForestScenario\\TheJadeForestScenario", },
	[16242] = { 0, 0,			"BrewmasterScenario03\\BrewmasterScenario03", },
	[16243] = { 0, 0,			"KunLaiPassScenario\\KunLaiPassScenario", },
	[16244]	= { 0, 0,			"ProvingGrounds\\ProvingGrounds1_",},
}	

Map.ZoneOverlays = {
    ["hilsbrad"] = {
        ["tarrenmill"] = "509,0,220,310",
        ["southpointtower"] = "2,192,288,225",
        ["easternstrand"] = "524,339,230,320",
        ["azureloadmine"] = "175,275,165,200",
        ["purgationisle"] = "109,482,125,100",
        ["southshore"] = "418,201,235,270",
        ["hillsbradfields"] = "198,155,305,275",
        ["dungarok"] = "637,294,240,275",
        ["durnholdekeep"] = "605,75,384,365",
        ["westernstrand"] = "208,368,285,155",
        ["darrowhill"] = "414,154,205,155",
        ["nethanderstead"] = "541,236,215,240"
    },
    ["duskwood"] = {
        ["theyorgenfarmstead"] = "390,382,235,250",
        ["addlesstead"] = "55,342,275,250",
        ["tranquilgardenscemetary"] = "690,353,220,220",
        ["darkshire"] = "631,162,315,280",
        ["brightwoodgrove"] = "504,117,220,340",
        ["vulgologremound"] = "243,348,255,285",
        ["thehushedbank"] = "19,132,160,330",
        ["thedarkenedbank"] = "89,31,910,210",
        ["manormistmantle"] = "653,120,200,175",
        ["twilightgrove"] = "298,79,360,420",
        ["therottingorchard"] = "539,369,250,230",
        ["ravenhill"] = "102,302,195,145",
        ["ravenhillcemetary"] = "85,149,350,300"
    },
    ["hinterlands"] = {
        ["queldanillodge"] = "237,185,185,195",
        ["thealtarofzul"] = "373,365,200,165",
        ["shaolwatha"] = "571,239,280,205",
        ["thecreepingruin"] = "408,260,180,170",
        ["agolwatha"] = "374,164,205,195",
        ["plaguemistravine"] = "158,149,145,220",
        ["shadraalor"] = "240,387,195,185",
        ["aeriepeak"] = "13,245,255,205",
        ["valorwindlake"] = "319,302,170,170",
        ["jinthaalor"] = "505,333,235,285",
        ["skulkrock"] = "512,232,160,145",
        ["seradane"] = "509,19,275,275",
        ["hiriwatha"] = "171,306,225,200",
        ["theoverlookcliffs"] = "693,303,170,310"
    },
    ["blastedlands"] = {
        ["serpentscoil"] = "501,140,225,170",
        ["nethergardekeep"] = "559,30,185,190",
        ["dreadmaulpost"] = "361,195,245,195",
        ["altarofstorms"] = "310,133,185,155",
        ["riseofthedefiler"] = "405,123,170,145",
        ["darkportal"] = "453,259,265,220",
        ["dreadmaulhold"] = "361,15,195,180",
        ["garrisonarmory"] = "472,9,170,200",
        ["thetaintedscar"] = "212,178,384,450"
    },
    ["westfall"] = {
        ["thedaggerhills"] = "339,418,256,175",
        ["jangolodemine"] = "307,29,215,215",
        ["furlbrowspumpkinfarm"] = "387,11,210,215",
        ["goldcoastquarry"] = "220,102,225,256",
        ["themolsenfarm"] = "328,148,225,205",
        ["westfalllighthouse"] = "205,467,280,190",
        ["demontsplace"] = "208,375,200,185",
        ["alexstonfarmstead"] = "204,260,305,210",
        ["thedeadacre"] = "524,252,200,240",
        ["sentinelhill"] = "442,241,195,240",
        ["moonbrook"] = "317,331,220,200",
        ["thedustplains"] = "523,377,288,235",
        ["saldeansfarm"] = "459,105,225,210",
        ["thejansenstead"] = "488,0,165,200"
    },
    ["easternplaguelands"] = {
        ["zulmashar"] = "584,8,256,256",
        ["thefungalvale"] = "241,239,256,256",
        ["theundercroft"] = "142,455,256,191",
        ["pestilentscar"] = "590,269,256,288",
        ["lightshopechapel"] = "656,277,256,256",
        ["corinscrossing"] = "471,345,256,256",
        ["eastwalltower"] = "562,219,256,256",
        ["northpasstower"] = "427,87,256,256",
        ["scarletenclave"] = "718,218,284,450",
        ["thondrorilriver"] = "0,209,256,384",
        ["themarrisstead"] = "126,338,256,256",
        ["crownguardtower"] = "261,379,256,256",
        ["darrowshire"] = "279,467,256,179",
        ["blackwoodlake"] = "412,177,256,256",
        ["stratholme"] = "164,0,256,243",
        ["quellithienlodge"] = "392,14,256,256",
        ["plaguewood"] = "139,61,384,288",
        ["tyrshand"] = "687,449,256,197",
        ["thenoxiousglade"] = "692,144,256,256",
        ["theinfectisscar"] = "379,323,256,256",
        ["northdale"] = "590,106,256,256",
        ["lakemereldar"] = "474,412,256,205",
        ["terrordale"] = "49,76,256,256"
    },
    ["badlands"] = {
        ["agmondsend"] = "345,389,265,270",
        ["kargath"] = "0,148,256,256",
        ["apocryphansrest"] = "17,310,256,256",
        ["dustwindgulch"] = "498,209,245,205",
        ["campcagg"] = "12,428,256,256",
        ["campkosh"] = "551,48,220,220",
        ["lethlorravine"] = "611,110,370,455",
        ["mirageflats"] = "148,384,256,256",
        ["themakersterrace"] = "389,7,245,205",
        ["hammertoesdigsite"] = "445,120,200,195",
        ["thedustbowl"] = "159,199,270,275",
        ["angorfortress"] = "325,148,195,200",
        ["valleyoffangs"] = "349,256,230,230",
        ["campboff"] = "501,341,255,280"
    },
    ["silverpine"] = {
        ["shadowfangkeep"] = "364,359,220,160",
        ["maldensorchard"] = "465,0,256,160",
        ["thedeadfield"] = "402,65,175,165",
        ["deepelemmine"] = "470,261,160,170",
        ["pyrewoodvillage"] = "391,446,140,125",
        ["berensperil"] = "491,417,240,180",
        ["theshiningstrand"] = "459,13,256,220",
        ["thedecrepitferry"] = "457,144,180,185",
        ["ambermill"] = "494,262,240,240",
        ["olsensfarthing"] = "382,252,165,185",
        ["thesepulcher"] = "352,168,210,160",
        ["thegreymanewall"] = "379,447,210,215",
        ["fenrisisle"] = "593,74,250,215",
        ["northtideshollow"] = "323,128,180,128",
        ["theskitteringdark"] = "286,37,185,165"
    },
    ["wetlands"] = {
        ["sundownmarsh"] = "92,82,300,240",
        ["blackchannelmarsh"] = "77,245,240,175",
        ["mosshidefen"] = "527,264,205,245",
        ["saltsprayglen"] = "237,41,200,240",
        ["direforgehill"] = "507,115,256,250",
        ["raptorridge"] = "628,176,190,160",
        ["grimbatol"] = "611,230,350,360",
        ["bluegillmarsh"] = "89,142,225,190",
        ["thegreenbelt"] = "456,125,185,240",
        ["thelganrock"] = "470,371,230,190",
        ["angerfangencampment"] = "347,218,225,185",
        ["whelgarsexcavationsite"] = "247,205,195,185",
        ["dunmodr"] = "401,21,205,180",
        ["ironbeardstomb"] = "349,115,200,185",
        ["menethilharbor"] = "13,314,175,128"
    },
    ["deadwindpass"] = {
        ["deadmanscrossing"] = "249,76,380,365",
        ["thevice"] = "426,299,270,270",
        ["karazhan"] = "269,337,300,245"
    },
    ["searinggorge"] = {
        ["grimsiltdigsite"] = "494,300,305,220",
        ["tannercamp"] = "545,407,305,230",
        ["dustfirevalley"] = "422,8,460,365",
        ["blackcharcave"] = "77,366,275,235",
        ["theseaofcinders"] = "247,388,360,280",
        ["thecauldron"] = "250,170,425,325",
        ["firewatchridge"] = "85,30,405,430"
    },
    ["elwynn"] = {
        ["fargodeepmine"] = "238,428,256,240",
        ["northshirevalley"] = "381,147,256,256",
        ["goldshire"] = "250,270,240,220",
        ["stonecairnlake"] = "587,190,310,256",
        ["crystallake"] = "422,332,225,220",
        ["stormwind"] = "0,0,485,405",
        ["ridgepointtower"] = "696,435,306,233",
        ["towerofazora"] = "551,292,255,250",
        ["eastvaleloggingcamp"] = "704,330,256,210",
        ["brackwellpumpkinpatch"] = "577,419,256,249",
        ["forestsedge"] = "124,327,256,341",
        ["jerodslanding"] = "425,431,256,237"
    },
    ["arathi"] = {
        ["refugepoint"] = "370,186,175,225",
        ["hammerfall"] = "655,120,205,250",
        ["northfoldmanor"] = "192,90,230,240",
        ["circleofeastbinding"] = "558,112,160,230",
        ["bouldergor"] = "232,145,245,245",
        ["goshekfarm"] = "531,276,230,195",
        ["boulderfisthall"] = "432,362,215,235",
        ["thoradinswall"] = "87,138,190,240",
        ["thandolspan"] = "355,412,200,220",
        ["witherbarkvillage"] = "559,333,215,210",
        ["faldirscove"] = "171,424,256,215",
        ["circleofouterbinding"] = "419,293,170,155",
        ["stromgardekeep"] = "108,287,240,230",
        ["dabyriesfarmstead"] = "472,165,180,210",
        ["circleofinnerbinding"] = "286,310,210,185",
        ["circleofwestbinding"] = "138,54,190,210"
    },
    ["dunmorogh"] = {
        ["chillbreezevalley"] = "274,296,180,128",
        ["gnomeragon"] = "166,184,180,165",
        ["southerngateoutpost"] = "792,279,128,120",
        ["amberstillranch"] = "573,280,128,128",
        ["mistypinerefuge"] = "502,221,128,165",
        ["frostmanehold"] = "217,287,125,125",
        ["ironforge"] = "397,163,315,200",
        ["thegrizzledden"] = "314,311,200,185",
        ["coldridgepass"] = "295,385,150,128",
        ["brewnallvillage"] = "252,249,115,115",
        ["shimmerridge"] = "347,163,128,190",
        ["golbolarquarry"] = "608,291,165,165",
        ["iceflowlake"] = "281,167,128,180",
        ["anvilmar"] = "155,403,240,185",
        ["northerngateoutpost"] = "759,173,128,165",
        ["helmsbedlake"] = "694,273,155,170",
        ["thetundridhills"] = "522,322,155,128",
        ["kharanos"] = "386,294,200,200"
    },
    ["burningsteppes"] = {
        ["blackrockpass"] = "589,279,270,310",
        ["blackrockstronghold"] = "334,114,245,265",
        ["pillarofash"] = "377,285,320,270",
        ["altarofstorms"] = "36,109,225,220",
        ["ruinsofthaurissan"] = "513,99,270,285",
        ["blackrockmountain"] = "173,101,256,280",
        ["terrorwingpath"] = "722,46,280,355",
        ["dreadmaulrock"] = "707,168,220,225",
        ["morgansvigil"] = "708,311,294,270",
        ["dracodar"] = "56,258,415,315"
    },
    ["westernplaguelands"] = {
        ["thebulwark"] = "137,293,225,185",
        ["hearthglen"] = "307,16,340,288",
        ["caerdarrow"] = "600,412,170,165",
        ["sorrowhill"] = "355,462,300,206",
        ["felstonefield"] = "300,311,160,125",
        ["darrowmerelake"] = "504,343,370,270",
        ["northridgelumbercamp"] = "382,164,220,180",
        ["thewrithinghaunt"] = "451,323,170,190",
        ["thondrorilriver"] = "590,86,205,340",
        ["ruinsofandorhol"] = "260,355,285,230",
        ["dalsonstears"] = "381,265,220,150",
        ["theweepingcave"] = "566,198,160,200",
        ["gahrronswithering"] = "520,250,180,205"
    },
    ["tirisfal"] = {
        ["balnirfarmstead"] = "630,326,216,179",
        ["crusaderoutpost"] = "694,289,173,128",
        ["nightmarevale"] = "363,349,243,199",
        ["brill"] = "537,299,128,256",
        ["sollidenfarmstead"] = "239,250,256,156",
        ["scarletwatchpost"] = "689,104,175,247",
        ["agamandmills"] = "335,139,256,210",
        ["brightwaterlake"] = "587,139,201,288",
        ["ruinsoflordaeron"] = "463,361,315,235",
        ["bulwark"] = "698,362,230,205",
        ["stillwaterpond"] = "395,277,186,128",
        ["coldhearthmanor"] = "474,327,150,128",
        ["deathknell"] = "227,328,245,205",
        ["monastary"] = "746,125,211,189",
        ["venomwebvale"] = "757,205,237,214",
        ["garrenshaunt"] = "497,145,174,220"
    },
    ["redridge"] = {
        ["rendersvalley"] = "484,361,465,255",
        ["lakeridgehighway"] = "187,333,430,290",
        ["renderscamp"] = "277,0,275,256",
        ["lakeeverstill"] = "133,240,535,275",
        ["lakeshire"] = "83,197,340,195",
        ["althersmill"] = "399,129,235,270",
        ["stonewatchfalls"] = "595,320,320,210",
        ["stonewatch"] = "500,215,255,300",
        ["galardellvalley"] = "654,161,250,250",
        ["threecorners"] = "0,284,365,350",
        ["redridgecanyons"] = "121,72,365,245"
    },
    ["swampofsorrows"] = {
        ["splinterspearjunction"] = "129,236,275,240",
        ["stagalbog"] = "552,378,345,250",
        ["stonard"] = "279,237,360,315",
        ["theshiftingmire"] = "286,110,315,235",
        ["sorrowmurk"] = "724,120,215,365",
        ["ithariusscave"] = "0,262,240,245",
        ["pooloftears"] = "565,218,300,275",
        ["fallowsanctuary"] = "492,0,365,305",
        ["mistyvalley"] = "0,140,245,305",
        ["theharborage"] = "171,145,235,205",
        ["mistyreedstrand"] = "746,0,256,668"
    },
    ["lochmodan"] = {
        ["thefarstriderlodge"] = "546,199,370,295",
        ["stonewroughtdam"] = "339,11,290,175",
        ["silverstreammine"] = "229,11,235,270",
        ["northgatepass"] = "125,12,230,300",
        ["ironbandsexcavationsite"] = "482,321,345,256",
        ["stonesplintervalley"] = "215,348,255,285",
        ["thelsamar"] = "217,203,256,230",
        ["grizzlepawridge"] = "309,310,295,358",
        ["valleyofkings"] = "109,370,195,250",
        ["mogroshstronghold"] = "542,48,315,235",
        ["theloch"] = "352,87,320,410"
    },
    ["stranglethorn"] = {
        ["bootybay"] = "203,433,145,128",
        ["ruinsofjubuwal"] = "306,301,110,110",
        ["balalruins"] = "241,92,90,80",
        ["mizjahruins"] = "311,131,105,110",
        ["wildshore"] = "229,422,165,190",
        ["moshoggogremound"] = "432,94,128,175",
        ["ruinsofaboraz"] = "350,335,95,95",
        ["thearena"] = "235,189,200,185",
        ["lakenazferiti"] = "331,59,128,125",
        ["kurzenscompound"] = "388,0,155,150",
        ["rebelcamp"] = "284,0,170,90",
        ["thevilereef"] = "152,90,190,175",
        ["ziatajairuins"] = "364,231,128,125",
        ["ruinsofzulkunda"] = "196,3,125,140",
        ["zuuldaiaruins"] = "156,42,115,115",
        ["bloodsailcompound"] = "194,284,165,175",
        ["crystalveinmine"] = "345,276,120,120",
        ["nesingwarysexpedition"] = "269,26,140,110",
        ["kalairuins"] = "299,88,95,95",
        ["nekmaniwellspring"] = "211,359,90,115",
        ["zulgurub"] = "483,8,245,220",
        ["baliamahruins"] = "371,129,110,140",
        ["ruinsofzulmamwe"] = "394,212,170,125",
        ["venturecobasecamp"] = "387,64,105,125",
        ["mistvalevalley"] = "280,368,125,125",
        ["gromgolbasecamp"] = "260,132,110,105",
        ["jagueroisle"] = "314,493,125,120"
    },
    ["alterac"] = {
        ["gallowscorner"] = "406,279,200,200",
        ["gavinsnaze"] = "225,478,160,175",
        ["lordamereinternmentcamp"] = "44,403,330,265",
        ["mistyshore"] = "196,131,220,280",
        ["dandredsfold"] = "276,0,285,230",
        ["soferasnaze"] = "462,307,255,320",
        ["crushridgehold"] = "334,162,280,240",
        ["corrahnsdagger"] = "399,380,195,288",
        ["theheadland"] = "314,471,165,197",
        ["strahnbrad"] = "549,105,370,300",
        ["ruinsofalterac"] = "270,197,255,255",
        ["growlesscave"] = "317,372,190,170",
        ["chillwindpoint"] = "626,253,350,370",
        ["theuplands"] = "462,77,235,200",
        ["dalaran"] = "26,262,300,300"
    },
    ["ashenvale"] = {
        ["astranaar"] = "272,251,205,185",
        ["boughshadow"] = "856,151,146,200",
        ["fallenskylake"] = "547,426,235,205",
        ["felfirehill"] = "713,344,245,255",
        ["firescarshrine"] = "189,324,165,175",
        ["irislake"] = "392,218,200,205",
        ["lakefalathim"] = "131,137,128,195",
        ["maestraspost"] = "205,38,215,305",
        ["mystrallake"] = "356,347,275,240",
        ["nightrun"] = "597,258,225,255",
        ["raynewoodretreat"] = "520,238,180,245",
        ["satyrnaar"] = "694,225,285,185",
        ["thehowlingvale"] = "463,141,210,185",
        ["theruinsofstardust"] = "260,373,155,150",
        ["theshrineofaessina"] = "104,259,220,195",
        ["thezoramstrand"] = "19,28,245,245",
        ["thistlefurvillage"] = "203,158,255,195",
        ["warsonglumbercamp"] = "796,311,200,160"
    },
    ["aszhara"] = {
        ["bayofstorms"] = "479,201,270,300",
        ["bitterreaches"] = "644,40,245,185",
        ["forlornridge"] = "191,369,220,255",
        ["haldarrencampment"] = "77,331,200,150",
        ["jaggedreef"] = "366,0,570,170",
        ["lakemennar"] = "296,429,315,200",
        ["legashencampment"] = "478,44,235,140",
        ["ravencrestmonument"] = "552,499,240,125",
        ["ruinsofeldarath"] = "238,221,265,280",
        ["shadowsongshrine"] = "35,422,225,180",
        ["southridgebeach"] = "389,353,370,220",
        ["templeofarkkoran"] = "681,153,190,200",
        ["thalassianbasecamp"] = "499,119,240,155",
        ["theruinedreaches"] = "396,540,395,128",
        ["theshatteredstrand"] = "404,194,160,210",
        ["timbermawhold"] = "250,106,235,270",
        ["towerofeldara"] = "818,107,120,155",
        ["ursolan"] = "422,95,145,215",
        ["valormok"] = "84,229,215,175"
    },
    ["azuremystisle"] = {
        ["ammenford"] = "515,279,256,256",
        ["ammenvale"] = "527,104,475,512",
        ["azurewatch"] = "383,249,256,256",
        ["bristlelimbvillage"] = "174,363,256,256",
        ["emberglade"] = "488,24,256,256",
        ["fairbridgestrand"] = "356,0,256,128",
        ["greezlescamp"] = "507,350,256,256",
        ["moongrazewoods"] = "449,183,256,256",
        ["odesyuslanding"] = "352,378,256,256",
        ["podcluster"] = "281,305,256,256",
        ["podwreckage"] = "462,349,128,256",
        ["siltingshore"] = "291,3,256,256",
        ["silvermystisle"] = "23,446,256,222",
        ["stillpinehold"] = "365,49,256,256",
        ["theexodar"] = "74,85,512,512",
        ["valaarsberth"] = "176,303,256,256",
        ["wrathscalepoint"] = "220,421,256,247"
    },
    ["barrens"] = {
        ["agamagor"] = "340,234,200,185",
        ["baelmodan"] = "431,479,128,128",
        ["blackthornridge"] = "335,462,155,128",
        ["boulderlodemine"] = "555,0,120,110",
        ["bramblescar"] = "442,298,125,165",
        ["camptaurajo"] = "365,350,145,125",
        ["dreadmistpeak"] = "419,63,128,105",
        ["farwatchpost"] = "564,52,100,165",
        ["fieldofgiants"] = "355,402,210,150",
        ["groldomfarm"] = "492,63,125,115",
        ["honorsstand"] = "306,130,128,128",
        ["lushwateroasis"] = "365,177,175,185",
        ["northwatchfold"] = "527,307,150,120",
        ["raptorgrounds"] = "507,294,115,110",
        ["ratchet"] = "556,189,125,125",
        ["razorfendowns"] = "407,553,155,115",
        ["razorfenkraul"] = "341,537,128,128",
        ["thecrossroads"] = "431,118,155,155",
        ["thedryhills"] = "317,29,200,145",
        ["theforgottenpools"] = "384,115,120,125",
        ["themerchantcoast"] = "581,247,95,100",
        ["themorshanrampart"] = "412,0,128,100",
        ["thesludgefen"] = "456,0,170,120",
        ["thestagnantoasis"] = "481,211,155,128",
        ["thornhill"] = "498,119,140,128"
    },
    ["bladesedgemountains"] = {
        ["bashirlanding"] = "422,0,256,256",
        ["bladedgulch"] = "623,147,256,256",
        ["bladesiprehold"] = "314,161,256,507",
        ["bloodmaulcamp"] = "412,95,256,256",
        ["bloodmauloutpost"] = "342,371,256,297",
        ["brokenwilds"] = "733,109,256,256",
        ["circleofwrath"] = "439,210,256,256",
        ["deathsdoor"] = "512,249,256,419",
        ["forgecampanger"] = "586,147,416,256",
        ["forgecampterror"] = "144,416,512,252",
        ["forgecampwrath"] = "254,176,256,256",
        ["grishnath"] = "286,28,256,256",
        ["gruulslayer"] = "527,81,256,256",
        ["jaggedridge"] = "446,414,256,254",
        ["moknathalvillage"] = "658,297,256,256",
        ["ravenswood"] = "214,55,512,256",
        ["razorridge"] = "533,332,256,336",
        ["ridgeofmadness"] = "554,258,256,410",
        ["ruuanweald"] = "479,98,256,512",
        ["skald"] = "673,71,256,256",
        ["sylvanaar"] = "289,350,256,318",
        ["thecrystalpine"] = "585,0,256,256",
        ["thunderlordstronghold"] = "405,272,256,396",
        ["veillashh"] = "271,428,256,240",
        ["veilruuan"] = "563,151,256,128",
        ["vekhaarstand"] = "629,406,256,256",
        ["vortexpinnacle"] = "166,206,256,462"
    },
    ["bloodmystisle"] = {
        ["amberwebpass"] = "44,62,256,512",
        ["axxarien"] = "297,136,256,256",
        ["blacksiltshore"] = "177,426,512,242",
        ["bladewood"] = "367,209,256,256",
        ["bloodscaleisle"] = "763,256,239,256",
        ["bloodwatch"] = "437,258,256,256",
        ["bristlelimbenclave"] = "546,410,256,256",
        ["kesselscrossing"] = "517,527,485,141",
        ["middenvale"] = "414,406,256,256",
        ["mystwood"] = "309,483,256,185",
        ["nazzivian"] = "250,404,256,256",
        ["ragefeatherridge"] = "481,117,256,256",
        ["ruinsofloretharan"] = "556,216,256,256",
        ["talonstand"] = "657,78,256,256",
        ["telathionscamp"] = "180,216,128,128",
        ["thebloodcursedreef"] = "729,54,256,256",
        ["thebloodwash"] = "302,27,256,256",
        ["thecrimsonreach"] = "555,87,256,256",
        ["thecryocore"] = "293,285,256,256",
        ["thefoulpool"] = "221,136,256,256",
        ["thehiddenreef"] = "205,39,256,256",
        ["thelostfold"] = "503,470,256,198",
        ["thevectorcoil"] = "43,238,512,430",
        ["thewarppiston"] = "451,29,256,256",
        ["veridianpoint"] = "637,0,256,256",
        ["vindicatorsrest"] = "232,242,256,256",
        ["wrathscalelair"] = "598,338,256,256",
        ["wyrmscarisland"] = "613,82,256,256"
    },
    ["darkshore"] = {
        ["ametharan"] = "324,306,190,205",
        ["auberdine"] = "318,162,150,215",
        ["bashalaran"] = "365,181,180,195",
        ["cliffspringriver"] = "375,94,230,190",
        ["groveoftheancients"] = "305,412,200,170",
        ["remtravelsexcavation"] = "229,485,175,183",
        ["ruinsofmathystra"] = "510,0,195,215",
        ["themastersglaive"] = "329,510,175,158",
        ["towerofalthalaxx"] = "468,85,170,195"
    },
    ["desolace"] = {
        ["ethelrethor"] = "311,61,205,250",
        ["gelkisvillage"] = "293,426,195,242",
        ["kodograveyard"] = "387,244,275,250",
        ["kolkarvillage"] = "607,215,220,220",
        ["kormekshut"] = "555,181,170,160",
        ["magramvillage"] = "590,365,205,285",
        ["mannoroccoven"] = "399,380,285,280",
        ["nijelspoint"] = "554,0,200,250",
        ["ranazjarisle"] = "241,6,100,100",
        ["sargeron"] = "625,33,285,245",
        ["shadowbreakravine"] = "690,444,205,195",
        ["shadowpreyvillage"] = "167,389,230,230",
        ["tethrisaran"] = "431,0,205,145",
        ["thunderaxefortress"] = "447,102,190,220",
        ["valleyofspears"] = "212,215,245,285"
    },
    ["durotar"] = {
        ["drygulchravine"] = "427,78,210,160",
        ["echoisles"] = "549,427,200,240",
        ["kolkarcrag"] = "413,476,160,120",
        ["orgrimmar"] = "244,0,445,160",
        ["razorhill"] = "432,170,220,230",
        ["razormanegrounds"] = "301,189,230,230",
        ["senjinvillage"] = "474,384,160,190",
        ["skullrock"] = "464,33,128,110",
        ["thunderridge"] = "327,60,190,200",
        ["tiragardekeep"] = "462,286,190,180",
        ["valleyoftrials"] = "355,320,215,215"
    },
    ["dustwallow"] = {
        ["alcazisland"] = "660,21,200,195",
        ["backbaywetlands"] = "239,189,400,255",
        ["brackenwallvillage"] = "230,0,280,270",
        ["thedenofflame"] = "257,313,255,250",
        ["theramoreisle"] = "534,224,230,205",
        ["thewyrmbog"] = "367,381,285,240",
        ["witchhill"] = "422,0,250,315"
    },
    ["eversongwoods"] = {
        ["azurebreezecoast"] = "669,228,256,256",
        ["duskwithergrounds"] = "605,253,256,256",
        ["eastsanctum"] = "460,373,256,256",
        ["elrendarfalls"] = "580,399,128,256",
        ["fairbreezevilliage"] = "386,386,256,256",
        ["farstriderretreat"] = "524,359,256,128",
        ["goldenboughpass"] = "243,469,256,128",
        ["lakeelrendar"] = "584,471,128,197",
        ["northsanctum"] = "361,298,256,256",
        ["ruinsofsilvermoon"] = "307,136,256,256",
        ["runestonefalithas"] = "378,496,256,172",
        ["runestoneshandor"] = "464,494,256,174",
        ["satherilshaven"] = "324,384,256,256",
        ["silvermooncity"] = "440,87,512,512",
        ["stillwhisperpond"] = "474,314,256,256",
        ["sunsailanchorage"] = "231,404,256,128",
        ["sunstriderisle"] = "195,5,512,512",
        ["thegoldenstrand"] = "183,415,128,253",
        ["thelivingwood"] = "511,420,128,248",
        ["thescortchedgrove"] = "255,507,256,128",
        ["thuronslivery"] = "539,305,256,128",
        ["torwatha"] = "648,315,256,353",
        ["tranquilshore"] = "215,298,256,256",
        ["westsanctum"] = "292,319,128,256",
        ["zebwatha"] = "554,475,128,193"
    },
    ["felwood"] = {
        ["bloodvenomfalls"] = "292,263,235,145",
        ["deadwoodvillage"] = "408,533,175,135",
        ["emeraldsanctuary"] = "405,429,185,160",
        ["felpawvillage"] = "483,0,240,145",
        ["irontreewoods"] = "420,54,215,215",
        ["jadefireglen"] = "332,465,165,155",
        ["jadefirerun"] = "330,29,195,170",
        ["jaedenar"] = "271,331,245,128",
        ["morlosaran"] = "496,509,145,159",
        ["ruinsofconstellas"] = "297,381,235,155",
        ["shatterscarvale"] = "307,123,235,200",
        ["talonbranchglade"] = "548,90,160,145"
    },
    ["feralas"] = {
        ["campmojache"] = "689,233,155,160",
        ["diremaul"] = "454,201,230,195",
        ["dreambough"] = "454,0,150,125",
        ["feralscarvale"] = "486,329,115,115",
        ["frayfeatherhighlands"] = "478,386,110,170",
        ["gordunnioutpost"] = "690,141,140,165",
        ["grimtotemcompound"] = "623,167,120,195",
        ["isleofdread"] = "192,375,215,293",
        ["lowerwilds"] = "751,198,225,180",
        ["oneiros"] = "493,70,110,110",
        ["ruinsofisildien"] = "540,320,190,250",
        ["ruinsofravenwind"] = "305,0,190,155",
        ["sardorisle"] = "208,234,180,180",
        ["theforgottencoast"] = "404,256,145,320",
        ["thetwincolossals"] = "319,75,285,245",
        ["thewrithingdeep"] = "618,298,240,220"
    },
    ["ghostlands"] = {
        ["amanipass"] = "598,232,404,436",
        ["bleedingziggurat"] = "184,238,256,256",
        ["dawnstarspire"] = "575,0,427,256",
        ["deatholme"] = "95,375,512,293",
        ["elrendarcrossing"] = "326,0,512,256",
        ["farstriderenclave"] = "573,136,429,256",
        ["goldenmistvillage"] = "44,0,512,512",
        ["howlingziggurat"] = "340,219,256,449",
        ["isleoftribulations"] = "585,0,256,256",
        ["sanctumofthemoon"] = "210,126,256,256",
        ["sanctumofthesun"] = "448,150,256,512",
        ["suncrownvillage"] = "460,0,512,256",
        ["thalassiapass"] = "364,406,256,262",
        ["tranquillien"] = "365,2,256,512",
        ["windrunnerspire"] = "40,287,256,256",
        ["windrunnervillage"] = "60,117,256,512",
        ["zebnowa"] = "466,237,512,431"
    },
    ["hellfire"] = {
        ["denofhaalesh"] = "182,412,256,256",
        ["expeditionarmory"] = "261,413,512,255",
        ["falconwatch"] = "183,326,512,342",
        ["fallenskyridge"] = "34,142,256,256",
        ["forgecamprage"] = "478,25,512,512",
        ["hellfirecitadel"] = "338,210,256,458",
        ["honorhold"] = "469,298,256,256",
        ["magharpost"] = "206,110,256,256",
        ["poolsofaggonar"] = "326,45,256,512",
        ["ruinsofshanaar"] = "25,290,256,378",
        ["templeoftelhamat"] = "38,152,512,512",
        ["thelegionfront"] = "579,128,256,512",
        ["thestairofdestiny"] = "737,156,256,512",
        ["thrallmar"] = "467,154,256,256",
        ["throneofkiljaeden"] = "477,6,512,256",
        ["voidridge"] = "705,368,256,256",
        ["warpfields"] = "308,408,256,260",
        ["zethgor"] = "580,430,422,238"
    },
    ["moonglade"] = {
		["lakeeluneara"] = "244,89,555,510"
	},
    ["mulgore"] = {
        ["baeldundigsite"] = "255,214,210,180",
        ["bloodhoofvillage"] = "367,303,256,200",
        ["palemanerock"] = "303,307,128,205",
        ["ravagedcaravan"] = "473,260,128,120",
        ["redcloudmesa"] = "270,425,470,243",
        ["redrocks"] = "502,16,205,230",
        ["thegoldenplains"] = "428,80,215,240",
        ["therollingplains"] = "523,356,256,190",
        ["theventurecomine"] = "532,238,225,235",
        ["thunderbluff"] = "249,59,280,240",
        ["thunderhornwaterwell"] = "379,242,128,155",
        ["wildmanewaterwell"] = "291,0,185,128",
        ["windfuryridge"] = "395,0,205,128",
        ["winterhoofwaterwell"] = "458,369,170,128"
    },
    ["nagrand"] = {
        ["burningbladeruins"] = "660,334,256,334",
        ["clanwatch"] = "532,363,256,256",
        ["forgecampfear"] = "36,248,512,420",
        ["forgecamphate"] = "162,154,256,256",
        ["garadar"] = "431,143,256,256",
        ["halaa"] = "335,193,256,256",
        ["kilsorrowfortress"] = "558,427,256,241",
        ["laughingskullruins"] = "351,52,256,256",
        ["oshugun"] = "168,334,512,334",
        ["ringoftrials"] = "533,267,256,256",
        ["southwindcleft"] = "391,258,256,256",
        ["sunspringpost"] = "219,199,256,256",
        ["telaar"] = "387,390,256,256",
        ["throneoftheelements"] = "504,53,256,256",
        ["twilightridge"] = "10,107,256,512",
        ["warmaulhill"] = "157,32,256,256",
        ["windyreedpass"] = "598,79,256,256",
        ["windyreedvillage"] = "666,233,256,256",
        ["zangarridge"] = "277,54,256,256"
    },
    ["netherstorm"] = {
        ["area52"] = "241,388,256,128",
        ["arklonruins"] = "328,397,256,256",
        ["celestialridge"] = "644,173,256,256",
        ["ecodomefarfield"] = "396,10,256,256",
        ["etheriumstaginggrounds"] = "481,208,256,256",
        ["forgebaseog"] = "237,22,256,256",
        ["kirinvarvillage"] = "490,523,256,145",
        ["manaforgebanar"] = "147,281,256,387",
        ["manaforgecoruu"] = "357,489,256,179",
        ["manaforgeduro"] = "465,336,256,256",
        ["manafrogeara"] = "171,155,256,256",
        ["netherstone"] = "411,20,256,256",
        ["netherstormbridge"] = "132,294,256,256",
        ["ruinedmanaforge"] = "513,138,256,256",
        ["ruinsofenkaat"] = "253,301,256,256",
        ["ruinsoffarahlon"] = "354,49,512,256",
        ["socretharsseat"] = "229,38,256,256",
        ["sunfuryhold"] = "454,451,256,217",
        ["tempestkeep"] = "593,284,409,384",
        ["theheap"] = "239,455,256,213",
        ["thescrapfield"] = "356,261,256,256",
        ["thestormspire"] = "298,134,256,256"
    },
    ["shadowmoonvalley"] = {
        ["altarofshatar"] = "520,93,256,256",
        ["coilskarpoint"] = "348,8,512,512",
        ["eclipsepoint"] = "343,310,512,358",
        ["illadarpoint"] = "143,256,256,256",
        ["legionhold"] = "104,155,512,512",
        ["netherwingcliffs"] = "554,308,256,256",
        ["netherwingledge"] = "510,445,492,223",
        ["shadowmoonvilliage"] = "116,35,512,512",
        ["theblacktemple"] = "606,126,396,512",
        ["thedeathforge"] = "290,129,256,512",
        ["thehandofguldan"] = "394,90,512,512",
        ["thewardenscage"] = "469,258,512,410",
        ["wildhammerstronghold"] = "168,229,512,439"
    },
    ["silithus"] = {
        ["hiveashi"] = "265,12,512,320",
        ["hiveregal"] = "245,285,512,384",
        ["hivezora"] = "97,144,384,512",
        ["southwindvillage"] = "500,65,384,384",
        ["thecrystalvale"] = "104,24,320,289",
        ["thescarabwall"] = "116,413,288,256",
        ["twilightbasecamp"] = "344,197,320,256"
    },
    ["stonetalonmountains"] = {
        ["boulderslideravine"] = "572,561,145,107",
        ["campaparaje"] = "718,571,190,97",
        ["grimtotempost"] = "668,515,225,120",
        ["malakajin"] = "663,582,125,86",
        ["mirkfallonlake"] = "390,145,200,215",
        ["sishircanyon"] = "475,433,125,125",
        ["stonetalonpeak"] = "247,0,270,205",
        ["sunrockretreat"] = "389,320,150,150",
        ["thecharredvale"] = "210,234,230,355",
        ["webwinderpath"] = "457,282,288,355",
        ["windshearcrag"] = "553,197,320,275"
    },
    ["tanaris"] = {
        ["abyssalsands"] = "363,194,215,180",
        ["brokenpillar"] = "473,234,110,180",
        ["cavernsoftime"] = "561,256,155,150",
        ["dunemaulcompound"] = "325,289,205,145",
        ["eastmoonruins"] = "395,346,160,150",
        ["gadgetzan"] = "421,91,175,165",
        ["landsendbeach"] = "445,511,205,157",
        ["lostriggercove"] = "629,220,160,190",
        ["noonshaderuins"] = "533,104,120,135",
        ["sandsorrowwatch"] = "299,100,195,175",
        ["southbreakshore"] = "499,293,215,175",
        ["southmoonruins"] = "323,359,195,210",
        ["steamwheedleport"] = "592,75,155,150",
        ["thegapingchasm"] = "449,372,220,210",
        ["thenoxiouslair"] = "252,199,180,200",
        ["thistleshrubvalley"] = "203,286,185,250",
        ["valleyofthewatchers"] = "291,434,150,160",
        ["waterspringfield"] = "509,168,165,180",
        ["zalashjisden"] = "611,147,110,140",
        ["zulfarrak"] = "254,0,210,175"
    },
    ["teldrassil"] = {
        ["banethilhollow"] = "382,281,160,210",
        ["darnassus"] = "101,247,315,256",
        ["dolanaar"] = "462,323,190,128",
        ["gnarlpinehold"] = "368,443,185,128",
        ["lakealameth"] = "436,380,256,185",
        ["poolsofarlithrien"] = "335,313,128,190",
        ["ruttheranvillage"] = "494,548,128,100",
        ["shadowglen"] = "491,153,225,225",
        ["starbreezevillage"] = "561,292,200,200",
        ["theoracleglade"] = "272,127,170,240",
        ["wellspringlake"] = "377,93,180,256"
    },
    ["terokkarforest"] = {
        ["allerianstronghold"] = "480,277,256,256",
        ["auchenaigrounds"] = "247,434,256,234",
        ["bleedinghollowclanruins"] = "103,301,256,367",
        ["bonechewerruins"] = "521,275,256,256",
        ["carrionhill"] = "377,272,256,256",
        ["cenarionthicket"] = "314,0,256,256",
        ["firewingpoint"] = "617,149,385,512",
        ["grangolvarvilliage"] = "143,171,512,256",
        ["raastokglade"] = "505,154,256,256",
        ["razorthornshelf"] = "478,19,256,256",
        ["refugecaravan"] = "316,268,128,256",
        ["ringofobservance"] = "310,345,256,256",
        ["sethekktomb"] = "245,289,256,256",
        ["shattrathcity"] = "104,4,512,512",
        ["skethylmountains"] = "449,348,512,320",
        ["smolderingcaravan"] = "321,460,256,208",
        ["stonebreakerhold"] = "397,165,256,256",
        ["thebarrierhills"] = "116,4,256,256",
        ["tuurem"] = "455,34,256,512",
        ["veilrhaze"] = "222,362,256,256",
        ["writhingmound"] = "417,327,256,256"
    },
    ["thousandneedles"] = {
        ["campethok"] = "0,0,305,310",
        ["darkcloudpinnacle"] = "259,131,205,195",
        ["freewindpost"] = "357,264,210,190",
        ["highperch"] = "31,155,190,190",
        ["splithoofcrag"] = "391,192,210,195",
        ["thegreatlift"] = "205,70,210,180",
        ["thescreechingcanyon"] = "179,200,250,240",
        ["theshimmeringflats"] = "610,300,320,365",
        ["windbreakcanyon"] = "492,250,240,220"
    },
    ["ungorocrater"] = {
        ["fireplumeridge"] = "367,178,295,270",
        ["golakkahotsprings"] = "121,151,315,345",
        ["ironstoneplateau"] = "582,67,285,285",
        ["lakkaritarpits"] = "160,6,570,265",
        ["terrorrun"] = "158,368,345,285",
        ["themarshlands"] = "560,240,310,355",
        ["theslitheringscar"] = "367,380,345,285"
    },
    ["winterspring"] = {
        ["darkwhispergorge"] = "447,441,255,205",
        ["everlook"] = "509,107,165,200",
        ["frostfirehotsprings"] = "222,172,240,140",
        ["frostsaberrock"] = "368,7,250,180",
        ["frostwhispergorge"] = "523,376,200,160",
        ["icethistlehills"] = "611,242,125,165",
        ["lakekeltheril"] = "401,198,215,185",
        ["mazthoril"] = "493,258,185,180",
        ["owlwingthicket"] = "593,340,165,140",
        ["starfallvillage"] = "392,137,185,160",
        ["thehiddengrove"] = "555,27,175,185",
        ["timbermawpost"] = "229,243,230,120",
        ["winterfallvillage"] = "617,158,145,125"
    },
    ["zangarmarsh"] = {
        ["angoroshgrounds"] = "88,50,256,256",
        ["angoroshstronghold"] = "124,0,256,128",
        ["bloodscaleenclave"] = "596,412,256,256",
        ["cenarionrefuge"] = "694,321,308,256",
        ["coilfangreservoir"] = "462,90,256,512",
        ["feralfenvillage"] = "314,332,512,336",
        ["marshlightlake"] = "81,152,256,256",
        ["oreborharborage"] = "329,25,256,512",
        ["quaggridge"] = "141,325,256,343",
        ["sporeggar"] = "20,202,512,256",
        ["telredor"] = "569,112,256,512",
        ["thedeadmire"] = "716,128,286,512",
        ["thehewnbog"] = "219,51,256,512",
        ["thelagoon"] = "512,303,256,256",
        ["thespawningglen"] = "31,339,256,256",
        ["twinspireruins"] = "342,249,256,256",
        ["umbrafenvillage"] = "720,461,256,207",
        ["zabrajin"] = "175,232,256,256"
    },
    ["sunwell"] = {["sunsreachharbor"] = "252,252,512,416", ["sunsreachsanctum"] = "251,4,512,512"},
    ["scarletenclave"] = {["scarletenclave"] = "0,0,1024,768"},
    ["scarletmonasteryentrance"] = {["scarletmonasteryentrance"] = "0,0,1024,768"},
    ["blackrockmountain1"] = {["blackrockmountai1"] = "0,0,1024,768"},
    ["blackrockmountain2"] = {["blackrockmountai2"] = "0,0,1024,768"},
    ["blackrockmountain3"] = {["blackrockmountai3"] = "0,0,1024,768"},
    ["lakewintergrasp"] = {},
    ["dalaran"] = {["dalaran1_"] = "0,0,1024,768"},
    ["dalaransewerage"] = {["dalaransewerage1_"] = "0,0,1024,768"},
    ["boreantundra"] = {
        ["deathsstand"] = "707,181,289,279",
        ["templecityofenkilah"] = "712,15,290,292",
        ["warsongstronghold"] = "329,237,260,278",
        ["riplashstrand"] = "293,383,382,258",
        ["thedensofdying"] = "662,11,203,209",
        ["thegeyserfields"] = "480,0,375,342",
        ["torpsfarm"] = "272,237,186,276",
        ["valiancekeep"] = "457,264,259,302",
        ["garroshslanding"] = "153,238,267,378",
        ["borgorokoutpost"] = "314,0,396,203",
        ["amberledge"] = "325,140,244,214",
        ["kaskala"] = "509,214,385,316",
        ["steeljawscaravan"] = "397,66,244,319",
        ["coldarra"] = "50,0,460,381"
    },
    ["sholazarbasin"] = {
        ["kartakshold"] = "76,375,329,293",
        ["theavalanche"] = "596,92,322,265",
        ["thesavagethicket"] = "396,51,293,229",
        ["thesuntouchedpillar"] = "82,186,455,316",
        ["themakersperch"] = "172,135,249,248",
        ["themakersoverlook"] = "705,236,233,286",
        ["rainspeakercanopy"] = "427,244,207,235",
        ["themosslightpillar"] = "265,355,239,313",
        ["theglimmeringpillar"] = "308,34,294,327",
        ["thelifebloodpillar"] = "501,134,312,369",
        ["thestormwrightsshelf"] = "138,58,268,288",
        ["riversheart"] = "359,339,468,329"
    },
    ["dragonblight"] = {
        ["lightsrest"] = "703,7,299,278",
        ["galakrondsrest"] = "433,118,258,225",
        ["newhearthglen"] = "614,358,214,261",
        ["rubydragonshrine"] = "374,208,188,211",
        ["icemistvillage"] = "134,165,235,337",
        ["venomspite"] = "661,264,226,212",
        ["westwindrefugeecamp"] = "42,187,229,299",
        ["obsidiandragonshrine"] = "256,104,304,203",
        ["naxxramas"] = "691,160,311,272",
        ["wyrmresttemple"] = "453,219,317,353",
        ["scarletpoint"] = "569,7,235,354",
        ["emeralddragonshrine"] = "543,362,196,218",
        ["agmarshammer"] = "258,203,236,218",
        ["theforgottenshore"] = "698,332,301,286",
        ["thecrystalvice"] = "487,0,229,259",
        ["angrathar"] = "210,0,306,242",
        ["lakeindule"] = "217,313,356,300",
        ["coldwindheights"] = "403,0,213,219"
    },
    ["crystalsongforest"] = {
        ["windrunnersoverlook"] = "444,383,558,285",
        ["theunboundthicket"] = "500,105,502,477",
        ["theazurefront"] = "0,244,416,424",
        ["forlornwoods"] = "129,0,544,668",
        ["violetstand"] = "0,176,264,303",
        ["thegreattree"] = "0,91,252,260",
        ["thedecrepitflow"] = "0,0,288,222",
        ["sunreaverscommand"] = "536,40,446,369"
    },
    ["howlingfjord"] = {
        ["scalawagpoint"] = "168,410,350,258",
        ["baleheim"] = "576,170,174,173",
        ["giantsrun"] = "572,0,298,306",
        ["halgrind"] = "397,208,187,263",
        ["utgardekeep"] = "477,216,248,382",
        ["vengeancelanding"] = "664,25,223,338",
        ["nifflevar"] = "595,240,178,208",
        ["emberclutch"] = "283,203,213,256",
        ["ivaldsruin"] = "668,223,193,201",
        ["cauldrosisle"] = "490,161,181,178",
        ["fortwildervar"] = "490,0,251,192",
        ["thetwistedglade"] = "420,57,266,210",
        ["newagamand"] = "415,360,284,308",
        ["baelgunsexcavationsite"] = "621,327,244,305",
        ["apothecarycamp"] = "99,37,263,265",
        ["ancientlift"] = "342,351,177,191",
        ["kamagua"] = "99,278,333,265",
        ["gjalerbron"] = "225,0,242,189",
        ["explorersleagueoutpost"] = "585,336,232,216",
        ["westguardkeep"] = "90,180,347,220",
        ["skorn"] = "343,108,238,232",
        ["campwinterhoof"] = "354,0,223,209",
        ["steelgate"] = "222,100,222,168"
    },
    ["zuldrak"] = {
        ["zeramas"] = "7,412,307,256",
        ["draksotrafields"] = "326,358,286,265",
        ["altarofrhunok"] = "431,127,247,304",
        ["altarofsseratus"] = "288,168,237,248",
        ["kolramas"] = "380,437,302,231",
        ["gundrak"] = "629,0,336,297",
        ["altarofquetzlun"] = "607,251,261,288",
        ["altarofharkoa"] = "533,345,265,257",
        ["lightsbreach"] = "181,363,321,305",
        ["thrymsend"] = "0,247,272,268",
        ["amphitheaterofanguish"] = "289,287,266,254",
        ["voltarus"] = "174,191,218,291",
        ["altarofmamtoth"] = "575,88,291,258",
        ["zimtorga"] = "479,241,249,258"
    },
    ["grizzlyhills"] = {
        ["grizzlemaw"] = "358,187,294,227",
        ["voldrune"] = "176,421,283,247",
        ["conquesthold"] = "17,307,332,294",
        ["dunargol"] = "547,257,455,400",
        ["ragefangshrine"] = "312,294,475,362",
        ["drakiljinruins"] = "607,41,351,284",
        ["venturebay"] = "18,461,274,207",
        ["thormodan"] = "509,0,329,246",
        ["granitesprings"] = "7,207,356,224",
        ["blueskylogginggrounds"] = "232,129,249,235",
        ["draktheronkeep"] = "0,46,382,285",
        ["amberpinelodge"] = "217,244,278,290",
        ["ursocsden"] = "331,32,328,260",
        ["camponeqwah"] = "548,137,324,265"
    },
    ["thestormpeaks"] = {
        ["frosthold"] = "134,429,244,220",
        ["templeofstorms"] = "239,301,169,164",
        ["ulduar"] = "218,0,369,265",
        ["sparksocketminefield"] = "242,468,251,200",
        ["borsbreath"] = "109,375,322,195",
        ["engineofthemakers"] = "316,296,210,179",
        ["garmsbane"] = "395,470,184,191",
        ["dunniffelem"] = "481,285,309,383",
        ["narvirscradle"] = "214,144,180,239",
        ["nidavelir"] = "108,206,221,200",
        ["brunnhildarvillage"] = "339,370,305,298",
        ["snowdriftplains"] = "162,143,205,232",
        ["valkyrion"] = "98,318,228,158",
        ["templeoflife"] = "570,113,182,270",
        ["terraceofthemakers"] = "292,122,363,341",
        ["thunderfall"] = "627,179,306,484"
    },
    ["icecrownglacier"] = {
        ["aldurthar"] = "355,37,373,375",
        ["corprethar"] = "342,392,308,212",
        ["thebombardment"] = "538,181,248,243",
        ["onslaughtharbor"] = "0,167,204,268",
        ["sindragosasfall"] = "626,31,300,343",
        ["thefleshwerks"] = "218,291,219,283",
        ["jotunheim"] = "22,122,393,474",
        ["valleyofechoes"] = "715,390,269,217",
        ["theconflagration"] = "327,305,227,210",
        ["thebrokenfront"] = "558,329,283,231",
        ["scourgeholme"] = "690,267,245,239",
        ["ymirheim"] = "444,276,223,207",
        ["theshadowvault"] = "321,15,223,399",
        ["argenttournamentground"] = "616,30,314,224",
        ["icecrowncitadel"] = "392,466,308,202",
        ["valhalas"] = "217,50,238,240"
    },
    ["hrothgarslanding"] = {
        ["hrothgarslanding2"] = "256,0,256,256,1",
        ["hrothgarslanding3"] = "512,0,256,256,1",
        ["hrothgarslanding6"] = "256,256,256,256,1",
        ["hrothgarslanding7"] = "512,256,256,256,1"
    },
    ["tolgarod"] = {["tolgarod"] = "0,0,1024,768",},
    ["twistingnether"] = {["twistingnether"] = "0,0,1024,768",}
}

--------
Map.OLMB={[1334]="9c5b694262206773fe2a41615f26e555",[1335]="db0f5987ad6393221041fe98f1400409",[1429]="cae092a30aac43f9da9290f597d02017",[1430]="f811ad088b858c940879d2850e8e09ce",[1431]="c6264d2e8fb580fec9ca4f4a2d5237d8",[1432]="97b3a695197b16992106881eb859ddee",[1433]="0a7256562c17610e517e7e74deae5c4a",[1434]="e6d32b0c3616e4116f9112c6ca030a5b",[1435]="4a55e3bededf0288a4451e4417b2b9c5",[1436]="206c319ac75ba16644d10ce6c32315d8",[1437]="d3a7fd2a983bc2ae4cd008135b305314",[1528]="c8358a2a0dd4e1168fb6e7c16c4fd103",[1529]="8d2a14252ea4b73bbc6f5c20839824d5",[1530]="475694f288283f12bc5ea73f1739b143",[1531]="c9b9d0bc168a1bde7bfd0f1fe99bd41d",[1532]="0a683e8f45706756af5486c89dc84900",[1533]="37fcdc2edd7dbe9b899f0843d5f119aa",[1534]="b4acde20826d38f7bbcb1176e02133fa",[1535]="b0a9562b7589b5f0b27c40152fdc1735",[1536]="e82b78932a6ff46cc5ccff9105200a1a",[1537]="f5ac1d05f57a8dcbaee6232b06e4fb25",[1538]="21b774d98f0a50711a26d9d61156416e",[1628]="081adedf295e06b5600ac2a28299ef67",[1629]="edf89015d280052b8358ddc323a145e2",[1630]="44239e510efac19d778db3c28ef683aa",[1631]="870cbcaf905f4da64b3d2c20a5d231f5",[1632]="ecf6f87cb51665b845f0e5533cf28dcd",[1633]="0c25d875d6ef8caa245fe5b39175fec7",[1634]="2d5ebfb3aa2bac3964bee96dd75d7689",[1635]="6cc18db1d822f10e93495a39eb0d3591",[1636]="8a693d8e28b68f54422f3eb8046e0d29",[1637]="34da9257079850163ea86337b0ce1bb1",[1638]="b28bb0035a729782e92ad66d4336b3d1",[1725]="3a047f7b1e2f43b1bf8328a1dad4250e",[1726]="ece2d94afc13358081af29256432e9d1",[1727]="f9cff116d2ffb4c2b7e1f981f72a3755",[1728]="b42be71c9b4aea2358b5958ccb69c49a",[1729]="de289ae6a9c9a14bc9120f8f0afb70c4",[1730]="38737ee5b82c1a2b93dddc16fd7ab192",[1731]="0ba80f3eb5e6a0d9672a95f7d6524f69",[1732]="55acb09d5c8061ba0233ea1f907655c4",[1733]="00e1cf872b32bc88dd2a0e2f47b72890",[1734]="ec5301475b1b13f037b1dcdfbcf64791",[1735]="eb977338d4c0ce0d8f627a76f24d3b24",[1736]="ffb313e89571a2ef8d92cffa092e4afc",[1737]="5768358e8209bb4a0e730a96339ce538",[1738]="554a8b806d43c4afab5e354adc99b53f",[1824]="cdab86a36687bb894fd36b3b6f753195",[1825]="e281aa12b9da1678fd3ef3d42c211f41",[1826]="150bb0b9a1292e7d77130171ef125d4c",[1827]="1459d94a209db2306f75feae4b401a6e",[1828]="42158714438a424fddfada54eecd048c",[1829]="37bb62560a700f33627609fb9f62dab2",[1830]="5651a9f277be14fa545d26f40129011c",[1831]="150e37907f09b9cf71f95c4cdb1360e0",[1832]="90a0f12301f4b931fc22de1f8aa05090",[1833]="c9014fbb3c6e31062db7d28505469278",[1834]="e64d035d2efb49ad5eb5210017538f76",[1835]="1a70e6a4e034e6b9d869f804d7c168f5",[1836]="281e166b46bb1b8cff93d7ff1727ff33",[1837]="f82a7194ad86c630ecf12c327689beee",[1838]="3064ff76c8ed5b8c2a275f13364884c0",[1924]="fdde9d49c541225502d01472e26a9628",[1925]="975d7d5b9a0301de691a33300d7120ff",[1926]="87c18c262e46561d4f11d373b51de09b",[1927]="e05ef5be56b01c262851cdda3fa36d66",[1928]="3b80d2964a3015912d016ae34bc5287a",[1929]="b9edf9d5e09be7631f0a7c4c445377f5",[1930]="f015df27ae11a2e16b3c7331c6b44985",[1931]="9d8047587ac5633ad7cebbf1ed7ad906",[1932]="84ed21696c49899d082f77e3a1f36308",[1933]="7eced03cec92df4644b6d0b4451f706a",[1934]="b9d9765addfc1748b59a94b423b409c6",[1935]="d0f13982d284917365b4ab90bf9a58ba",[1936]="74479e282744bb3630286c1bb4f10938",[1937]="73368aa5b3709b059e667d049c7ff91c",[1938]="7e4e59c65498c7279dd60383991e893e",[1939]="bf3c20a6299195e95a90b4fb99a562b2",[1940]="a8c28a238c505918395db32d7973474e",[2024]="1dc1427fa1aa42b5740cf2f8a63e11d2",[2025]="6f8f22d2af08c65f57938f10d1874de7",[2026]="c0357c970dbec870455b138ee17a0da2",[2027]="1bfdbe90fc969c1e415e395e8e4a1ed9",[2028]="33198ee94af5c5e3afbe7b50781006ca",[2029]="082656dd06614dfee266574599422a07",[2030]="3cd43b2dae4eee0d0a7f737b34b26520",[2031]="c7e2ef95908db43b396dc78426eb944f",[2032]="8d68e7641f23dd7b328e5e6950dc27df",[2033]="b5fa31ba6675675e457cdbbbdf74c901",[2034]="24ecb88bf4c21ba46b79c4f5c9719912",[2035]="747f8032416b19ee89099256d850a101",[2036]="261f190db7914d9319ca574f429b0b00",[2037]="b867152863296805dff4f33111979a3a",[2038]="d09598db915a1db9850c087662a2da98",[2039]="105ef96f66234e56541934a45289f17c",[2040]="54a38e3e14c6519a0ec487b327604a0e",[2123]="210219ec34009b45da02f73d1123794c",[2124]="7785e341710f3f149733b8038e438ae1",[2125]="55ba9b6ac61b0ced6cc68df17acbb129",[2126]="68a2b6260f20caeb1da24272bb503c02",[2127]="cff9ae3097b6291a1f88587f48160151",[2128]="face7fa6ec7c6cfb24e8f9b38a905d99",[2129]="b6e6441a33289b9875ba475300cf6b15",[2130]="afe9fe06e2698ddbada47442b494a15a",[2131]="14a532cd31117a602be9e40d8d3af8e9",[2132]="697820c1a76e67971ccfc59759deda7d",[2133]="006ec76bc237952cb958cd008d340522",[2134]="dfc95d1c668740e9bf632a3758df312f",[2135]="2de80102a9b758dbc3806aafa7ee821d",[2136]="2d41039ad9a349ef52b41fac24b7c583",[2137]="bbd4f9846fb3e4e3a1f8967dbf790031",[2138]="3e362c60065c067c3ad7c178181a49cf",[2139]="adf0a88515d6f26b6870389102efc115",[2140]="84b9f0e15983be8e71383573be58ffa0",[2223]="2cc485a1b0bde3f7b430a7e0bf5fbcc8",[2224]="939ae627165dcc244976810464af0636",[2225]="00e980a9c950332a456abd84027e2d3f",[2226]="e74d111a5865b5fe74c1e3d26f6a68a8",[2227]="d0632a5a908983a1fbc2f8b313b7eeec",[2228]="6ee0c93a374ddf917528a3b213b38b2c",[2229]="ef8c09799266c2085534aefcc4961f7f",[2230]="e3e1242eb6dd9b86d1e815d3444c97d4",[2231]="f2b970b4724e92cc2be36448b278f356",[2232]="4ed2e298897196521e7b3a0eaff084e2",[2233]="c529a3b8fe322021dc98762e9e63087f",[2234]="ebdff285136a03aa82ae249bac7ff4ba",[2235]="41df4a4ac17bd81c643f0782f4c3928e",[2236]="2c0cd912e2a3d57c974c4e5381c1d363",[2237]="3ab8733eea582f1d038dd232084124c1",[2238]="55d46027218d38f896799f7cd9cf48d7",[2239]="50c36b1658b2909e97ea5c1ba861a5fa",[2240]="1fedb10273f6b7185943c1586795f5f2",[2323]="0458e0531bd48d57c33b39c86a3efa69",[2324]="3d58a4d9c32569aae70a5ed2451f82b0",[2325]="9b521d8cebd63262535b4d85fc9f4dc2",[2326]="a4d680eb2d3c3d665b4310e8eeeabd29",[2327]="4e697e339bb1ea3cee879f5fc9144490",[2328]="93ce5ca373884c2aa383427ffb4ea7b9",[2329]="a3ee9808ead3427af5a7524b97954ee1",[2330]="6dea2280bdf89ba89791c56199ce0971",[2331]="e9db30086db4b3cfe8ede91d043bb9ed",[2332]="2e9c1e02587c7b7d8175ee29ff18ccd8",[2333]="721697804ceeb92169025136dd6c45f4",[2334]="474a2004bba66d33f66a1535d737117d",[2335]="45b3bd01b08aade8542c6ba45a8b7a91",[2336]="89585b4008ee490d0bc695e9915cf661",[2337]="66074fbfae5341012fbfccf4165e5813",[2338]="c02f65632b4a8f696f44fd3bac3d6d8e",[2339]="0a30f8819cbc547f8a12b3b6fc430910",[2340]="26f0a12508a6391525e4b26d9a5b760b",[2422]="5b6ad5294824465d1a6713731e879b5e",[2423]="dd8a4cad52c87ef3aa74aa6ef2260972",[2424]="309718ab68f97990bb8ce35cdf21fe5c",[2425]="f6206bea250dcc1d27b75297df026640",[2426]="8f033d1e7c51cb69fe98f432a4509af2",[2427]="8912f2cca89b2af93a9f693d8958b45c",[2430]="820da7b54e32183e67e522774f6fff84",[2431]="1205da7ca048f63570891fe06c937bec",[2432]="e3eda41e2b5658479f6dc544aecd4c57",[2433]="32034b93f9af61faa77f8f24ceedbabb",[2434]="8cb2301bcfd47c7ca8e797d280a8b266",[2435]="f8f8ad747abbfacd5993cc669ccc0d00",[2436]="966547de35bc475454ff6c9513763fd2",[2437]="88e2befeb8ce44c3b192bcfdca6cf4e4",[2438]="7d452cd36318b3f0f8db80fa5d6f9ee8",[2439]="da9e444595111c347053ec51acfb3187",[2440]="a2f735aeb0d3434318e1b573f83554c4",[2522]="01fce9467e0653e298d6f88775a80135",[2523]="37e82df9e5e0803f00f32b96fb37ae07",[2524]="1a06dfc44f91aad88219501a2a9883d9",[2525]="211dc3576846838055dd9856f7b1d18c",[2526]="8a6c9da44393445b661a6a26f21ac66b",[2527]="2ac878c91d5f892bfe83d87317eaf628",[2528]="3a90815d4475525a6f93bad4a3621b10",[2530]="d3d47817ab5b6ccb2e3b0cae22e8225b",[2531]="3450d1f7332a593c6e554659d09f2ccb",[2532]="b4530bee256004d69bd7434c089e77d1",[2533]="77336d01234a365a8e9562ff50a0a279",[2534]="ab00cb5149b0873409a9e4e3d257f267",[2535]="c7540b4eadc09508d88d7a237d767d71",[2536]="89a7d184a2d4946fab5761f395580e2f",[2537]="d3fb6182f0ceebeb479a69c9f6f78cd2",[2538]="71eecf3ffdc3d9ead36266a9f166eced",[2539]="e0ec7226463964853748fb7e50efe18f",[2540]="e84bbb0cfabad885402a565ad400e53c",[2622]="0cb506318f9a7c8542fe72ba2c35858a",[2623]="f32742caf45c2449dfd140954a888c6c",[2624]="aaf6ca11465d47ec8e007f41c0450d99",[2625]="f8eaf1ae21856ba1596a65734266e597",[2626]="5dba784b0fdd91f93e2c74301f0f391c",[2627]="a9bf868d3b6bca649c1962999b1b00f3",[2628]="8bb72e78254b08be4c4a0c57fc4421ae",[2629]="2879ffb08e32894cfb07685fa781e8a6",[2630]="0d697314d8604086919351d3f247f84e",[2631]="7b4f5f195975b2df7eb1963a4aa24c2f",[2632]="f57d07b9c98524dea1576a9fa0fbb72b",[2633]="1d9b0bbf6d34b125bbcb7f8fbc578485",[2634]="1f273e49a2d80686745c0ccc30282e4a",[2635]="1dbf730934731c9240f8f719d8e7337b",[2636]="e81172f1a43178e798b674a13b50b33e",[2637]="7040b8749d5a2e473cea4f38ccc49c72",[2638]="3e913f7ec25b6a41245479c9cfae0cde",[2639]="8c37b0c24c34fe2972164a35796b9006",[2640]="5c6abbf88ae55fbc069576d7c282fc9b",[2722]="4b1d14219798bafafa919a6f858aef3b",[2723]="f806b9c9a76fc869b8c060b02290fbd2",[2724]="55035d8afa7bb05937841a527821f03c",[2725]="132391dea400e434d66c5f99e2b17c2c",[2726]="08d0c6fee027d2f9a7b8c7c7fed1ee23",[2727]="2ac453cbd238dcac41cfd3b8025d2b28",[2728]="4cf0f173d7f35f6358de04186542cd84",[2729]="6aa269d9f174f3a65f982669afa4d5c6",[2730]="efc6fc7876c0ff8816ca8ab36c62a554",[2731]="75559d66362aedd74820345925c1ad53",[2732]="e529b7d7f83871e6ddfd3fe0f47e1608",[2733]="764544e7462e2050910a11e5e82f1645",[2734]="a67e31f619a1efac12a79fe7a4eae138",[2735]="825f7a721fd675a0e6bdc117f78dafb3",[2736]="44156f3484e2612021240763a7711bb3",[2737]="4bd4ee9451f68c9ccdcd8e99f689d015",[2738]="14d1024a4c201d4d196e31b3e28ddc79",[2739]="39d30e5ccce22b9457b1232ce234b329",[2740]="62ade5cbff1f4a1d2a3ee91681449832",[2823]="0f784d48b460f1499668bb21358b08a8",[2824]="1a04cc45e1347f19e2562309e7f6612d",[2825]="4a0d5a5434b605860820857e71bd4437",[2826]="4f89223ad7ec51a44cfce3b586aafd6a",[2827]="da437673bcd44e95541fa818c5b19924",[2828]="54f5f14b77126fb0ff2e249edc554f80",[2829]="44c8c1737f29af1912b7267e07f7c28a",[2830]="9a2ce6344196818be3f4dbea5d127f1e",[2831]="15a6ef67796e85f32b83dd7e78ee3901",[2832]="2d5049a88048c3fd335037f9730a5c4e",[2833]="e9cc3ebf43d32b922d5a834eb8e3cccc",[2834]="29c8339398c67b94527f49e151e54eac",[2836]="7811b731e79fb8470c25b9d1e7552aa3",[2837]="6fac776a73ac9b03114455ff730b0c88",[2838]="fed1ba0cc282815101e5b0ac672544df",[2839]="5a9b6dd9844cb931ab74d7741f47ec2c",[2840]="a120de2b8ba896b20195f3dfa386c855",[2841]="e2e6cd8759a48ed05402ea3481fca6f2",[2923]="1a44c516eb2a823b09327784f4908899",[2924]="389dd32a552012f065c03db467e63020",[2925]="75eaa38e3db77271dcc0c4e29742dbde",[2926]="84eb0f8caab94f187825768978796846",[2930]="3d52b6d06ef555f3a6b407dcf4af9308",[2931]="19e55cf97e711a6e38804f8e8b0f790c",[2932]="f033b0f408bd3e32eaeda30f2fe9895a",[2933]="1fc188a69eb547aa457d775bdcaba420",[2934]="b58701a782a93b21e0bfd149ac5634ed",[2936]="98b41210e5f3c6d4a5fc8b345bec1c40",[2937]="937c496d1b29ace6ad09fd01100f92c4",[2938]="d9196c8124f6a5194cdd5fa93f2a1168",[2939]="75bc077d317e834a23594d2f56a7a85b",[2940]="475e1732c2af47b7f240746b596b705f",[2941]="e3d6f569c09696fea42459dd44940e32",[3026]="e243f48745e7a5d29ddb42fcd4901682",[3031]="4c7080616d833c13c538cd7ed55986b8",[3032]="867435cfd14fcd5e397e77ecd760ee2e",[3033]="b8443b6405eaafc1dc602a9901bca230",[3034]="0d4cf95ba4bb656f6a68a2f8c546eb4b",[3036]="4ebdbf3fa6ab5252f9c19e2d92162c82",[3037]="3727bbdbc924255f1f7cbe4962e89f5e",[3038]="978ca9f4d3f20fbcb3c1eb30ae523c0e",[3039]="b799830aa31fe67b4c9ac7f41e8ee52c",[3040]="2b5c5e8c1b797a347f4a46c7c77cb0f6",[3041]="e606135b357023962d5097f3a0a9f4e7",[3042]="b5ebb421482d34b4bb7100ec8a2e93d0",[3132]="1fbeb487b7dd5699aa06df677189e2a4",[3136]="7ee0375d4852cfe8329545ae66453eaf",[3137]="03d9b7a863f635a683bad1184a157dfb",[3138]="0f507cb8b354bedb05c8418f2d79b9e1",[3139]="bea3733017e891b1694266a64f467baa",[3140]="04bb7d06ff9512c09688833ee2dba8ed",[3141]="af3352efadea644e02cd36d7ad46f01f",[3142]="70faa6a5f7bd0b97cde9d4361a865ae9",[3237]="eaf0131fc1d86955d8f6170dc2b67264",[3238]="cf119cabd9fa3724170b4c89d33225d1",[3239]="5a4255b08160434b2d69ea110681337b",[3240]="92b215bc887e1cacb01cf8e72e73539f",[3241]="a43620ae9a0796cc2cb6b3d863f68446",[3242]="1636bbd72fa723c2f7079b440bb28e71",[3337]="96b82d8d1e2737f3d976a17d75e3dba9",[3338]="0d9fe3964fa87a943223694155ade719",[3339]="152279f3f0aecf73e73dbe464039c93a",}
Map.BMB={[4116]="a64f5b81035c25ffea123306c3d07752",[4117]="963ad57ae792af606831760ea32d83ec",[4118]="a5fb2029ff93d78ff5ae358ebed6866b",[4211]="02947c065a0dbfbed7d04a94cca342f1",[4212]="c8b4c37553c3f3dd20cd1e27bdbc552e",[4213]="39b0f22c61ad7e7acb1ab49ea5fe3738",[4214]="5340f9c5539692f19f2e22918b6c3ce4",[4215]="f2c6c670573ef05955f24285dc8a307d",[4216]="e15a5cc991222076d851c8c67298d6e6",[4217]="8701d8c04f40d7620f1890090baa7dad",[4218]="d7e8eaa081a5d8c0fcbabc40d5e14a82",[4219]="33c5a74914252203415b4dcd7e20f62e",[4220]="ba959329a15e583fa14432a23f9a1a4a",[4221]="94e4a41182124a20ba7ccadbbbdb7b5f",[4306]="8112ba6e470ebf068c872554098b01ed",[4307]="147c45736f0893c53be8f1424737b3e3",[4308]="ae8bbbdbbb850604e9f184c451f30edf",[4309]="10aa8eda927e1f2a27dba6ef200d7ce1",[4310]="c21b5135c1117b318a057d9a270fb3c1",[4311]="fcfa08b310469db79998770a776b6796",[4312]="b93a1cb42bf5a4ad77e57eb4f1a02bfa",[4313]="28f8a3d2b8e102d43a7dc742abb2427e",[4314]="c9a917b46af119e8f2b14ec598b00cd4",[4315]="0cec5bc4cfe24f3a809ee8834e53e7e3",[4316]="8911cb86c52e3c8be61d57f96222d08e",[4317]="711d69ee43b173759fe4c458d740f629",[4318]="edba340bff159763a580138db2801c72",[4319]="e848e5bf3851ab5ce6116bfc37691cb0",[4320]="dbda3eb1d64d8aa495f880e48977e1f5",[4321]="72fb4a00f19f5c223748ebba9868257b",[4406]="8fbb2c7a7748bc6e3063353609bfeef4",[4407]="055ebca5e0041b8c4c42e0bd152ea062",[4408]="f7879d5bb185e8afb72031a2b2c6d23f",[4409]="0a12a59cf923f7c95505b9a6c4310c32",[4410]="db290e02170d3d45cecb90a8d01d4310",[4411]="fc5852b611c95131e68bc483d025e7b3",[4412]="9201ce688dd87b5b5243eb8d9391b783",[4413]="7e397d31660fb53f18d7be9d3722628d",[4414]="c47d2f9acd6e19420113092ef68bc1db",[4415]="66c0ea81255abafe20aee3d1a63b26dd",[4416]="cc7b4ad1fa14137de48fd7079f2fbe95",[4417]="f1f73e72c9286a211b69f8e5eeec46a3",[4418]="ab8524be4abf7a14404ca139215120f9",[4419]="5d7c730167abae164165cbddaafdf47a",[4420]="040bcaadb5b407fec44079d611817dbf",[4421]="67ae788a66ed3c8f880986167eb33e17",[4506]="87c35f0d7e1062fa013974e0147c608e",[4507]="81c6b423f388eda560d040fe3a458776",[4508]="8ba5c372d519d5ff09972caee856fca9",[4509]="9aacbba2fb4caec93fc501993a87d3f6",[4510]="d4dedc6b1b064a5dd3e4c9dcc435f672",[4511]="67ba43d493e62a8fad5de319e6d4cb05",[4512]="f3cbe8f8e23cf90123bef2c507208d94",[4513]="5977c71394fd2b8cabfae4bc6e25af33",[4514]="622879d8876585e5177f27df123c9207",[4515]="4aace3b075b477e031d5d95488ac83b9",[4516]="e023fbd829d2e28bff5cf00daa643f07",[4517]="f6cb74edd8956627e65c7e08427ce11e",[4518]="158b68e6c5ded04c820682563730fdf7",[4519]="852bde19e758080ebd6a3917d479c800",[4520]="8ce68878e3281805bf090563350c8665",[4521]="0d1f2a6c1b3118bb8b83c7bc5ff9e397",[4606]="12ca9dc7357a15e2ba312213eac35567",[4607]="aa7bebe756643d779617a9e9dd60982c",[4608]="e8c69f21bd83ced6eb440ca4d3bfb895",[4609]="8ee53fce00fb36bd36fed2b9f6b1faeb",[4610]="a6d527da0ac5917ca02fdc3c5946c99c",[4611]="67ba43d493e62a8fad5de319e6d4cb05",[4612]="0f0047f1f3347adfa0972ad8e081bf3b",[4613]="53d297354838ae938958e27aea346dda",[4614]="cdc5c02ffea227d9aefe2eab1e3a3c60",[4615]="0a16a4632079d574bf2a0d4ec71baba3",[4616]="892084eed48572eb580cdafa43de4dc4",[4617]="4fde924d41f28dfa8b29cbaa6660a186",[4618]="54e956a41eb5fc02417d8323fc9a342a",[4619]="b6f2629ed57bc8d0a58984b16071596b",[4620]="4fcc870c37ae7e07b13c56b5c748d35b",[4621]="e6e2a750821309a68b0446e0814521b9",[4713]="330bb64d5297c0977682eb66071db42a",[4714]="995958d4fbb1bfb542660b14a4fdddf6",[4715]="c4c5316fa2f2774aae12e4c9c8cb0b20",[4716]="9ec7e9ba446a1f8a2be9fd49be2a24f5",[4717]="041508a30b2aaa2eca343f893b1d9f8b",[4718]="f5603a32b688ea087d9c26045ca45111",[4719]="9461fa3080e51c9c6c7f358adf563e45",[4720]="0ff60d4df04010ebab864431eaf598f5",}
Map.DMB={[5034]="9d48758b7b7a7e4f504e51b60c830b6b",[5035]="d1d6a4cf94fac2cd7458824ba9e6f199",[5133]="ee4c2aee8bb6cbf09ff80736a0d9be66",[5134]="3fd4882f0840714d7a4579f1d5d6b87f",[5135]="6d9554366462ad5a9ccd59b2818f2b31",[5136]="1c7b67d1eb92ba056df1610a4f8ae4ff",[5137]="a5d10fefb999de6ef2f9d202930ed6a0",[5140]="27fe9fa696bb1db9f4aa435b803a8be5",[5141]="96a070fb7dc2904bb04d207aefe205b6",[5142]="0f99ce2cf86ad20f78dcd2315d2fc080",[5233]="c4173803c5859a135d2eb2227726ec29",[5234]="ca3499ad9be587cf8b3614df5a2d4168",[5235]="9fe796c3bd0dbeeab54f7533ccd73d6b",[5236]="06f52aa745449d05f6476358ddbf6f44",[5237]="28b541eb7d6600a9e893b967cb3e8755",[5238]="7959eaeccb31ea9897ee74771f085079",[5239]="03eb6519158eef183c0c0a33aa244c46",[5240]="e6afedcac2d81df6699c67b8e05a139f",[5241]="e18fab63c8cc9583fa30b73a47013f32",[5242]="3355f3a3cb80c2e1e0fcaa71179191f1",[5333]="a77c1d5140b39dd9312649b506c5d12f",[5334]="dc4111f1b629b3c893d540092449daf1",[5335]="fc06e47ab2c66b5cc644cd3bf6d0302c",[5336]="95139a2d719a589da7c1afa7362c6244",[5337]="a1882a5964b2dfd07053035566e75581",[5338]="d9e26c5d5d672e891076d00fb740b07b",[5339]="19d7e5bd571fc06ec2fa8e8a2c39ddbf",[5340]="289a1760abb41d7c3253642f1000a7fd",[5341]="16c3d63117da4386e2fe26316cd7f32a",[5342]="98ef332b9ceeb300642c939abc17b0d3",[5433]="6e9f288ebee5f1889a478bde1f5e38c3",[5434]="f7d785ea23defe49b1ad3d1737be9088",[5435]="65bec9e906ebcdcd8db2a0c3a7504522",[5436]="cb1de7c2e9e2b9eb7025d91ec5ea0453",[5437]="3757780e11badbe4072e91e0eb800839",[5438]="f8ca280babdc756e37b7001627c29fd4",[5439]="a14e66667554ba0372d6fcc60eb15359",[5440]="447a3c9c6f70d7590b0b916756b9ecd4",[5441]="37e2632439e5bac166efd0bacef5b977",[5533]="7289007b66e4dbf3ab1e5e20aef4bb43",[5534]="a7d5c138db0d8da3797ec839830fe9f6",[5535]="db8655591faed1d48e69956a80054851",[5536]="b9b9645d71232db2de61ffe643395473",[5537]="14c7de461a59980a2a49fe5e60685cb9",[5538]="c6d1fb66657df38c31b7fccbe6a14c0a",[5539]="9bfa1377392555022fece49b878020f5",[5540]="6d59158c02dc8f5574102a391653fe95",[5541]="b22aa9558a661159573584c31b780a22",[5633]="9af88b5b463f43caac9abbe3e93d87e0",[5634]="146e698f20eb45ead1fc3cdeafd605f9",[5635]="9268899f288963b7b2971bfe7835b742",[5636]="80220d0befeefc395a761263e8e8c7dd",[5637]="48df9909df19426f697a5d5a0a004436",[5638]="fb69edba5179630e8d900c8438d31014",[5639]="6c3a45272f541c99175bfcb70d06c1b4",[5640]="bad1f3a335ddd3aded60d22f9ddd81c7",[5641]="ddefb5b67d7bb47e2e4cda167ab3846a",[5737]="9f71965ef9fea7893ea2c7c1e301c2b7",[5738]="ac0f6f6aa681b289b1f0f0e18091869a",[5739]="c3c69a6c6de8c71f1ff41bd340bdc3a2",[5740]="d6b824e82ecc6393c0cff98131acb484",[5741]="c67f1cf9b9075426d9ef0ff282bd7737",[5837]="2dec3d0fedef6a8d5cfbfba8ec8ee5f0",[5838]="4f5713589764caa9188dbc3ceb8e35de",[5839]="ebd321fa371f9daf326178ab665068f1",[5840]="473963c81241483457b2dd33fcfa3fc1",[5841]="360277ff12f8cbbaa2f60537ff6e3137",[5938]="5ab57187ec51bc0f44b8c1b8fbb3e68a",[5939]="d923877ee49c4335c3f9c050bc0b51a9",[5940]="bd2b183ec2bb862b14cd5a1d5bc77cba",}
Map.KMB={[2341]="e6c251c97380dfa7355de02443d9073a",[2342]="9abfec485ab18341bb0131446ab96684",[2343]="afd2330b04e71ddacae572623c493746",[2344]="11a49e1022d2cd6937713ddd305eb23a",[2345]="6444ce6a56b7eb9aeec9f0737a4680ea",[2439]="a0be54575b3e5d421f7daacf0f8dc916",[2440]="e603550b22520dab25b04d780e4771f2",[2441]="09c208ef97f9cc94d8a060f7d0a4ce87",[2442]="2c75b43cdac5b1c62e1b0caa184de366",[2443]="aa7476683db9459c98cfa4c546350baf",[2444]="83d02bbe8eb72da841d8aa5079420d7b",[2445]="d0dc7fe89c0c329c7339b7e8cc894cb3",[2512]="0a96bdf25f404d7e32da4cf3f93abb67",[2513]="e70c01b5ef4134d6c8235a9053ce6c40",[2514]="426d3935a2a0b2e50cf9bf3f0339b56e",[2515]="613486788a312d8dcf2b9b7e2cb80bf7",[2533]="352d7163f5a514fa06965fc6c121e2c9",[2534]="0289905a4c98d99100259993c7535bb7",[2535]="496c2b66711b2d227a2801d82fb3f0e3",[2536]="d0bcbe898e46c9014f578e6caeea2337",[2537]="177a84be025941f425f118c3f81b86de",[2538]="e2636a3b705a2501588815a13c052923",[2539]="8db80a357f1bc6d644000a8fb5575354",[2540]="02ef5f92ee74a1edeeb8ea2cb3e27edb",[2541]="b79c5f3c30aca230d5656dc59f5d9d49",[2542]="fd986415b953081c041bc30b445b0c0b",[2543]="2ad9473f4ab59121d3e5a45e77a65f65",[2544]="de4df323137318fb23a464750e73893e",[2545]="aba54fe6b2c8a5607ce721de677064a3",[2546]="28a04977f82547c0085a7c1fb1230e1b",[2611]="d868aaca8db0c70273d6b18fdea305e1",[2612]="92fbf086d69acf259de784466070e309",[2613]="309a15137f89bd14093172ba080b242c",[2614]="147e4e8af77749e50f574d0683b1b181",[2615]="4d49a0e4821822af75227ef96c39ff91",[2616]="dce75ba13c64b46e4855dd44a7e934d4",[2624]="a6e3be94a21213005c1d142fa12032e4",[2625]="ac5a53ebd2d000e1d92c93f811a3c461",[2626]="992cd832b427183fe10f3e9babb9b963",[2627]="d6186661187a9cabc519ae8801f68168",[2628]="d9b889ecead579e2feccdb8bef4937a8",[2629]="5ebae35dbe84de435c4909bc611adb6e",[2630]="5ebae35dbe84de435c4909bc611adb6e",[2631]="7620ad3585ddb74d36b7c521b122a079",[2632]="637112a4ab9f15b4d8c4d2b982c4eb15",[2633]="9e49111a43ba3cf0836dd2b8ddb4e943",[2634]="88658baece8cb5ace94bc132c5c434d7",[2635]="ccc626a30c2c5eb54c8575062b695d21",[2636]="b85a227344771d4483059438896f6836",[2637]="4fb3e7144e28dce79937c42d469db689",[2638]="aee2b8467ecac240e7b561d77e965c88",[2639]="15ff99f223e3047b45630024e64ac390",[2640]="385a73ac7d827de257a9334a9f7ccafb",[2641]="1587b8eb65bd5ddd29a8a24735b33b15",[2642]="401d475d0975e5fcc5d0249ace4c8451",[2643]="08b9f07887812c4515af337d55b3ca0d",[2644]="f79ef292eb938f8defdaa124aa13913c",[2645]="77aa4d71850516ed41475f679f6a3c34",[2646]="62a38628cc174744d9ff1a3f31830d13",[2647]="507fe1ed384fce5ad0df8c2d9e8f6d5a",[2648]="db32642c74224a3a704ae0e4f63a4331",[2649]="fa50d6a2c51d24a32d2fa3821b97a561",[2650]="630619b4b2a4c485deebc5827985c7b8",[2651]="ffaf6e99cc07bf5e4dd492f98834d3aa",[2709]="e59793194070fab402c59324710990b8",[2710]="032755eaa872e1f25aac5a82d417bafa",[2711]="9bc19b25edc52f6af3f83896d1198822",[2712]="b4f2e9e0913241b1931105fe615e8810",[2713]="1e2bbe39b6865d1ea8de9d9897635b7c",[2714]="243ac0aa69b6d4a723eaa33ee3ddff38",[2715]="d9f97f65d4d48cdbf0e00459b8786bcc",[2716]="98fca8378975e724a40bee84084e2460",[2717]="5ebae35dbe84de435c4909bc611adb6e",[2718]="5ebae35dbe84de435c4909bc611adb6e",[2719]="5ebae35dbe84de435c4909bc611adb6e",[2720]="19d2d86ca2c044dc82a23a4fda0ee3ea",[2721]="fba9cee1f4d5127a99db82f60cc8567d",[2722]="e4eaa805d9a61487ad8d29afc98a3089",[2723]="bff05691c732887bc46d596220176d86",[2724]="71dd169248e2a286a09648e2b6275853",[2725]="38223aff5b5f7c5a991ebaf8cfc0f41c",[2726]="428f8ac5c6efe0c950b414945f16030e",[2727]="4447c00d9a02d82e561462ae8b271498",[2728]="41df5edf0c3aa3e8358528232f5e3251",[2729]="cb13681ab7fab15323358ab51fd10bcb",[2730]="f693c69906de373572feacad49919b05",[2731]="6171273e96549481e2afed9bc4cbe659",[2732]="8af5de8de9e2d0359bc6e4e40b37c22e",[2733]="1638b9dc38ea438a61da8507d458b8e1",[2734]="5fd3545803ef8874bdff87812e35dc5b",[2735]="60724c016fb4b84a2cf30cf32f441a35",[2736]="6d04cdafb251d9563da78600f88d40d7",[2737]="80a954203c80766d5bfc76314678f4ee",[2738]="3b6336d9673e9f11df80ae3c381b33ea",[2739]="6597769f04fc51a373aec994d5e431f0",[2740]="d6f5f781581ba0e17bb6c2edb7ed5e6e",[2741]="a42d6f3f5e1adca8fa464f2ddbfd44d7",[2742]="78d6f9f973a1ba75d374b19926ea4f26",[2743]="2bc65ef8b1b1da3c29e894d64d9c2082",[2744]="23418276e53134b7b2b968b040825648",[2745]="c1563e20b84a0e554c753de1a162b14e",[2746]="43977decf05f0ad3b7ade4ec2bae2abb",[2747]="9a41e641f665ee387854915748ce1c51",[2748]="2b078a3cfaea8d8e9c8ddf2d7329619e",[2749]="632b6810f11ca594217bd7ebae2a2fdf",[2750]="994a0bb0695abe553f740258af13171a",[2751]="510dbf180cb9d8a5cd94d66341addcbd",[2752]="dc5113139e8be97596bb96b5762c42b6",[2809]="ee7146033c520bad1bbecf2d64a31914",[2810]="eaab0c0f75709da13ce91facbf0036e1",[2811]="448ee971beef667f9b5297c1b956f940",[2812]="1dee18085b63c8478f3ec2803f7aff08",[2813]="11d2bd493ca96dcc9434c4ee316218ee",[2814]="2147ebae8689a25dede63b900d4df409",[2815]="53b30c5ddd41e85dc977f15e93d9ebf6",[2816]="458bb584d7a9544c4ef317079c2e0f19",[2817]="5ebae35dbe84de435c4909bc611adb6e",[2818]="5ebae35dbe84de435c4909bc611adb6e",[2819]="f68b9fa65c882b0165d05f172cacec28",[2820]="8b4036a935790f687f0bcd502af7425d",[2821]="265e59cdaa569942ac0d5fbb6341eb7a",[2822]="dd2924f6f931887218780f942e4dc1fc",[2823]="1525a79d0207e58d0c82f4ef8ded4482",[2824]="12faeedea066be9b0020d731b691ac00",[2825]="9efcfea0e077ba7fb52882780ee96680",[2826]="f6996aa92e3a48abe044f2fef4a0cc37",[2827]="9ff3715d5436495f99daf4f63b079021",[2828]="a03c3a1b8f7c18443b23a9ade95fa2e8",[2829]="56e5dbbe88bca4eead5bc356bbfb81af",[2830]="083e753102b6646355907d705ef2007d",[2831]="60d6eaf8257a5ee20e2b0fe519bed28b",[2832]="225707d166212d82f0ec6c5cd6427aab",[2833]="cef491829ca9821bd3e39dd7a17e6d4e",[2834]="feae896cba4b55fef49b416339ec4844",[2835]="5d1e413cd741028285067812e0025e5a",[2836]="1665a8a16a50f9ff95c83e4b703f6fb4",[2837]="6376b8fd8f93ac9d7e24bb2dbde135fa",[2838]="56112e5330d98498b0edb7c3349bc75c",[2839]="44a5da36f9bc3c2c81747ca9b27992e0",[2840]="28624fd8a2df2d58c67b8eac346ed5e6",[2841]="96d2adf61613d29dbbba8a279862544a",[2842]="11a83e74258a6826822de653c6c359de",[2843]="758972c91230bb2f0b8cc0ba55316572",[2844]="9cda25c87ce3fd1514e99693458ce618",[2845]="2c22593a949b694e16135e787de53805",[2846]="8bc3961a15c3349d55d06dc15450f012",[2847]="88dd5227c63620d4c701823e1eee04c8",[2848]="e944506992bcf63404cc2864e51f0b93",[2849]="5efb4682d2043beb6b9032d5252ab2d7",[2850]="f8b8a5b65bf41d4736f0aa030005f215",[2851]="2d83bb43750ba817912b28300e1ec3fa",[2852]="203cafbb079ab28aa4fc415edf6855df",[2909]="76624dc124346796995607ce167ac457",[2910]="47d764ec4ed41cad39128a9c1b88f79f",[2911]="3a6aa81b3a6ec1f5c7864e35aa436735",[2912]="598def87ba8fe5b420c4008dad7307c1",[2913]="f63fbc31068a93426e4b30b1fe2e9364",[2914]="6114a4b15a3f922d3d8292a959f0fd98",[2915]="4a51d875ff16632ba308235c5661b27a",[2916]="183e9a1cfc1e2c2684056c85dc45ac4e",[2917]="386b27113824e2b7b065a742788493cd",[2918]="a5c45cafb982940ec421873adba9deee",[2919]="21154136d60430266c8ca6b998c5c766",[2920]="5fbd7e3c1f333a1fa2ffd758495d8c0a",[2921]="3fb02405f1e12d1459085b9662d8a8b6",[2922]="285983cf99f2a134e8fbb1a2f5503db9",[2923]="bc10de41480cd308c76b7da7f7372b37",[2924]="8257c327a3c02349f7d71b370550c74b",[2925]="6ed71585b2b27d9e575642a09183b594",[2926]="b1dd7eb75828bf2e0c1ed5aa9570538f",[2927]="e9e0623cca1650d2a755c26361baf6ae",[2928]="88eb104dcbaaa29a950b871f14707ddb",[2929]="e7f51011e70629ef18c04ab1339aa70b",[2930]="903c1e77bf674541034858d877a6d3e6",[2931]="d7b4304e4b5b49fe671ca5261f937f10",[2932]="2bf312eeec9db01d776ac9a676afd4bf",[2933]="6d054679041934d6473bbfaef67ca792",[2934]="464f809780da79090576d92db4c53a67",[2935]="9fedaf8fa7bf94bf14b2322b606d739e",[2936]="5ba8ee72db297c4fbcf1d949ce7880a5",[2937]="e143e4cb8e9d56c809b072e3cabd13cc",[2938]="461b3eec6cf9654c6fa0f449b5548ea1",[2939]="9f881802995594bb7114fe3e3268111f",[2940]="00f84f572f1d536ab102e7cfa310f57b",[2941]="83a7fa9242a98ea405ec762128be64c7",[2942]="235f71ccf0267e96618b8656eacfe851",[2943]="800d7ea9713ad68c4a2ebbc044a3145f",[2944]="3424e1b6271c360a6770d57915b10e2d",[2945]="56f2e496c42e7c1009071cf3a67b1ca8",[2946]="fcb3a76a55e9f17b330f3311ef8e3226",[2947]="20de8534e8f46774760b11517ba6e185",[2948]="92edeb8bd9b208f8ccf8fffb5dc2e27b",[2949]="dc42b60a7de77bd5461ea36d71510cdc",[2950]="29e0decaa98d4cee97d65c372b7b37a7",[2951]="73f8b3856c40271dcbe104c14aa920e8",[2952]="cc526ccc048ffbd247932477837d5724",[3009]="dd9757f014b440a74d71e2c49cc9291b",[3010]="7ef283148acfaeb03395890475e5eed6",[3011]="48c026298471b463a888b0c703b1333f",[3012]="95934607f936cb283838d570ed925cf0",[3013]="64c12586c39abaf5ff479617e526262b",[3014]="e1729bf3687c847b2fb11649bef25073",[3015]="609de54c79516b1ec48bd9d93b7f288a",[3016]="0283c69298ec124f5dc87c29809bf5c8",[3017]="69b282587dba238e77bb175a0becdf4d",[3018]="b97e280fa0cad5a1e95cb524509400b1",[3019]="9202bef051beedbd120f9edaf48c386c",[3020]="1f8fe1e932f4cc1dcbe74cee4728db19",[3021]="06e9dbcbc4dc3d3c9fa736000b1f1d33",[3022]="fe1c4fdf1280faf7bc21c6e5f04f9d42",[3023]="4a37085cb28f531cfed0689346cbfbd1",[3024]="99aeea9a7c895cb6e295ce63c6cc9ea9",[3025]="6fde3b8c5816fc404246e46bd6b17cf5",[3026]="10bae466cc1fc11729f98a8165725746",[3027]="4ae4daff9b2945bdc47a891d6c13ba00",[3028]="89c2fb7dcb7970d998c91611f4aa293b",[3029]="bd86726de1611feb76347e65ad1b3d10",[3030]="18aff791643cfa5517dcf8526b0fa58f",[3031]="0095b8dda5f2bd3a697f1bedddf68104",[3032]="f5cd0fa42fa49362235ff58d5226d68f",[3033]="8a13c1a0d953856e5c90cdca61e4b7f4",[3034]="a4b931a4d484a226befa63e434f40dee",[3035]="7e72312be0d2097a44230f5988b4a503",[3036]="3e81aa13aa80ef104059bbd85356691e",[3037]="f714cc5337d9802a1c4d7738abb3b337",[3038]="b33b3b74f2ab0952c85d870073ab568a",[3039]="9c9c6cb19c2cdf011cf05da402467e74",[3040]="668b9d90ecf7760da965de1f8947072e",[3041]="02aea8ecdeb22e80661ba6a2aa51d10e",[3042]="20ece2d3908917d9fc2f4d38cbccc8ef",[3043]="43dfa5ee3db131a97536e981eaea62af",[3044]="2fe032f9ea36a056f8e24b138e9f751f",[3045]="f67481e846500e511a7057f630370645",[3046]="09fe9eb7e7f0a4bb98f0d365338f2a8a",[3047]="60f673548a056ee09b29d1ea36c02729",[3048]="0e4e768cab1ab579bbf1b3fd9b58c05d",[3049]="f198fc5a560f11ea4b1759003584d7c9",[3050]="54344d7109165ec04edbf710b5bbc7e3",[3051]="8d7ed8ec5cf2104a44b05d7146c2e3b1",[3052]="97a9b28c303df6e4127a5da912c6c8b0",[3109]="707039e7d02f4c5c6003a773ba89ae4b",[3110]="7df5172ce4b4c7ad0543e1e0e59c5e2b",[3111]="13b6ed04ed5587145001fe9658da961c",[3112]="19bd2ad825a43313ea27f0e7db8e5077",[3113]="01c72946f072121d74d2ef940e0af225",[3114]="a2a0d5f4606ff09e277cbee582450f8f",[3115]="ead8c9ae5c3f1e7b6a31c3432bde7227",[3116]="640f237ace4e2e8f4dcf09fd2e76ed04",[3117]="894185b710864f52772b34d59e25dd14",[3118]="2c339c0b108e1d9b081a245663219d26",[3119]="e6c241922c6f5ed2ed1a1d5faaa95466",[3120]="c81b41ee3b7b9cd4c414cc456dd44c26",[3121]="1f94009449cdf41fe680bdd01090957d",[3122]="76b0793a721b8ea3de0096c6b19fcd81",[3123]="15bd95a59787a255afbb7e67d3d4cdad",[3124]="bb4c04c7a31d49e9be972637e4639077",[3125]="8dbd87f8e709c2e69fd876738b3063ca",[3126]="7e058d93cc6a9be5be44711998f61a07",[3127]="450b7c67479a00bd7c3b76ce6d258a91",[3128]="ceaef7f3bb0995bfb24b9a15dcd48568",[3129]="53691a946f3e34c7132e1d3746db612f",[3130]="b88234bdcfc69a91f1e3f6748241ba9d",[3131]="55e6d8d83c88cf72163f5b1e704d9666",[3132]="7f3acbaa6e43cd52863d8aa19ee5bad9",[3133]="798987c0ecf45ed4a60d2dde9ce3c159",[3134]="3c356ba02792f9ce821e452094ba36c8",[3135]="62d6660cd33bd2625ec22bfdd4cd897a",[3136]="e9cec317f97691321348d597ce30b9f7",[3137]="2da7e5f453b41bfd39b9e7b967711fff",[3138]="6e753d059623715b7afd3fafadb40b2e",[3139]="6e0177e0a7e7968bf97af4c94587d1aa",[3140]="a1860c21b0f0535bb0d0325f9d7b73ee",[3141]="a4c33a1e91023fe18945ea162acce003",[3142]="fb9b9dc36be004fe0ca2e2b181c33828",[3143]="2b793e304498dd0c7db41223b49ddbef",[3144]="7b11ea37e9c8bca5e92d9cc83779fcf3",[3145]="7099f902a75e393a8899cb15967be363",[3146]="1d3f3026c20b98b10747a0e2dca07de8",[3147]="72865936371536dfba87e203ef308544",[3148]="8113114ea64ba173b527c20f8ae24ef9",[3149]="f92f1c4e9d80ae8d997eee89946cd22a",[3150]="46b2305c56da341f875b3668ad966e0e",[3151]="ee17f71dd88de13cb02b129abcfa721f",[3152]="c59294eb43b3fd1b9e805d1ae7dc7906",[3210]="42aea9bb9bcfb1becc2e3284d13649f1",[3211]="bd9212462994628ed407593f07c5d108",[3212]="7e79ee03f614a3816e59fa8c5a127645",[3213]="1a375ff494aba4a870045cc38a98ee79",[3214]="9fec8f5145c74b65a066ae774b2ebdd8",[3215]="bba354ca2dec5ad9aaf3beb0fb8f42c2",[3216]="46d4c6851cfd64efcf14e0a1d669450f",[3217]="5a7b71dd0dcafb1790e61f9feb858e95",[3218]="5ec3107ce40d9396c32901478f64eb9a",[3219]="375aacb5e0cff862cc0dced81f05ebc9",[3220]="91e26520b136799169f4c5d46eedf8f2",[3221]="758cea4937fe78452c4183fa42618575",[3222]="d370899a95fcc58cc0cd4444e7d21fde",[3223]="fca8edd697276f54808f03c606dc18b2",[3224]="15b438785de6fd991445aa5c25bf2d20",[3225]="501a3b6227a5803b4596921e45844441",[3226]="e1ed914b0ecde660411816b31f6f2dab",[3227]="31331fa2715ae43d240849e15e0b2b86",[3228]="bd693ecfc34ac9b976e266aa63bc7963",[3229]="e4b5533ff20ea1c30aa7853e89c0d92e",[3230]="3f8551296124dd6e3ca8635ece7010ab",[3231]="d04a335d6ea13c4dbeba29ad6bc5c58d",[3232]="e2d268fd9afccc5ed878fabac3ebc2f2",[3233]="c8330e790b0ad217ec7e4a9c22c38e9f",[3234]="803fe254fe15420d2349068338c5ac25",[3235]="055cacf87d82c635f0bf8e90ba2b3d16",[3236]="be8e7ee06ede831212e332853e0ef5f5",[3237]="66a9707c4cb15b4c88cd88632a1fc8e0",[3238]="edc7aa2598f0f920535df0b752312d17",[3239]="076f31ec6359b27227ad54755b656cbd",[3240]="6018aedc58020a0eaa7ebb94df49c334",[3241]="8568fb7bf3c17e5263878aafb571a0c3",[3242]="190c15f6dd7b4b1c88bd7af39f071297",[3243]="86e6f137c59bf96a0c1b4527be08c745",[3244]="ea1013b7f5f7fb99606f5efb6d74d550",[3245]="dc098f8399ed231edf628282fb68c885",[3246]="4f1ccf5ce7d3645c23851e4dafa327f4",[3247]="d8ba0f9740870d3e54682dde1cb12163",[3248]="507d416760f6d168b898e8ec9635882b",[3249]="f560973996a76e06dd8dd100aa6e4c42",[3250]="62104a9ce514f787dac29dd2edf2eb00",[3251]="e36438c012d2058488a85787595f596f",[3311]="05de5fd2d0b86818cc5a013b776dc13a",[3312]="f7a679cca949ad6b1fbfaa8eeb6884c5",[3313]="a96c35bedbf813bd298073267fd107ab",[3314]="3c0721f22b1e5237ac1e3e48dff42d50",[3315]="20e5845e88b30accfce8945a81d60136",[3316]="6f70fd2a8624d4a5fc11ae76981576bb",[3317]="539d48f915b233ff331607d11e92c722",[3318]="c7991424ee6eee975923ada9adcdf605",[3319]="6032ad736a1c48935fba161237ee09f2",[3320]="1d31d4a6eb3c120918a029523bc34767",[3321]="48437693891a125ebcdc583c101bbd36",[3322]="cf0dee5a77d1e946a84b32d0b8e667f2",[3323]="0e6fc699e0fc37e6af46bcd3be364729",[3324]="74db1e085cc2c2bc5810a4c50367c2f0",[3325]="7c6e5f8655c7343fc539d43722a4abe5",[3326]="6cfb18d0398ecfbca38c9878e42eaf90",[3327]="ccf76bbebe76f647657f7131365ec139",[3328]="fb248afa376fdd75875738dbd88396c7",[3329]="ab5c845148a4cfb7bdc1f38233a62470",[3330]="4e4bd829c0808468a3a59aeff9cdd74d",[3331]="ef665c59fa8cb1299e2ae32d46216a8a",[3332]="23d68072f5a9f0208961c05f352714b3",[3333]="50eee55872e9ac7f00974f61f86a9e6e",[3334]="466bf9a7bc04ecdb2cb81f508e24473a",[3335]="3e719faade0949ade0dba69882c6c061",[3336]="aaea1b97aa12bfba32091402ff6b30cc",[3337]="cb76de51b30fd13e5db53060526124da",[3338]="c3548b767afa11376c9b42dff0494648",[3339]="68d977bce88a344f29fba0ca5e7eb499",[3340]="31b08ca5b1be79cf01a1f23e64265301",[3341]="a7903d781424b4115d70517d76c8b062",[3342]="41e095f42da294800e6216039ef25823",[3343]="0402895e1f04cac5b1f23a6f89c3b608",[3344]="6d8cf07c890fed3332627f09e32b2bf8",[3345]="c9e1251463a71809bbfb7a41dec677f2",[3346]="73fbb66965a22054aad5ff89886e546c",[3347]="fc8677631c3afb49befb7d7530c73a19",[3348]="c95c7238432a055d0577da62e2ffca08",[3349]="190c548e63e11a71ac9719f0d9322f9b",[3350]="5ebae35dbe84de435c4909bc611adb6e",[3351]="5ebae35dbe84de435c4909bc611adb6e",[3415]="02268241cf98535d687ff9e02b359336",[3416]="282be326229eaa0f632372f1058868ac",[3417]="520b49f5a0e55a2d7230173d833a0a9c",[3418]="1d16d3d30098173b6f9e9c67c8e078a4",[3419]="dbe688466e212059ac6c667cbb408fb1",[3420]="a1778344d72a0b1d5969fdd13cf745d1",[3421]="711b0978b4640ebbbfde7c3c4817c75f",[3422]="82d9fe0505c17a86033eda12507f3735",[3423]="7ab9de3b6d9b2e119a0ea711bc3e8160",[3424]="5a3e59c873dbd5db987c15abda479d89",[3425]="9921baadf1b2ea7596c2f608becad0ed",[3426]="7fb5f6014fd9f9f9c915b3c33cb51de7",[3427]="a64998cf424077b15784a52317bc3b0a",[3428]="a0996093bb44513251fc12ed6282b88e",[3429]="c1839559099e7bae1535ff29b6cce1a9",[3430]="6a64d092bea8f5ca3d7a86465272dde0",[3431]="30d9ebd22141f9c54394c381f1622e31",[3432]="ae7681c91e60f97590f32847a71b87fe",[3433]="1d975dd8aff0e34a572432738b9ef463",[3434]="8f69e4bd6bf7b00d3795b15ccc33fcd3",[3435]="3f4d70f723927f627a7c613db6046dde",[3436]="46a5faa142bdb33113d052fc557f6d25",[3437]="f0de87125c156150aa047049166cc350",[3438]="6b3f529197e0d09854004315be4318d4",[3439]="c7377c9759f2eac14ec7d816958a1018",[3440]="c61e4b621bac96862dfb9d8fe0737a9a",[3441]="19c968eb768420fb47ec9d347dfebff8",[3442]="3df55112aea4a86d57b7237f1335bd5d",[3443]="ee6966ef56d2fdf5cef5471d2ee5cefb",[3444]="1d42a6b6f7f2fe800280c0b9afc2d0be",[3445]="223581f57c65a374343d6a6cd4d160d4",[3446]="9eeaa85b0c2cccd9eab2bc0d0fe47d5c",[3447]="643e9a60951d206c9f5614e04941370c",[3448]="685e6633d94620acf5605ebaaa939101",[3449]="91a701c1ac2500cd4cbb5be1efa73d38",[3450]="5ebae35dbe84de435c4909bc611adb6e",[3451]="5ebae35dbe84de435c4909bc611adb6e",[3515]="35b437e0f833701e5147e2bd577d6417",[3516]="d82cf8274020167fbaa64a0a6413a14a",[3517]="01b807bb10dd30da003f5a116933f934",[3518]="b306c84c3130ad332220e182554f98d1",[3519]="2c69ec9a6319edafcc4e0abb12edc8d2",[3520]="4f45929a74869916c6dfb4fe0bec8c20",[3521]="014bf7ccc73b99c7ebe412c21449d987",[3522]="fba2569db20aca23bebe2689b2d8db63",[3523]="5c37353291d2afbd84daca4621b22148",[3524]="e27054d9d1ba7208e1dc79e050e4cf4c",[3525]="6b528a7ceb45f0a7f2c5609caeaa47c5",[3526]="0756183239b39317f9e02e2c10d133f1",[3527]="acab4bfc6149083b5ce3afb956ec00b1",[3528]="ab8ea0d449cb2953c3c074e257ade3f5",[3529]="18b5789cf7bbc4fb557ab323506918c1",[3530]="1ca54b2cbd615b96077c1ef824ba395d",[3531]="e6b9e295ce8c563b76bb74f9350c85f0",[3532]="b54998b6ec7a21333e02f2f1f1cd77f9",[3533]="7272c5d1e4e4afe5754b32d5733d46eb",[3534]="a0eb76970c827f1e5709759b781eafdd",[3535]="44f364818d58e510d28e231682da060f",[3536]="d9c6170a19201d1faf5a07cb5ae07b6e",[3537]="22427ad40e1ec54a17785868fb6143b1",[3538]="a2b34d566a6e31d8247485012f2cb02f",[3539]="053bf4af471b95861d25bcd0dab6efa7",[3540]="be5fdd47915d535c1a0ff4f6679c068f",[3541]="de568740285919deb973f1200d9b8163",[3542]="bad7dcc58a7932501c50d237bc764ccf",[3543]="90edcd40dcaf5310871a6e6f4d7caf10",[3544]="3727280169fe717a157b97ef5eaae237",[3545]="afe54944162c26b972bb0724534da300",[3546]="ac7cbc16c8aaf57b9004fb2c6b35b5c2",[3547]="b303d0dafffa4a68d591b5785266bbd1",[3548]="f7b4bcaacdcbb6073598bcf4b47247b5",[3549]="4907cd10d1f63ee7166c1c1e857d7501",[3550]="b71fb1634336e0a4594bbd591953d0d8",[3551]="00061f89d7fb8e6ef7e9e195e5a20261",[3615]="8f34cfd0bc4d6237cfca77d4456bd4c8",[3616]="26252457de6df71ee23538f4d1dada41",[3617]="46739b692b72998647c2dfd5edef24bd",[3618]="cad0d039dc75f5415bec785cd8ea2d32",[3619]="33ce577b35e4ba6ad2facc994aa54629",[3620]="d093c81bbf96acffa8ea3d76a9f8757a",[3621]="b7e4401759efb66fff09b4611b09eba1",[3622]="1d4ce3184f174cb8fe02feed1b739878",[3623]="d6d1cbd7c7f880a90793520bc72107dd",[3624]="f69ae63f9ba07cc5ae51d8f1ec5a2cfc",[3625]="d437880e079a03c80d75316ad7ef8b18",[3626]="95b5bbb088f4e434d50cce80f168a128",[3627]="387767657f286bd6a19080d57047ff04",[3628]="b418885cfe5198a94d39dab351b92033",[3629]="56bb2ff152e4f5af23e46669617d04b9",[3630]="fad8d16e2e3dfd3b5125b36616f6a84e",[3631]="08cc75beac73cd10f8eae7017471b971",[3632]="f85f454c83c21c8511406d6621ec7ca3",[3633]="60b5b276170b3aa83b099ab314fc9991",[3634]="4b8197181b2bf043372ad806f26de58c",[3635]="543ddc842bfbfd1709c384512d81ce84",[3636]="ff295f3be95325bd8943c978665921f7",[3637]="3d1716f1ec4299d06d501b5352c8b072",[3638]="596cf97dcc421e3cc00f12a4711e8808",[3639]="0685bcab0bb762e413e779c664d02e9e",[3640]="654203019cb64e274d6f43f0ffdfd665",[3641]="126cc33196a08d393081fd1c6ceb8f07",[3642]="40ac0b0d871da153564537c1edf3d51c",[3643]="528924c66e482b317625940c266ce59e",[3644]="693e66810dc08e860be128426ef20a8d",[3645]="4c9100254c80a93bee583a325b064a9a",[3646]="7553356384fb68ef5a74e25888bc7fa8",[3647]="a6c861e1f74ed5d329528f449796fbb4",[3648]="3e04e376a2c618dad0e9e73bdc726089",[3649]="176174c509b3ea28d3f284faa44b2aee",[3650]="7414e6f887323b76ce47622d38434e15",[3651]="de4a2f0fc8dc6672bbd6a212c5aa3e58",[3714]="7edca871f5a8204dd855246d917684b3",[3715]="5fd86f676927687e627ddb6c4b359b26",[3716]="c6cf14ab9cb77f4ec31439d9302d97ae",[3717]="24349b0ac42f6f55b1bbce692016f093",[3718]="b5b3c53b3069ebe09c5f8cd2a90b4f37",[3719]="cb33291406e0bfd91497cd33eef074d6",[3720]="06c0d699f91a5f4a1a06003325af9689",[3721]="6d602176f59f830d1262606e6092e25f",[3722]="1c98b6c3e39a2afd0974af941eac291f",[3723]="7567b214bd05a93d40c3a1739f8a0727",[3724]="31dadb5876ae7cd7ecefdb107be157d1",[3725]="5a9fb740900e28a4a497dee4728d671b",[3726]="36f130ebf43099d8dd0eb0f5e5ce2e4b",[3727]="c5cea9079358d87c625ad74f96ba5daf",[3728]="13db9f2870e6aff87ceae46aa7aa89b4",[3729]="fcd12b38b984e63be97d1362aab4954c",[3730]="22ed7ad439900decf76cc680a6dd617f",[3731]="01f37535d62da225513a7959665a546b",[3732]="d7ddde1916795bf4bed477e9dd7c7e93",[3733]="cb9a775204b1ba124bde3019fe805b10",[3734]="e3f69c45341e887abd2777d5bcb5303a",[3735]="13f4726715f52a566cbaad2f59a8cc55",[3736]="9858549fb22241861e0d6134287632bf",[3737]="fcf12f89d8957df5f3593343c49c7ac8",[3738]="0a8886d9436afc4ca0e49a4ffe0804e4",[3739]="4ff38532b7ceed1a54e9c6619380b9c0",[3740]="dc03256f3397ed0cdfd85a897278a511",[3741]="f5c59dfcf79f6da8722a3c0e0c5bdd30",[3742]="e623113b39a21ff49fc5a5206633625e",[3743]="36ee4c37121f82d58cca637b5b6d442b",[3744]="d40af88df23f873e6acd303571f2fda0",[3745]="540f0cd6e87a391a88f2baec14419568",[3746]="2e45600e78d38b6dee6ac09ba6c5ad19",[3747]="ad082c8a47478002651233e93db8f67a",[3748]="6e84779212941747d382c55d5d3dee3b",[3749]="f89efc650aa9a20cd12cea0747b33ab6",[3750]="15123c68445a08370d457ba2575d0062",[3751]="dab91c3dae5a723436bbf2ef521a6063",[3814]="a30e07c23c34a3cb17711b618862bc70",[3815]="5c4bcf9325fa6ec379cfcd43690443be",[3816]="93e024b6159f83bde7f5ec88f4a84506",[3817]="c0f808b5d6605a77e2356d9da8f48d7d",[3818]="46a94127666e036787638863bb83e601",[3819]="4c1c03c51ec0d5b632aa200be794394d",[3820]="e4860e74c8af088d056b01548b8eba78",[3821]="7e049ff28d2f13e4c583e4a5f0eaa868",[3822]="055865ed8aba3fad49b930b66b3bcfe1",[3823]="ed0b5a2f02501c131b40fb030d44a7bb",[3824]="e60b0b93fa43beebecb66658b8609790",[3825]="6a74a9e221b3ddf81ad011cf79b9ac37",[3826]="17690c6901d2944178bc839faa720d99",[3827]="66088d7f7e14d899a0f194c67e24f327",[3828]="f883f19bb21631444586f073a53aef3d",[3829]="d07d597bb140e71461de2cbcd140b431",[3830]="1fac85a81639b7ddb58793ab826967cc",[3831]="ff79b1129a31870e427440276fc0ca74",[3832]="220ea9a78f2cf537e0374bdf0bcf7aeb",[3833]="077093a201ce324c4fb0d4e516caaf9b",[3834]="46e61a21dcf05440bad61305fcd32294",[3835]="82c214b1c95ecdd4fd756b7364c80dbf",[3836]="e74e436cfdae616d02b29dc8f5333e20",[3837]="297e5a16b6076a92e9cd2e8c0ff0c718",[3838]="607f275394c692ec1b33ee914c710196",[3839]="b092adbacd2e1fcd608346f962fb5a42",[3840]="0fa82916be636de3c5d3e2ae63c581c3",[3841]="8b46a5aa7e9dba96d9feab2e81257b8f",[3842]="4b37da9941f418abb4fc11bd57693b08",[3843]="bf84931cefb1b48114c691cfac5c48d1",[3844]="1eadb0d63b9bdc34d93a88ec773959a4",[3845]="b04419884011eb47758766580d54b7a6",[3846]="36df66c67dfd0508d40d2223c838839d",[3847]="6a7c8f05e193ead80536c708fca0f540",[3848]="55b039cf5268169c58a22c7a8f16106e",[3849]="cfa252f4db12a47489014b489f7c8e6b",[3850]="025235cd7999964706d2a4dea5ba4ef5",[3851]="ccae0e0b01b67ac9b57eb68d84a6b744",[3914]="5919e1ba2dd220c19da892e526e84efb",[3915]="b02e96593b39d97649f363aeb1ba6b6f",[3916]="7044943423bd14e0d6cf811651cd0da9",[3917]="4a9d8feb8ecf535951a55e3c71749d1e",[3918]="d367b5effc314e764ab89f10e98f152d",[3919]="ab4e0c06709e9f158a306a175f6cef23",[3920]="31190c0d63cd9fae982e1854ca045492",[3921]="d8500539755ce2f68c301837035c56f8",[3922]="4091e464355e5c3e8e704ba3b67d9ccb",[3923]="ea8762774c3baa150be66b97530ddcd0",[3924]="4fcb8437689427e998f68fd3b4cad2ab",[3925]="7bb8a98a17aa650cc41da741ee1f5131",[3926]="f7ae8d0fafbb38080ab3a45e5120d992",[3927]="3f24d6842e91fd80acd018da6ca0bf9d",[3928]="6ef3b0bb9a5b9b8d5ad8d09d21388116",[3929]="a11408b6bac0c0e9af7809758d2040f8",[3930]="031b944915334f1068adaf364246c237",[3931]="a01ef3adc118ff249ebb43bbff26124d",[3932]="b519ae3bc2d1633fd4c60c5b13dd98a7",[3933]="9ff7ed3dbed15dc58bd1f34102d7b1c4",[3934]="5dbd3b30c417b1bd707db90742043941",[3935]="35d266879f699ff3a29faecf00daffb1",[3936]="dd727a4ec25cc5936d0e793c9dda3bbb",[3937]="9a25a0fd76fc3072a74b0cb16eb3beaf",[3938]="a41c54797531e462f3605ee5b3b99d4c",[3939]="bcf753c9c5051c4a7367d3320297d948",[3940]="0b2519d805ca72cdcc1b6c127b62b937",[3941]="12a21c5471b17840aa591a309ba091aa",[3942]="da22e9a7a4d144c6f7860d39dc10dc8b",[3943]="1e584ec9895aa03d9960dcd8929688a9",[3944]="637b4be76fd54c0a1d0436aa84ccee63",[3945]="db8bd9a2a550e53c4890f9d23ff157c6",[3946]="14142eaaf9c416d75dcb5f295adf01c8",[3947]="b17e9fc6ba9e5e1108b7b319f1b36269",[3948]="91c12e9034fa0acf23969e54a929cd06",[3949]="e80200a8eb7b71efec6544edcd04f3aa",[3950]="267802ed97e07b21a66d7902b86bae53",[3951]="86a6923868c11dbb8ea8241d27f6b557",[4014]="6e4882e5d8b7fca7005356585cfdce82",[4015]="6210af2a3726d7b0b61c921bdc6d6615",[4016]="d30288b476a631f5c4cb9dabf2bc6659",[4017]="530891ebf3055d35811790082fe72a32",[4018]="fb4307c34a8eecc2f652bb7b75969de1",[4019]="0506304e06deeda25f752487ae01a199",[4020]="8bfce36e58d7d0a8fffe5618266c99bd",[4021]="957fa5e821849b84e8199fc1a248bef9",[4022]="538c67401ff6b0567ddcc1b50b31109c",[4023]="b202a7cabde3886f782d4232d70bfb9c",[4024]="0a3c4c4f3eba9b3c77406e4e59a4a422",[4025]="e118cb534d521afff8730a0decbac159",[4026]="4711c0cb5776097fc419487be811ce55",[4027]="374109b9a54fc5d4097ecc6aabef7dfb",[4028]="cc707cef4cd6e9d8ada1e7a40e63f72f",[4029]="97d3bbc464589877d93aaf159234ba6a",[4030]="bec7d30e4c827b1ce59a963c5623c0b6",[4031]="49efee2a3a6984964c0cd924d941c7ff",[4032]="8b9300c95e81b86ab1a4fa93e679181a",[4033]="c407aee2486b348f13cf4d84c7654f98",[4034]="4731f79e2df293e670573179ebf1c834",[4035]="1ebf195dd0ff140e3d95468e51921f0c",[4036]="bf5b4b0180cf30a7298ef00cb35e879f",[4037]="f24339e6a5d8a6dc873581dc39f227fb",[4038]="5df72229075a0fe11b9f75bc6ecc9d19",[4039]="8ac1d4ec003ffc41eecac6703f622e91",[4040]="bbeb80a6cf79498e9579aa35f5fe37c5",[4041]="263e983b6c77ef2761ce43e7eb5a1c8b",[4042]="dc079eee5d288022c5ec71f5490ee5cb",[4043]="eb85130aac93245949a1aa296c36ca44",[4044]="ed8542e3d154a5cb38452a510e1367c5",[4045]="0b387bbf512374417e212b306d51fdae",[4046]="d1cad68f12084f8f9a4969aed2f93ecd",[4047]="969b1a523fed934346b3cf266d7f423b",[4048]="a07370dc921d8a04a35a41a6e1fc78c4",[4049]="971b636f29632b7456150778878abb62",[4050]="317c4636198556157c09837bc8801653",[4051]="efd83e912cfb7cd2f5206b5dba0886ba",[4115]="adde538556eb27f5f33beb8cf9bf3910",[4116]="12c054fc35542d390f1c05724117649f",[4117]="09c0396ac12c82fc049465494094b682",[4118]="4b9932a4d905f88b776de1a5a95efa2b",[4119]="6dd6f7738df43d0fe63b5f487e1cd6ff",[4120]="59e00bfc3db40eaef7bfd465932fbc65",[4121]="65fa8b689020d1cc7ce58343cc15b108",[4122]="54dcf3d8128faf490be49b37bb4188a3",[4123]="7ae32d1a2712d9168ea79cad5611fdeb",[4124]="5b74750d66ab4b7b8aa4e3625fdfd3db",[4125]="2173573e1ae73821b34d740d764751cf",[4126]="a1c495cf3c401eb0bbf9974f0b60f32f",[4127]="33995140485811ccbdaad883f8c08bdc",[4128]="5c766aa0b4bea65b47911deaa91a6fdc",[4129]="05564abc420638ae2bf122d77dff621f",[4130]="339d1cd1702ce625be48522726e4cc2a",[4131]="439126aed3e3fa7065e287995c1370d5",[4132]="b1daa2d361468d621f0a56e6ed4d07fb",[4133]="9e47c70d5fa86b5a54426ac29deee461",[4134]="a78595b5f062ed3f278fe4b7cf1ac3a3",[4135]="59f8407399745a20a18fb485b678bf6a",[4136]="4d39fd4f838818c910c65861a7ab7340",[4137]="cd8dfbda1ac6ea6033eb64e17c75bea7",[4138]="f8de7fbbe657bc69ebabb2cc8fcf0338",[4139]="e726c7bccbb59c77fa2f130c8fa31fa2",[4140]="0c874d63a61f983334e38ca6e0465138",[4141]="eec3af003b8b85f27b360b8be958c731",[4142]="2a28b33aaf234fbc8a84e6e7eaa7421d",[4143]="5d428aa425c5280463619fa5c399b1f4",[4144]="4ef009c63b1fe91d77d4b21e00e507c2",[4145]="69bb56bd0158736e684485bf29e40271",[4146]="58f8379d5afe6e6b8555c947b63d4c94",[4147]="58c9915f0e9fd66b54993f2c632764cb",[4148]="f05c431ff5abc89bf6d7cec2099b1524",[4149]="ac1b5f9de1c1aa0c9a09f95c40b8385c",[4150]="0da4701ebbba1aea1b3c8a15c315b957",[4151]="ee499c04fa74026e725b0b74e520304a",[4216]="463b08d8035a96fced2281048bb5c8bd",[4217]="00566d12ee25ee61acad9e4bba9ea779",[4218]="738f75516c8f1c426909c375ab8d57b7",[4219]="6c10753616c8c5cf21f8d6899d83f0d6",[4220]="f5396459fb6f2e6d0eb6d5047dee1b17",[4221]="d46876d470df7e4843623c5edc9edc51",[4222]="7cc2200175a65a1de5596fe0f42b6545",[4223]="aa833dedff6de32e653a937bed6969af",[4224]="b400ba9ef6c996d43d5811097746357c",[4225]="68af5625749dd505c764e205b624eee2",[4226]="0f886de08c2b57c070f34fd5ce6c7051",[4227]="accc3b5f89cc606855c853c460ab5efc",[4228]="d20fe8d8dbef9000ba62835801f165f5",[4229]="ee5b7423f7804d1f5098a603efe89c72",[4230]="989c82e3c36d34e2b4c21fd7a2c4b1d2",[4231]="51a9b5d3b904194d3850754265b7c809",[4232]="81a09e61f3212393e5b2b2951eb34e9e",[4233]="a7264d528a4bf2d2eabc5e0a24f56cea",[4234]="f685a86cf3b2742e3d3b150751fd83ed",[4235]="72df7fb2050ee161d5edc58754fbb10c",[4236]="e5d5dbdf55a5e186d08a1c0a87b89b12",[4237]="657e38ab5fce98e39e82d11b8e0629cb",[4238]="f47a9f1f76b6e79cfd477a2f26e584b0",[4239]="4ed966d779a28f8fd27e3368473f4f9a",[4240]="91bd8ab4af90d0f5bdd95f2634418aed",[4241]="650ab7e9012a4a2f0219b094de82cf81",[4242]="f27e8519d945f2a082aad17f4cfe39ea",[4243]="ae73993a6d728100df4ff571574d0a48",[4244]="3121f8e39256b14293db83f6ce108153",[4245]="0c6b012eb602f14a70ad6063406715f0",[4246]="86e5ec9d65a2c5479ebbc4a59cde58ec",[4247]="07e932ae033081d8d6a290451a265cfd",[4248]="74b6925097738a7ecf74ccce3b2a7ae4",[4249]="0017ac4e2b338e4bc365ad46c410adb9",[4250]="e5d4b08d5f0e5eb86efa9dacb03585ed",[4251]="b38749b68ad52c7a240b8f2d93a96943",[4316]="2e72f3cfbbd105722d911045d95c2b95",[4317]="6e296876517dd22f74845d7d7a5f561d",[4318]="0e12f08d416d8d2df990e01809d35e7f",[4319]="f2264c26946a4506dda4a732ce402ecc",[4320]="94d06b3541a929d7d4134c8a07548c7c",[4321]="a7ad1cc48a7ff064a63d698e6bd4f63b",[4322]="6f573dcdab9fbdc3f68d201b43959c97",[4323]="653e80f0f551f72d6702c332e18e9e40",[4324]="20403d43ced8905446def298e457000a",[4325]="6048bed3c57b7ba99c4394bd39eb4911",[4326]="1e6f3aa9e5552d13c6579774042dbd2b",[4327]="dc48b04aede165ef0851f3e14f4ca372",[4328]="31b095408e1bc88bb0fe423af4a4bb33",[4329]="2277c2c724eff5c9b3adeadce1ab887b",[4330]="badcbd50542d8999b7761e8aa68ecefd",[4331]="382451f0affdb0207f06da728a63a131",[4332]="e7b56ad3bf185b17437d14363830bb39",[4333]="2274eafcf025c333c5d62ceb7b7abf7b",[4334]="16884240419171ddb90c2868e90f7cbd",[4335]="c201d42e18a971f9ab0f8c53190afbfc",[4344]="e313422cfc3b43b7acc143a12075f0c7",[4345]="fd28bdb96eb06c8cd4c52b056cb82c49",[4346]="01daa4b22c36a5f976dc8037cabbc2a8",[4347]="d38b42dbff516743e5916254edf22e67",[4348]="0ab219164d0ed5bbc3c7eb1acf975e4c",[4349]="84d7363f8556f23d61458a6ee75b9227",[4421]="ee1151e57767342eec9fb1455a48a165",[4422]="37093001ebd457ae9eda314afa5fef86",[4423]="928f7f4640d938059e52084d9b29e4c5",[4424]="bedb68ed6e3f9bf852e071fd41dbf0f9",[4425]="1001ad2deb812532e032fbc5b985f1d5",[4426]="eb0c297acc1d469c140d8ddbf8d996f6",[4427]="c3be0f54066a7a48c94d2d9ec18be705",[4428]="551eb89a34eef00c0186653918f89581",[4429]="1910922ceb47356efe5cf21baf41df32",[4521]="d6113a597725b858304746d6740c402a",[4522]="98d2d791279612e1108d1d131ccab754",[4523]="6baa10f9571f4816ca0f45ece8657c8c",[4524]="a8a624c413a6afed525050828b8d4b75",[4525]="52968e2f08363a4eb86b5458003c0b7b",[4526]="ae6cabdb3079b0c8399e878fe9bbf87c",[4527]="9f9f7cbef5d84d0cdd9157c3e331e2ff",[4528]="b757eb3ce7dd57a86d4cb364c935445e",[4529]="9f2e2b77ffa64c0b12ae0126d3c5f09a",[4621]="0f0e18499603f758b9a43a3b9a064095",[4622]="fa62502b400c4f067209f00e0aa97f8d",[4623]="9a5b8720f7ce56d3601d3f870ff48fbc",[4624]="773864f49f6f035c57b23d33c4330d28",[4625]="11fa1b37a714d1dda9bdef50b977c029",[4626]="08405785c3e81e368fb4f07f488ed31f",[4627]="311ce4ef9e707d42ecf288f6a9d8ddec",[4628]="f62221faf1e962d549548879af06c3f8",[4629]="e14a9ad7e1299e8bf1615169dc6b234b",[4722]="d8d60e5e3819aec44acdd212b75d7401",[4723]="4979dc4c5b7a2d0f0379e894a1cc50f6",[4724]="0422b103d5c9e1e87f557e705316be8f",}
Map.EMB={[2627]="c4c47ec21414b59f78ee940a792a9354",[2628]="9d670fdaebcdc898aec8b933a8e35ef0",[2629]="6976787ea7cc59e1e568fd4b452aa758",[2630]="904841790074c157a2ffa06ede5bbc2c",[2631]="0bc1d304853cfe42de6650578bb1c483",[2632]="0364283f11cedcc004b591b3a72b9f81",[2633]="6618ed05b55f32d4d1ef0becef5da425",[2652]="3a914d120d63d93d990f65a47b1baa96",[2653]="20c92585de30b474c15fd987e589a1c1",[2654]="fed0bacbbb73893e5a05a770be7e2ee6",[2726]="73d4ae43da99b6af38716b23465aaa1f",[2727]="141e65a06d197a871a9b2b9ccb923078",[2728]="c58195ea0aee9ed0b9708ce68d11f27f",[2729]="7623f9a5922e93ffc3a48a639d3ad167",[2730]="2e064b1204550f4fab5b1deae3273d8c",[2731]="12f3273d36393bf608fd95030cb951ca",[2732]="639dcff1a151f9b96d4f8e52dd8b1b51",[2733]="839abd152b5e02022c0a8ebb7a443c38",[2734]="89bd4b26d6b885bfe7223730d2e8dc45",[2749]="16675a07700cd10bd0eb532f89890bce",[2750]="01c5d0d009c2b72513d77f76840ff43c",[2751]="18287ade366c6db240fc97d3696f7c70",[2752]="4271f2bf39902041349dcb816a67ffad",[2753]="d02211c168c93f89d1d72a016f166ff8",[2754]="ad2c3f9e4d13c3cd3d383e9a2b3d95af",[2825]="c46036b8e1482a2c372b31346be15fe3",[2826]="02b9a0b7ea81c5895ba338c0f672a2d5",[2827]="7d859be19ba56e14f06a58bf483296a5",[2828]="5a3ddcefed717582063dc6d50541ded8",[2829]="2948eb87eb0e3880075dc91dd6a54623",[2830]="7f34c01cbef1582ca4daf3716f92f7b9",[2831]="b9032181c1239465aacc587f96fce462",[2832]="6c263ae925e80b920db45ca157d0650b",[2833]="e973c57e3c7c9e36ac155b98a28268eb",[2834]="d526d4bb3215436392ad0d2e2ea12ea0",[2840]="2f1130fcc30bd5ad8a697095794f80cc",[2841]="fa91a7dafaacaa77c36c69c0810780d3",[2842]="af8ffad9809bc997f894c37aee090af7",[2843]="5ebae35dbe84de435c4909bc611adb6e",[2844]="5ebae35dbe84de435c4909bc611adb6e",[2845]="33e4c2e5aa8cdfee8e698e02063cd3ed",[2846]="57a5d9bf20b62c44d6e0038dc4b3aa20",[2847]="de39a119fbe57ff5ed381577c34a7312",[2848]="c9371a8d5d021aa58e08d39acf9aad5b",[2849]="021cc704b0e3ab41e97cd0aec7521a18",[2850]="983d27972adec8b1bb5849e0ae9508f0",[2851]="35dd3acabe4af43e414e44a2f3160b9d",[2852]="39a7cb2387ac0aee0185ebdaaeffed54",[2853]="ea8c0e884cb6d19e606cc746f6d7f7b6",[2854]="48ac233d75c02a4baf59c0ee75327e63",[2855]="cba85a3d373fb8cc5c03abfed46efc48",[2856]="b06395b185758242de1759d741f0440d",[2857]="b15fa11e91b69877f5acbf332fc118d7",[2858]="debd90f70e005dd79bf8c33b0dc08be4",[2859]="e0085dd9a6c5319beb819c5083d2f7e3",[2925]="71a0c1416e769dca63cc01ced37ebf58",[2926]="567f02e0591677fb3cf2139423536af4",[2927]="7ffbe09bfc4a8d8f9724d9ebd94ed75b",[2928]="5e8704cf37dc70f67e712f49a2ee6787",[2929]="5c0f87c871688d5ea6d01fb3a2d83854",[2930]="f655e4222d7b31239fe86c158830f4d3",[2931]="22d08a2f8174908599f17d47c5d3bcaa",[2932]="3bd0cf0271c63367109c454b59fe316c",[2933]="2777e2ff701fc98caa63e747c09ea2cc",[2934]="e0c79171d434668eb71fc80c437ebdf2",[2935]="5ebae35dbe84de435c4909bc611adb6e",[2936]="5ebae35dbe84de435c4909bc611adb6e",[2937]="5ebae35dbe84de435c4909bc611adb6e",[2938]="5ebae35dbe84de435c4909bc611adb6e",[2939]="5ebae35dbe84de435c4909bc611adb6e",[2940]="2c9f51dfb27636dc061e25a982811e12",[2941]="cc8d2ed391fa0a2e23f731c37e910e31",[2942]="df1f6495e0546147de6098bbdd3b68a0",[2943]="24cb10e461fb53f624f37b043bd146c4",[2944]="9537fe16bfbbbd9fd4674d7e888d2e9f",[2945]="24854880ca0683e20185ea34e6c55cc0",[2946]="1e9697f6f03768c4458d99b354b632ba",[2947]="d064bb8279d1f3a7075b1be7b2cc79f2",[2948]="52ffd925891d628141eef390c2a5ccca",[2949]="e3150ecb569982599c9dba88f742900c",[2950]="48fe5a01ce847b415b002391961d87d7",[2951]="cb0d68f33ad08ddd6ca623012073b643",[2952]="5d35dc127a90a1965489bb9d9cbb6992",[2953]="e656dbb45ec8a8bf0262a5c37126f8b6",[2954]="952f11ccf086e3d6dc3288c75cc7a9c0",[2955]="ad9aad747938d94642818aff1dfe7b73",[2956]="e33e8c8f540946520980490f39bce63f",[2957]="087f82f9d53984627c83d9a1c8610328",[2958]="47543f4d3ce4ec5e092da3c99758ce80",[2959]="7b40c5304665f5b39b50d62218a26bf5",[2960]="9311f98d64347d69c11432d074384700",[3025]="16b1df132b916551f68b13153714b623",[3026]="0d57694bbeefbada68ea505d30dc2645",[3027]="38fe657bcc9a556cd9f86a3f09ac8352",[3028]="c0368a07c541be41e60fb993f96deec5",[3029]="c33519f24ff2f93d3d1fa61aed9f0cdd",[3030]="135917fdcc4af439a0a4d1291a3d9272",[3031]="79ea11cefbca91915ea13675478a736d",[3032]="2dafe89ff75aca9f6ec590456bae78e5",[3033]="21fe2f1e72d84580fa7907fc2fbbff88",[3034]="3986eb233acdeaefcee7a14f0a00d6ca",[3035]="bef38a6c25a5d9312a621ed38c0ccd59",[3036]="5ebae35dbe84de435c4909bc611adb6e",[3037]="5ebae35dbe84de435c4909bc611adb6e",[3038]="5ebae35dbe84de435c4909bc611adb6e",[3039]="e6f26a0bf43bf02abdc53f5b796215d8",[3040]="343499ad5f469795b6ed432dbc5ac80c",[3041]="d9da2a3ae840ed7e9d94728b49b327a5",[3042]="728d542b4aa9c7399826542fe3ba154b",[3043]="2d0bfbec37e834d4806ce60eac470d60",[3044]="1e01bcf245df61f882068099e1e563c3",[3045]="a37f98410966f18e31026db1ac7e9bc1",[3046]="227be700afabf0d01103d054cc23f8cc",[3047]="9b3e042703c5a5f3cb1114a32248203e",[3048]="4fdc53bd15340825aeb22d5d4ce477ee",[3049]="0756d543835b641b7122ad5d852071e0",[3050]="a3f5cd4b81cbab24fa315d6bba9081a5",[3051]="d6d947a31e824cd54fb3c24c6545bc39",[3052]="a2c2de4eb5d8bc473a6aa6985a08f9ad",[3053]="27d7410c47cad7efa1eebd4985e185dd",[3054]="cb4e6973b8d32c7f665edbbd67cd3d2c",[3055]="b2ee057a1ec9c715f0713e63d8936022",[3056]="3151ec3262293c711616870b184332a3",[3057]="f12e1da61ee6c89675092858bb91609c",[3058]="e8957f308f9c6632ec7110971d7c1650",[3059]="2bd2dbe11cd2f8433966e43009fe37e0",[3060]="ba7d534f09f05f97ac0f1cb5b9d72467",[3125]="e86d0afaeb8a0db3592ae10b80893c75",[3126]="014bc72df5ced01290b838aad3b2ca79",[3127]="b0d7c36336fbfcf0b1a2cdf4f7d7a0aa",[3128]="f7250ce4c9631899c2a01f53ac20cb20",[3129]="a23c3c734658d0e788db865eec0b0258",[3130]="2d158ac4b0442205bd41208e8b132a31",[3131]="794654b8eabedeeb8e7dd2d8328a26f3",[3132]="c4a33705b368794464d170367af16ec6",[3133]="1c7cfe9946c1a70bcc742672c8a11149",[3134]="072bd0623f5a7ab4784de2dfd86adc25",[3135]="258625da16a8cba4f8e3ba697ba58918",[3136]="2b4e8d874f5edfc4e5c8a7d89a74505b",[3137]="07f45c0a80917feb5064fa528f524c2c",[3138]="f94f889473a268b6f51efe00862a01f9",[3139]="bae07a2bcdd1c63c76395d6593e57487",[3140]="3747e8adbb651f08ee73ce7dfab1d696",[3141]="1a676ef3c318178bddeabe3ac5bf7906",[3142]="9709581047f25a35901a662c1409130c",[3143]="1405cf294e4bea13dc1aa5cd275cf50e",[3144]="77036ac29f94dda842d54827e54b51a9",[3145]="3977622a4e99e06c6e68b6bfb02357bb",[3146]="929437174e2709ce796a9d2afc9b88c5",[3147]="11c69be07794bb62cc3c8ec952ba5ddd",[3148]="389413092e45c91ebf2dc384f427982c",[3149]="e63e31460d03784c923ddf09b8040232",[3150]="ad853d19f9f1b1a2159dde32c1180f4a",[3151]="dd9159edb7f2d8e7a6e083d1a7e1d76c",[3152]="a2521e20cdba0657fa2ccd8bc96fbf3e",[3153]="2d2b253d05f1299d9caa9b1cf81f31a8",[3154]="4122e3b381a0830c396bf957fe3f7408",[3155]="0fd599445bd29cae7c6663e5d5ef75c9",[3156]="bbf0a40c17e95bacdd12b0bec54f57cc",[3157]="22d9ed2636ab163a06587aaec8fc5394",[3158]="b3b84276ccb6ff4e47dc01cc4871e997",[3159]="cff6145753f0bcb9848e42860d929696",[3160]="bd51ef029bb7f16ec0e3e927d636a49d",[3225]="b02b0aa050890f953fda37e598f5d885",[3226]="dd4c86a15fdebc01e0cefac712fef77e",[3227]="a10db62efda165f908a4cec8e59e67a4",[3228]="fed44680e15d589ba2578db73c740269",[3229]="b0de5150a6b7af42d90d5df3618cfe6d",[3230]="4435b3df982a603cf7cca42ab9355879",[3231]="6d25b661ecf570278fd745eee08affa0",[3232]="4befa1e37a75c768fc39361a03bd09f1",[3233]="ed03061dc8a835884327310d8bec2523",[3234]="49d91afdfdfeb4dc0a4fc055bac6c292",[3235]="5ebae35dbe84de435c4909bc611adb6e",[3236]="af3f9c26d70b3f9c5b1e192936bddc37",[3237]="187f9fea3cc5baeff0ae43cc60618ddc",[3238]="16bc4922aca776dad32d3bf029027bf4",[3239]="9d8ef701ef89f6c90391b6a4a403a735",[3240]="ed320092a253ba5f83b2158212abee38",[3241]="99a4a5d83b3c4f05615a8d15942d38f9",[3242]="46899cda74fcd03dd1059460c6d090d9",[3243]="85d301debd114f480fa9e8a60f36e05c",[3244]="7637869ebc4fc4485a43d2ab2364e6ef",[3245]="89782c85d2ef92641b364df53345e9ef",[3246]="5c794b87747fc442f7c3260d4e536943",[3247]="c4333ec4babe0aeabe2f5f049aad8e5e",[3248]="b53fb722839e0c7a81bae678ea694f5c",[3249]="e7f0dea73ee6baca78231aaf4b7e772a",[3250]="2e8194044da3a460ad19eae2887624bc",[3251]="64f28f9a54025d200fc6ea8858633795",[3252]="df43450a09d1635f431ba31febadfbae",[3253]="027f2806bbdf19e848322d53d32a4166",[3254]="fde73bf393671c80ad5458d5bf858f62",[3255]="3d1335afd71987a1be66ee6211c149bc",[3256]="9c258829020752b55f7bc059a88d0cf7",[3257]="bc00bcecf6daf375783d81ce55f68d8b",[3258]="48424b4034e8e730d19ef305c80d0dd5",[3259]="18a825b9bfc736e914a04735a6d2ca64",[3260]="124d1fea3207f605a3858474322730c4",[3325]="6c0c166ef9c6c0352a290df13d5722af",[3326]="830d4162c8e3418d14807462be44bb0d",[3327]="1fcf17ec3abb6e4019bd1eab0cf32ef8",[3328]="028adea323515ad5d39462b01f2c2c8c",[3329]="74d40034b3912cab308bd80ad7227e16",[3330]="e7e270ae25f043cc7acf364a7ca80a35",[3331]="02ecc0d5566d1536b6237a3ebbeab265",[3332]="a82c120873e655be10b154cfedbfbd29",[3333]="b5755f798b82bd9fb2a9b63068ef143d",[3334]="abdd562f19da6a0b2f05e571aa17dd11",[3335]="0d9531e91bba7f0ec020e03886626717",[3336]="64185dc540cbfd76d9263c21dedea4f0",[3337]="6b738859958f20f4866fd03059c98a85",[3338]="49cc1927d9926257047f2d275d8d1562",[3339]="4454aeacdbfdbd03e75aa40a67e1675e",[3340]="01e427843df56ba1e5f6736e36d1565c",[3341]="e9811d8c519cd9747c96a2cb0a3bcb34",[3342]="f701dce7f9afa5b48beeb4678ee29243",[3343]="920dead8edcbb2fe9c019165065c9bf5",[3344]="3ea25f57ccf4431331a031e33bdf423d",[3345]="3355aa18a8561d3dee6fba0e030ae42f",[3346]="c1a11e28503605c41898feb114dc5478",[3347]="b6a4d9942348e46570568ed723b496fb",[3348]="2ba4119cfe8a5fb15c758d17dd45d5c6",[3349]="67b0e188191cab59eb9136c093997ba3",[3350]="fb890b0bca3c6b5922915da149bbe295",[3351]="b6379f9ac3cdb9e4292e3594b1f8a4bd",[3352]="df9720a859637d45d595a47e12686ded",[3353]="98357522d821b21ce9bae881761235e2",[3354]="49de84ec1e6b0e94a217457e7b8bbb90",[3355]="642bfcc0b60f8379f5624f4f90c5a7e8",[3356]="96d2e3b3616a7f9107b7a3e73f3e5c8f",[3357]="d4dd821fbb4d1999db6ff1804f378298",[3358]="e814aa940aa3b0a4aed74078fc7d0a53",[3359]="e0142679bdf46d9135d8dc22e5a1ab2f",[3360]="e41a703ef850089c19c3195380059359",[3425]="00ea0f87a3d3879d8f975798a9cb9821",[3426]="c2100b332359d0de218a8dcedae2d352",[3427]="b8ed0a909588980ea03c7569b3105263",[3428]="30e9e24ffa335d0009dd99a88f6f3163",[3429]="bca5cd1727e0777bebec722f2c492e09",[3430]="5b917841dd7ef87c715fc09273484b00",[3431]="47c1cbc11fdb91c1d48bf4d2fbd2908f",[3432]="bff296c5bbf886a8fb54d52e41effff1",[3433]="1454dc55320668d3d2c345d0c0ad50a5",[3434]="d0acb421f923ac74374b4303e4d190cc",[3435]="7c1525590ae8533b6fce4b82387ee691",[3436]="fd39b12c7a0264cadd060cedfeaca5ba",[3437]="51b6e44674de1ac59f01cdf84878b1cc",[3438]="b8a24324e31b8de3581e6c57c692801e",[3439]="e8163c478d2c7e31a231ac75ccfa23a1",[3440]="c57c6ff210a8d16ac8fd0601a5433769",[3441]="a2f585e8351ccee7c678ca4e227db891",[3442]="3a110e5cbeca5754598df728e1ca41e3",[3443]="06d323e21f819b19882bd5a64d8abbcb",[3444]="66dc9aa4ed2ba5b7b773f60302bd9004",[3445]="283e6442705bc689308456a47601cdd3",[3446]="9325d43ee026467515f2fbeeab5474d4",[3447]="46eae7fa0ec8ab7bdbc75cea3ff1e7f1",[3448]="2d434a049bbb4e64f92980676e6ce64f",[3449]="2746585e496aff714bb596357c84a4d0",[3450]="9c1b72ebddb754bc7ce9af001676a104",[3451]="3c679548af4e05b217c79aa1625a64b6",[3452]="451d5530fbaf8fba7da3390e816d4587",[3453]="be35fc51b8fba9587b16d90b0e1875ca",[3454]="0287df9b29773cc926f23c3d456ffc98",[3455]="a29f097f2f69f3b7d10ad0060e270fcc",[3456]="cc4e25ca6004916a9f6a8afb4ea1d9ab",[3457]="4c89eb0a4c16dedee11d0e26d8d59d6e",[3458]="979e9ce486bc462971a1947f3ec16490",[3459]="11edb63759f1654e7541ad6bf94f91ea",[3460]="0a4b5797ebb9c5e45b87973c79966f10",[3524]="303098cea1784618f2bc28461f0c6a90",[3525]="b0188c3226c02ada5f1e205231032cad",[3526]="e03a39bd564239847c5d5dbecf136dfc",[3527]="9e10d2b5b43d27e92efcbdebdb6eded2",[3528]="c861705235f13df6e6df4e5e20ce08ee",[3529]="779e530fe4f493097a75ba2b6b71fa16",[3530]="3546130d6de5b3de48b2820a3083e6b8",[3531]="afec290b3a1dd7880eba825e3bbb467a",[3532]="dda11d9627e4c9a78f02f3606e2d643f",[3533]="31acdc040adc6a6345de1f28a25b3cbd",[3534]="af3e837237cc1e11be33c7e9243ed1f0",[3535]="60962329e16243b4ddb327310cc12b14",[3536]="f9f35229bdae23224c6295647007ced5",[3537]="f0b7a18db2f33c969ae9a5022c3b2f1d",[3538]="7572bd5235ccd2956c553fb7024c8388",[3539]="59757ffbd09c0abf34cced5f182b34f8",[3540]="744354105d12a5532546db9e2a591157",[3541]="ca5bfe15e554c0deffbb76e4fb839795",[3542]="4ffd2734c7beb2a7e348862a0bb1879f",[3543]="1332427de6666e5f1a561716472a12ff",[3544]="543b243138e7704bbb9a806cae755cc1",[3545]="7f7c78d45bf8995c0f226e5b55d6b6df",[3546]="60cb022b728beaaaa63dce19595f8408",[3547]="b5ec30c4795f46d286e8feb6d3a64640",[3548]="ff79e0fe27a781a4f7a9280c1e1fa7a3",[3549]="91dd9817afc74484c285dc7e7ad300c6",[3550]="b60b262ac5d392027582f5a917ddd587",[3551]="82413a3dba665af0a1020360213e1559",[3552]="0d0995edeea1c21b8cd9c4124eca3a73",[3553]="8ef4f2b9ab91e5a021f7647affefd907",[3554]="9dd9da6492ed0d62bb34e7d558330ab7",[3555]="b1b842abbb9cef08428b604bc82f1475",[3556]="53a1148e7e54c66f2b0bb7a02e4a9567",[3557]="0a01ef529eea43992197d22fa6bbc0d4",[3558]="6f905a8836931fa58aecbe460488cdd7",[3623]="7fea571db7cf62877d2718d8916dfe71",[3624]="e61b0e0c2fcab5dd2b769f59e033c8a4",[3625]="4666848e42299fcdd561a0dc87729648",[3626]="f57eb870646b76d3c47d3226a4494836",[3627]="7dbe329a2f3e5c27b381cf88fa76c765",[3628]="4b11f16b928a5f13416eee05df540d47",[3629]="a200ed8d57ef1082bc885eee2e9cdb5c",[3630]="8955279d75f2a28ab4a6bd549e7c3eb2",[3631]="3c4cd711e4e859461ca2c3b60df07daf",[3632]="32dcabc1db56c50cd6a744764832247c",[3633]="74319880a10cfa9ae6725f38e677dcc8",[3634]="4b394fc6dc08e012437d79143ce531a8",[3635]="efd671916d819e844c13d5df48fa08b2",[3636]="d73fdc41be1711fc1aae8fd286619672",[3637]="8494e3b4181a2b176599786a085b1732",[3638]="1333536636f03ec0b12b7752085a6ba4",[3639]="1804d0f265b0c836bf8bece84e97795b",[3640]="effe2d33b8f867192504096ea314229e",[3641]="a50f61ffb7edd309e4c7f1214b257a91",[3642]="d78382b2dff52702003f2970e521382a",[3643]="6222aa79f83792fc743e8d6eb39951de",[3644]="a539f9fe61b4107ea3ed0523a04c345d",[3645]="e253fa71c0e5f76095bbbdbe464a0bdd",[3646]="179cc6daed897469a781ef46d5b71b5f",[3647]="89335ef91d0b42a5a475a189fcedbfda",[3648]="12a46815606cf41f2114ca2f7a16fe6e",[3649]="ef1071b6fc460c557b5c5eee71ab990a",[3650]="65bf3cfa2a857554ac21f40601c528fa",[3651]="81f295cc32dec418655b0a065ab741e7",[3652]="a03d509d762ef365135ba78ddddb928f",[3653]="d7b066bdce2a2de298a5f3abb2eb1687",[3654]="4c3fe69a83ab03ac541d6977c1318681",[3655]="9171c298c6af2f92a262afe3b344ce51",[3656]="0a522b3a2f9632029c413023cda67038",[3723]="7196338b656ce356ef31b4d4a8f525c0",[3724]="81e91b7a47accb481f5c9800843191d8",[3725]="039f97191f3688cb5971b2e69cac28f7",[3726]="742e9bf9a80f33eb5b931df235f71461",[3727]="b68d9fe2d9245e3d930af894f2403ab0",[3728]="2b6bfc2575016549ec73958d136bb735",[3729]="4c04d948cf1d900bc3222fbc7c8b3439",[3730]="ee05008a617169967100f731d7b4eb7e",[3731]="e7257f09b65984e627502b05d46ad4ab",[3732]="ca68a0a8d1c0b46a9c91ac394137a91c",[3733]="e1ea61dddc7018aa65a6afee5ff3c947",[3734]="01c31e7a99eec7659be1d223d76b4ffc",[3735]="df09a40cdb74aa4edc61030c18bdb061",[3736]="617908c3b2dc19773d6267b3001ae4e9",[3737]="87ff8b884dff5e77e279dd8d2e3d21b9",[3738]="ca3fcd44e85b67bdb8358648d993d950",[3739]="07a612fd8293b156932e250fc116d50c",[3740]="82a438d5fcbad53b518c1be550c64377",[3741]="c9f3d77dbeb9c5a8dc217a5eb09dba63",[3742]="161f700a46688de9086271869b7d606a",[3743]="44e9a7bc98740f40384375eb00866a8d",[3744]="4358e9b17872c9cea5a96cea89bfb8f8",[3745]="e4073a922379cd45dd4b4c32b2ea22fc",[3746]="34d9ab880e7730a26ce3a07f07f59d9b",[3747]="a85f820ae901cfa4a93c235446e6bea5",[3748]="ab1df739942880678a6fe08fba1fc105",[3749]="340fe575930fe14cf5f5fbc4703fb646",[3750]="c2a63162644c510b1def9d806cb5a2a4",[3751]="1394c543099b2a81b225d2722347e688",[3752]="ae85110ac99be149e5b636599f97fcf5",[3753]="696ed7a171fcc7cda8571db9bd9c295e",[3754]="fe8db0cc43d5da688a252d12ce9989eb",[3755]="d26c68775a70cff03e44758e0640bfd6",[3756]="645bc5e1ce553536a2067d7059ee74c0",[3823]="0ee33876f616d6cf75e407fe2a23027e",[3824]="ca69c3976b64eae5ca18e1985d0afb3f",[3825]="de891e9ac2a42eb9ad62d09e27091265",[3826]="74a31704f32b0b449ceb7832fc1eba17",[3827]="dc15edf102b99b588b17b029567a46c7",[3828]="69b8047a138be432f6e527c8709de4b4",[3829]="7f536aa286eee9f51a657d5c66f13ced",[3830]="7507b5d1e893c8dab0f5622531431c9f",[3831]="cd12566cb0d58a798f3ff6ba13e593de",[3832]="e57f0ee44d3213895a422b2a74d16411",[3833]="dea1054e3ea045366960bc0bb9124355",[3834]="821fe6e739db6365b7435e7169b60b08",[3835]="a93d978661f4e9e9d32965976b60d40f",[3836]="83da0f15cb6f528da95156d27ddbbbe8",[3837]="c17b154f64eb111a6c215269c07d17d6",[3838]="1714866fe4d86698cff2a953c72068a1",[3839]="4777d787cbb0937c97e2dd08af7a87c8",[3840]="e6a3709067922488acbdbcb5a6a4579b",[3841]="4b8e9b5d8e0041740f0334b17b6ecc0f",[3842]="eed528decb47d829d5299fe4ad76c5ab",[3843]="f6bcd113d0a38789e8ecdc12d79d86d8",[3844]="73d97bff228bbc33a58d93a0f20d7056",[3845]="d9687ee2a5fa44a64a5345518b7bf859",[3846]="99738b65501dc20be36f6ddb1df9b6b9",[3847]="c9dd5c67325f23e793d64d17bf6df4ed",[3848]="74d07c75fdf134b3ff0bb2855fc42805",[3849]="3499743ca0697e557378eba56c804881",[3850]="12dfda367f7da69bacbca4b98e0501f4",[3851]="55e943d7716722ac46facc77fba46a05",[3852]="e71e45efe8e35b7bd4ab8f2233be6ac0",[3853]="e63b19ce2600683b8f60838b4ea6eb66",[3854]="5cb9863a1af2720f61164b4e694d8a99",[3855]="46785ee4519ea7656d7961451909cde6",[3923]="dc8a3b03368d1b6bf85489d0057652c4",[3924]="52af51fc874508c82afa6ce4c290743a",[3925]="9e5d900159b86efbe88f566878d7513f",[3926]="02dd4ce432e93438e7ea0ca0e41ff6b4",[3927]="e455c8b91589193dd6a9def9271ae52c",[3928]="08fe4ea582021b905f37db3a881d6619",[3929]="ed615d7676e9c2b44c0c896f8d579339",[3930]="d589672178d960a375d71737742d0c10",[3931]="0c6a40f3c12524f72e6b648dce62c35f",[3932]="6dd954c0b54158bbb2ad154888087596",[3933]="9ffb1e50f6ddafd8e6458fe0ed95f8d3",[3934]="55de4a3de85e09d48eba3432f773d21f",[3935]="7218159df00388c27b992bd0b0e9c23e",[3936]="cca85cbbcf371efe71d4e02495a82d9d",[3937]="e21222bc43758543af1a39612ebb3a98",[3938]="2ae250759827a36ef1c1d454950d3170",[3939]="a77221977c9b1729a26bf69ddd51ecb4",[3940]="d2bc0491087529c9ea5a0767333e994a",[3941]="891c5608234001d77f1f67bf7761c0ab",[3942]="4eb9af4347a011bf80a4faa893229b37",[3943]="3fa1469fff23fdb666993f169cab6609",[3944]="6fd5d958d77e7f100d3f17d659d1864e",[3945]="5afaefff9caa9d31634fdbf613b50d88",[3946]="130cc063527e137b174ef4c7a89669bc",[3947]="c9c6dac9e56070e7612c1023f31c0d59",[3948]="663334b65f7714598a2a7172f977d857",[3949]="d73733d1f9335cdca0e98162372f3c7e",[3950]="66109ea77fda917e3b12d43007ed43bd",[3951]="505dd4051f531604692dc8dc16f095a6",[3952]="eadf2481744745204c464e5fed9b4a61",[3953]="f3325714f7d65946791549c36adaac7d",[3954]="d30851464d1dc0877eaaa78e70d4d9f3",[3955]="1f21146b6c9805cc82f48941d814ae3a",[4023]="a3823660ece1557e0c9ac312aded844d",[4024]="75c0d9d00c5ceb0e6cdbe7fbf4326704",[4025]="34f0a2c879a9936d4cbca6ed17db7c63",[4026]="a6f2ead6795066b985b65c25b67f9428",[4027]="dbf758de84a53049433b0a236b760b23",[4028]="69a74a98675611c3a3dea60f1b58154b",[4029]="552e2ed77ba1581847a801a01f5272b9",[4030]="a9a839030d3505921b18f44b533e0ba0",[4031]="130efabd8d79a5e6f49acb12934e7fe2",[4032]="0b95b7bc30cc0bfdf32bc3e37255fc95",[4033]="3a74b662b68652801f189012364bad7e",[4034]="0871da497a784732559ae11ef1b9401a",[4035]="38eaada0cb2f2d7097eb6c5d590cf169",[4037]="c304cafd1536ddc4a8c3fa330674735c",[4038]="00c0435e2a1df110c198b9e16e74bc62",[4039]="911daf8ad89632607b52cadc7190d3cb",[4040]="a265d6f9d5eeed19c71388a197e361cf",[4041]="12c1454bfd0b73fb0492abd87eac7373",[4042]="0d4125addb2fcf5d010fa13a48823b32",[4043]="15a5cec2c0529ab45efb6de2437fb6b7",[4044]="2724d326e7c5573e7518a7b5de8be1ff",[4045]="114cee2581459af17b2cf56e61c57e0e",[4046]="b0a1bf04ac1574150875bef5de502777",[4047]="62f9d344fa624deb7911100643c2bc59",[4048]="82f242c5698d9600880b4f9c5bbc738a",[4049]="36d2beb17dd473f27d7177fc3e6f3b23",[4050]="974573c183d8e8e9db39259df1a37ecf",[4051]="6f6bb0613b5225aa5938cc5248e9bfd9",[4052]="a13533c37d7bd9c924fae096088669fe",[4053]="ec8a77e198d49f288b618602a4b40834",[4123]="091d274852e64854d971718924d7af1b",[4124]="79e829cdf28c666b723a51415bf10d7a",[4125]="6155d4d57f3079a066254b375d6fc4bd",[4126]="6738cc6bc29644a260c2a4b2ae64d9ce",[4127]="ccf9943523b11eaa5a90f4bfb457cb0b",[4128]="940abe127490d6d8bfdcfc4add7ec3be",[4129]="5e58ec9da4feb0f506e13e2cf2fe7452",[4130]="2b2a8252b6252c176ff8e8eb603d0407",[4131]="4a67b6d4cbd6dc1b6df1b67a01732871",[4132]="7095a76a4b26393d95c0512d6bd146db",[4133]="9a4939ef5748c33d2132388929048084",[4139]="c10de24bc09e4d562106fa260bed78b5",[4140]="d3d026502297865dc0481414708ebc5f",[4141]="8185d7f977fc7adfe035d9ede89a7713",[4142]="2de8f7254aa653d627b4fdc176ebce47",[4143]="c6476bffb5cf6b26b8f17441788aae6b",[4144]="eacd42e8256da464646ad195e46ea458",[4145]="850b8dceff8e49e990af5169b98a6724",[4146]="34bd6431aa7fdf07e3ebbcd1de13a4c9",[4147]="1c53463bc91a88e8d10dd42c2ae78257",[4148]="31675672101e260254df050a365364c7",[4149]="4ce0b7628572357dbaa9d532d9aed99a",[4150]="a379fa3406c62b9ddd9108b944e281fd",[4151]="bce5e36ebb465c910c6ac44bd7ccbaaa",[4152]="5b54218737f7f156d670aa157588d6c3",[4224]="5cdf0329e46078e15c04308c5667a39a",[4225]="bf05025f10b93b10cf3024ad81168fd7",[4226]="7bca0cfa37e418c0f7bbc140f97b2f29",[4227]="3d36c300861b55ad2619aa44319414d0",[4228]="82db41dfb074cf002603837f0aaa5f73",[4229]="853253e92111105c7a5318255cbaf229",[4230]="efff6af31f9bb11cc6aa7cf628ba2c1f",[4240]="58ccfd35c552a43c9c91ca26fa6ae737",[4241]="2df6dd8d986a2326872a9a23d2807281",[4325]="1d6705f830492431b9f89760c7485a38",[4326]="27b9419988d6a534287d2536951605c1",[4327]="7346ed501df248c48f69323eec85e6d0",[4328]="fb6e8de7a877033e7c4627948e14c0d8",[4329]="dfe536965d4643e7dfd3a2fdb0e0d048",[4425]="f199b63e76ea9687c58160cd557588c2",[4426]="b605da27ed95c2f7edfe1afba61dab41",}
Map.NRMB={[1609]="d922f6d7681bc0683c69d44591a0db4f",[1610]="d922f6d7681bc0683c69d44591a0db4f",[1611]="d922f6d7681bc0683c69d44591a0db4f",[1612]="d922f6d7681bc0683c69d44591a0db4f",[1613]="d922f6d7681bc0683c69d44591a0db4f",[1614]="d922f6d7681bc0683c69d44591a0db4f",[1615]="d922f6d7681bc0683c69d44591a0db4f",[1616]="d922f6d7681bc0683c69d44591a0db4f",[1617]="d922f6d7681bc0683c69d44591a0db4f",[1618]="d922f6d7681bc0683c69d44591a0db4f",[1619]="d922f6d7681bc0683c69d44591a0db4f",[1620]="d922f6d7681bc0683c69d44591a0db4f",[1621]="d922f6d7681bc0683c69d44591a0db4f",[1622]="d922f6d7681bc0683c69d44591a0db4f",[1623]="fbc0c617b3728dc3336715d49bb6a969",[1624]="716ab444822651b5736f9a9241ce360f",[1625]="291d340083a196f957a3eedec73c1506",[1626]="d922f6d7681bc0683c69d44591a0db4f",[1627]="d922f6d7681bc0683c69d44591a0db4f",[1628]="d922f6d7681bc0683c69d44591a0db4f",[1629]="d922f6d7681bc0683c69d44591a0db4f",[1630]="d922f6d7681bc0683c69d44591a0db4f",[1631]="d922f6d7681bc0683c69d44591a0db4f",[1632]="d922f6d7681bc0683c69d44591a0db4f",[1633]="d922f6d7681bc0683c69d44591a0db4f",[1634]="d922f6d7681bc0683c69d44591a0db4f",[1635]="d922f6d7681bc0683c69d44591a0db4f",[1636]="d922f6d7681bc0683c69d44591a0db4f",[1637]="421bc7212944e75f6636ec4f69f5ddd8",[1709]="d922f6d7681bc0683c69d44591a0db4f",[1710]="d922f6d7681bc0683c69d44591a0db4f",[1711]="d922f6d7681bc0683c69d44591a0db4f",[1712]="d922f6d7681bc0683c69d44591a0db4f",[1713]="d922f6d7681bc0683c69d44591a0db4f",[1714]="d922f6d7681bc0683c69d44591a0db4f",[1715]="5eb28208a347f25d22a6f9323f34dbfe",[1716]="d922f6d7681bc0683c69d44591a0db4f",[1717]="d922f6d7681bc0683c69d44591a0db4f",[1718]="d922f6d7681bc0683c69d44591a0db4f",[1719]="d922f6d7681bc0683c69d44591a0db4f",[1720]="d922f6d7681bc0683c69d44591a0db4f",[1721]="d922f6d7681bc0683c69d44591a0db4f",[1722]="d922f6d7681bc0683c69d44591a0db4f",[1723]="cf44771fc416c1124ddee53ae45ea147",[1724]="e445f101fd35c8c659e1201803ca2366",[1725]="64895d34ef839339fe16d18c6d2c9859",[1726]="07cb324c04b0bd02190422f28430fa84",[1727]="d922f6d7681bc0683c69d44591a0db4f",[1728]="d922f6d7681bc0683c69d44591a0db4f",[1729]="d922f6d7681bc0683c69d44591a0db4f",[1730]="d922f6d7681bc0683c69d44591a0db4f",[1731]="d922f6d7681bc0683c69d44591a0db4f",[1732]="d922f6d7681bc0683c69d44591a0db4f",[1733]="d922f6d7681bc0683c69d44591a0db4f",[1734]="d922f6d7681bc0683c69d44591a0db4f",[1735]="d922f6d7681bc0683c69d44591a0db4f",[1736]="d922f6d7681bc0683c69d44591a0db4f",[1737]="4c5b0c29cfa3cc311e744def037a73bb",[1809]="d922f6d7681bc0683c69d44591a0db4f",[1810]="d922f6d7681bc0683c69d44591a0db4f",[1811]="d922f6d7681bc0683c69d44591a0db4f",[1812]="d922f6d7681bc0683c69d44591a0db4f",[1813]="d922f6d7681bc0683c69d44591a0db4f",[1814]="d922f6d7681bc0683c69d44591a0db4f",[1815]="d922f6d7681bc0683c69d44591a0db4f",[1816]="d922f6d7681bc0683c69d44591a0db4f",[1817]="d922f6d7681bc0683c69d44591a0db4f",[1818]="d922f6d7681bc0683c69d44591a0db4f",[1819]="d922f6d7681bc0683c69d44591a0db4f",[1820]="d922f6d7681bc0683c69d44591a0db4f",[1821]="d922f6d7681bc0683c69d44591a0db4f",[1822]="d922f6d7681bc0683c69d44591a0db4f",[1823]="51bff1bdce239bbb7902bdda132253f4",[1824]="8450ad2ed726f660c0509613f336b8df",[1825]="91b19cbe7ebfcf5940c1861a3c24a5a8",[1826]="afcbeff331c034f87df3db3f66758e26",[1827]="f16f7d7e3302cc4e5019807b6e525300",[1828]="478ecb001a3017610fd0ad5d5a6ba392",[1829]="d922f6d7681bc0683c69d44591a0db4f",[1830]="d922f6d7681bc0683c69d44591a0db4f",[1831]="d922f6d7681bc0683c69d44591a0db4f",[1832]="d922f6d7681bc0683c69d44591a0db4f",[1833]="d922f6d7681bc0683c69d44591a0db4f",[1834]="d922f6d7681bc0683c69d44591a0db4f",[1835]="d922f6d7681bc0683c69d44591a0db4f",[1836]="d922f6d7681bc0683c69d44591a0db4f",[1837]="421bc7212944e75f6636ec4f69f5ddd8",[1909]="d922f6d7681bc0683c69d44591a0db4f",[1910]="d922f6d7681bc0683c69d44591a0db4f",[1911]="d922f6d7681bc0683c69d44591a0db4f",[1912]="d922f6d7681bc0683c69d44591a0db4f",[1913]="d922f6d7681bc0683c69d44591a0db4f",[1914]="d922f6d7681bc0683c69d44591a0db4f",[1915]="d922f6d7681bc0683c69d44591a0db4f",[1916]="d922f6d7681bc0683c69d44591a0db4f",[1917]="d922f6d7681bc0683c69d44591a0db4f",[1918]="d922f6d7681bc0683c69d44591a0db4f",[1919]="d922f6d7681bc0683c69d44591a0db4f",[1920]="ecd235ba6f9b53a3fcfa84d45ba77625",[1921]="28e489674b82f139174ba176b991ec72",[1922]="70765205b207fac3f22c7d2f860f53c8",[1923]="52a9ec259ecf20de06ae2c84ab527c81",[1924]="662088203a6e96051e24c0e977493da0",[1925]="e3a55a03404a80f29928e8580db19582",[1926]="f470f47438e8721163d67872c862cb4c",[1927]="22d586cded70f431664dec2815a411cb",[1928]="056ec89f0491872bfbc739176b6971e6",[1929]="d922f6d7681bc0683c69d44591a0db4f",[1930]="d922f6d7681bc0683c69d44591a0db4f",[1931]="d922f6d7681bc0683c69d44591a0db4f",[1932]="d922f6d7681bc0683c69d44591a0db4f",[1933]="d922f6d7681bc0683c69d44591a0db4f",[1934]="d922f6d7681bc0683c69d44591a0db4f",[1935]="d922f6d7681bc0683c69d44591a0db4f",[1936]="d922f6d7681bc0683c69d44591a0db4f",[1937]="4c5b0c29cfa3cc311e744def037a73bb",[2009]="d922f6d7681bc0683c69d44591a0db4f",[2010]="d922f6d7681bc0683c69d44591a0db4f",[2011]="d922f6d7681bc0683c69d44591a0db4f",[2012]="d922f6d7681bc0683c69d44591a0db4f",[2013]="d922f6d7681bc0683c69d44591a0db4f",[2014]="d922f6d7681bc0683c69d44591a0db4f",[2015]="d922f6d7681bc0683c69d44591a0db4f",[2016]="d922f6d7681bc0683c69d44591a0db4f",[2017]="d922f6d7681bc0683c69d44591a0db4f",[2018]="d922f6d7681bc0683c69d44591a0db4f",[2019]="6a64ea7b83dcaffa9cc2545d0c266612",[2020]="9809cbcdead73dfd7de196bc2ba9539f",[2021]="b9b59c508619c9f40d61a96621336d7a",[2022]="6bd27b982b35c0a63baa57ab41bfadcb",[2023]="9d04af1efd03bf6ed6c7af9cc6112fda",[2024]="561f4484f284757c6a94ccad1303a26d",[2025]="f834adab451e875dbd11acdd7ee69e30",[2026]="1ff1bb16d6e83d9e2cdcd1f21174f802",[2027]="a9188f9c7c45c02c5a9b224d02ca3915",[2028]="107e5168fd334f7861a726d323e395df",[2029]="4f078f441c96da9aa216cdb46194ab7d",[2030]="d922f6d7681bc0683c69d44591a0db4f",[2031]="d922f6d7681bc0683c69d44591a0db4f",[2032]="d922f6d7681bc0683c69d44591a0db4f",[2033]="d922f6d7681bc0683c69d44591a0db4f",[2034]="d922f6d7681bc0683c69d44591a0db4f",[2035]="d922f6d7681bc0683c69d44591a0db4f",[2036]="d922f6d7681bc0683c69d44591a0db4f",[2037]="421bc7212944e75f6636ec4f69f5ddd8",[2109]="d922f6d7681bc0683c69d44591a0db4f",[2110]="d922f6d7681bc0683c69d44591a0db4f",[2111]="d922f6d7681bc0683c69d44591a0db4f",[2112]="d922f6d7681bc0683c69d44591a0db4f",[2113]="d922f6d7681bc0683c69d44591a0db4f",[2114]="d922f6d7681bc0683c69d44591a0db4f",[2115]="d922f6d7681bc0683c69d44591a0db4f",[2116]="d922f6d7681bc0683c69d44591a0db4f",[2117]="d922f6d7681bc0683c69d44591a0db4f",[2118]="ef4e9a1371145acb380fa2fbf24d21b7",[2119]="f84f4881e347e9defe6243482644bf0d",[2120]="c624103a6d91d93e768e86df3efc1ddf",[2121]="a6e9f6a438d84027e52589b7fbeaef2a",[2122]="d7c598ddb3028069968e345ae7cfdd79",[2123]="7916d98044b1df83f1d2acdbfc14fabf",[2124]="6d57410f529799d92da172c608201769",[2125]="cfb0cbdf9ad6adbde0ff3d3908eb1f81",[2126]="82c918ebe625f836ea3cdb88bdc00baf",[2127]="e49669436a40eae6ca7fb9d4a13b99da",[2128]="62229d97eecca0da26e24e8a6c17a796",[2129]="e297c450f5e5210b606d22c757b34071",[2130]="fd570d8919c86feccb26b3dcbeb06ebd",[2131]="d922f6d7681bc0683c69d44591a0db4f",[2132]="d922f6d7681bc0683c69d44591a0db4f",[2133]="d922f6d7681bc0683c69d44591a0db4f",[2134]="d922f6d7681bc0683c69d44591a0db4f",[2135]="d922f6d7681bc0683c69d44591a0db4f",[2136]="d922f6d7681bc0683c69d44591a0db4f",[2137]="6f1d2f5f8de9e19dfd28a9235d2a8721",[2209]="d922f6d7681bc0683c69d44591a0db4f",[2210]="d922f6d7681bc0683c69d44591a0db4f",[2211]="d922f6d7681bc0683c69d44591a0db4f",[2212]="d922f6d7681bc0683c69d44591a0db4f",[2213]="d922f6d7681bc0683c69d44591a0db4f",[2214]="d922f6d7681bc0683c69d44591a0db4f",[2215]="d922f6d7681bc0683c69d44591a0db4f",[2216]="1b301908b16585513fbc9f8dd666b11a",[2217]="b39b72724ada4230d4f9a1a9957f60dd",[2218]="5eb453ee6799a7e5e50517e0ee54b0da",[2219]="c1606e73d680a0da7fd43f08c4d8f9eb",[2220]="4f4be133becc2e0a174634b1617f2e79",[2221]="752be70303c5f3067fd46e90589ad0e1",[2222]="2d5116fe6ed42705ad913842ac8c2b4d",[2223]="7e7311a3fc1b6727dcf02c226459bd8c",[2224]="7680a25c16e035ebb37d68b543cd3169",[2225]="cf804b95cd020467f8b3444832d2be34",[2226]="6bb5a55c885a2781c50da0241894ffa6",[2227]="4c96378a71bf1ded26267161f2814c63",[2228]="971e7d5e17f83f934f4f2616372725e9",[2229]="e3593648aac82baecf236ea9c9bc2716",[2230]="182716b3d4101145acb048463be65609",[2231]="d922f6d7681bc0683c69d44591a0db4f",[2232]="d922f6d7681bc0683c69d44591a0db4f",[2233]="d922f6d7681bc0683c69d44591a0db4f",[2234]="d922f6d7681bc0683c69d44591a0db4f",[2235]="d922f6d7681bc0683c69d44591a0db4f",[2236]="d922f6d7681bc0683c69d44591a0db4f",[2237]="421bc7212944e75f6636ec4f69f5ddd8",[2309]="d922f6d7681bc0683c69d44591a0db4f",[2310]="d922f6d7681bc0683c69d44591a0db4f",[2311]="d922f6d7681bc0683c69d44591a0db4f",[2312]="d922f6d7681bc0683c69d44591a0db4f",[2313]="d922f6d7681bc0683c69d44591a0db4f",[2314]="d922f6d7681bc0683c69d44591a0db4f",[2315]="76092fcc86f8c6dc6486eae3c85aa2f4",[2316]="9a8e9c042c28bb778f44478a65d8a2d1",[2317]="01fdf54da6da6fae72c99981e3375cee",[2318]="e3ff71b909e668ee0fbd746d7376e5e0",[2319]="45dd69d6f42f7490db75281a7e170c6e",[2320]="c33f8fafbc5baa8e7fa758e986487881",[2321]="1670eccfe43164dc2adc99b994fba89f",[2322]="287b62211e28543e5a1d4eae4038d249",[2323]="4d72d762c3dacf0aae39dc86f4736b66",[2324]="7d253ee6a21189179ca20b8d7de9986c",[2325]="b17d23b9f69f5d3540fea47ae8a21632",[2326]="27b373c9e03811d18ae61ed34b197859",[2327]="6b93526879da51ce23b0cb6a15ea5799",[2328]="5e7b8ae90a19b3f2f22bcea681557679",[2329]="d922f6d7681bc0683c69d44591a0db4f",[2330]="d922f6d7681bc0683c69d44591a0db4f",[2331]="d922f6d7681bc0683c69d44591a0db4f",[2332]="d922f6d7681bc0683c69d44591a0db4f",[2333]="d922f6d7681bc0683c69d44591a0db4f",[2334]="d922f6d7681bc0683c69d44591a0db4f",[2335]="d922f6d7681bc0683c69d44591a0db4f",[2336]="d922f6d7681bc0683c69d44591a0db4f",[2337]="4c5b0c29cfa3cc311e744def037a73bb",[2409]="1f4500a9c60e52ec24f99eac4d17158b",[2410]="d922f6d7681bc0683c69d44591a0db4f",[2411]="d922f6d7681bc0683c69d44591a0db4f",[2412]="d922f6d7681bc0683c69d44591a0db4f",[2413]="d922f6d7681bc0683c69d44591a0db4f",[2414]="d922f6d7681bc0683c69d44591a0db4f",[2415]="4ddf8eb4af07866b32677d77d6db009c",[2416]="c8c3fbf6d511de21aeb04e57f6eb8050",[2417]="096be21bc3fb196aefe140cab0c19d8f",[2418]="79d75220dec36862c9acff9667ba83ef",[2419]="5b558b5df10113710576b2db43432ec2",[2420]="a71b5be44a185a859a60f400ce315782",[2421]="db045e3bab0ca79917cb91de283568d1",[2422]="c6772a1e56f07737b039f738182ef963",[2423]="b4866b6cdfab7f5f3742c9f202343a14",[2424]="b495ac202c9d1b591c1ee7fcd6d78b58",[2425]="531b3e429c6b91014a7098d1f41a0bec",[2426]="f17e6ee3ddbb16798f656ce4d464cef2",[2427]="b02cdbee3e73680246ba429685297636",[2428]="d922f6d7681bc0683c69d44591a0db4f",[2429]="d922f6d7681bc0683c69d44591a0db4f",[2430]="d922f6d7681bc0683c69d44591a0db4f",[2431]="d922f6d7681bc0683c69d44591a0db4f",[2432]="d922f6d7681bc0683c69d44591a0db4f",[2433]="d922f6d7681bc0683c69d44591a0db4f",[2434]="d922f6d7681bc0683c69d44591a0db4f",[2435]="d922f6d7681bc0683c69d44591a0db4f",[2436]="d922f6d7681bc0683c69d44591a0db4f",[2437]="421bc7212944e75f6636ec4f69f5ddd8",[2509]="d922f6d7681bc0683c69d44591a0db4f",[2510]="d922f6d7681bc0683c69d44591a0db4f",[2511]="d922f6d7681bc0683c69d44591a0db4f",[2512]="51234e15d5fe742353c75bd84ee86a55",[2513]="d922f6d7681bc0683c69d44591a0db4f",[2514]="e62e063922689decf4890c8bd49380ca",[2515]="7cefb74805e40d50b359579c005ae6ad",[2516]="a49ca4cc2091e5edd5fb9282b5f2093e",[2517]="c3f7d12f4a9ca360b8f78d4ef4e84db4",[2518]="8df01d2bbba463b34aca744526df85df",[2519]="c56f568c649840b3716ceddbd31d7ed4",[2520]="267d2ad87d7580b0f0a4d466312ad536",[2521]="b9030e51666c15af801ffe4d70c04638",[2522]="1046390c01e05dc3a29bd47be42f27e5",[2523]="0eb0d2efb214367a5375231cfb8f87fe",[2524]="7dffe6996e34eb5ef9b11334901b4d25",[2525]="9e33f2267c36b050c5470419d9e9d400",[2526]="8fd85602abc7bf9966b3651b304e9767",[2527]="a57a0ef0389dc031c120486df6296dac",[2528]="d922f6d7681bc0683c69d44591a0db4f",[2529]="d922f6d7681bc0683c69d44591a0db4f",[2530]="d922f6d7681bc0683c69d44591a0db4f",[2531]="d922f6d7681bc0683c69d44591a0db4f",[2532]="d922f6d7681bc0683c69d44591a0db4f",[2533]="d922f6d7681bc0683c69d44591a0db4f",[2534]="d922f6d7681bc0683c69d44591a0db4f",[2535]="d922f6d7681bc0683c69d44591a0db4f",[2536]="d922f6d7681bc0683c69d44591a0db4f",[2537]="4c5b0c29cfa3cc311e744def037a73bb",[2609]="d922f6d7681bc0683c69d44591a0db4f",[2610]="d922f6d7681bc0683c69d44591a0db4f",[2611]="d922f6d7681bc0683c69d44591a0db4f",[2612]="d922f6d7681bc0683c69d44591a0db4f",[2613]="7a2711f76af79596838c8870ba843c92",[2614]="75009807dbbe3358e685f40f5b1665cb",[2615]="19648c11f91107c822bbda751fc1c830",[2616]="e03c3ce1dd689ea44cbdf624c04e6fbc",[2617]="928b7875976dc9e46941b8385b74be6c",[2618]="da0beb970607067efabd4094ae264702",[2619]="b2ccd9c6f8a5b6bd297e2497f0fd6028",[2620]="22bca75e3fbfb45cb6686f8ec44cd3a1",[2621]="02c449a55bacfa06354f99fd16f45283",[2622]="70b159a23b5d3680c21fd174d5ed4480",[2623]="267587b8412eb2f5862ffbe1e3f796e2",[2624]="d0ce3a947331968433176117d040e44e",[2625]="f6427debd6022df7a94c561631bae755",[2626]="6c9d71be7683074ffbae1c50be020b89",[2627]="3576928f5826f1dac91d8d435d479783",[2628]="d922f6d7681bc0683c69d44591a0db4f",[2629]="d922f6d7681bc0683c69d44591a0db4f",[2630]="d922f6d7681bc0683c69d44591a0db4f",[2631]="d922f6d7681bc0683c69d44591a0db4f",[2632]="d922f6d7681bc0683c69d44591a0db4f",[2633]="d922f6d7681bc0683c69d44591a0db4f",[2634]="d922f6d7681bc0683c69d44591a0db4f",[2635]="d922f6d7681bc0683c69d44591a0db4f",[2636]="d922f6d7681bc0683c69d44591a0db4f",[2637]="421bc7212944e75f6636ec4f69f5ddd8",[2709]="d922f6d7681bc0683c69d44591a0db4f",[2710]="d922f6d7681bc0683c69d44591a0db4f",[2711]="d922f6d7681bc0683c69d44591a0db4f",[2712]="d922f6d7681bc0683c69d44591a0db4f",[2713]="5feca41cb93b0e039da5ec0c776da285",[2714]="ffb5ff28acca9dffd0169f6969ef1580",[2715]="7456e93f473929a304296a7ce5f4a0f0",[2716]="de1d2970f6eb5776a6d9d2b3c1f01025",[2717]="e9cf55fbc953d18a6b969b81ae7ce300",[2718]="b254fa44ceedfa5eb71199f5ff7d1733",[2719]="87bdc6b7b07cb2f3260ac3b4c1c9f97b",[2720]="4a8d0fa05af45025bf2922dcc08fee98",[2721]="d50320e9726217593f9463a017ec3743",[2722]="a1a1624ce9ca6267c36861d9df9bdddc",[2723]="0ebc568014d4080db3ddc11a681f23fc",[2724]="4ba7377458db24ab6f84ac0d210c60c6",[2725]="c85a31f2877a821b0331e347ebc2244a",[2726]="6e2e0168a3d429fef43d6b7f6d3ba953",[2727]="c72e17512560bee9397bdec1483703e1",[2728]="d922f6d7681bc0683c69d44591a0db4f",[2729]="d922f6d7681bc0683c69d44591a0db4f",[2730]="d922f6d7681bc0683c69d44591a0db4f",[2731]="d922f6d7681bc0683c69d44591a0db4f",[2732]="d922f6d7681bc0683c69d44591a0db4f",[2733]="d922f6d7681bc0683c69d44591a0db4f",[2734]="d922f6d7681bc0683c69d44591a0db4f",[2735]="d922f6d7681bc0683c69d44591a0db4f",[2736]="d922f6d7681bc0683c69d44591a0db4f",[2737]="4c5b0c29cfa3cc311e744def037a73bb",[2809]="d922f6d7681bc0683c69d44591a0db4f",[2810]="d922f6d7681bc0683c69d44591a0db4f",[2811]="51234e15d5fe742353c75bd84ee86a55",[2812]="dd70d6ef5a5bd987868a4fcbc9491297",[2813]="ae27e8c8b6afc14f77ff629716126680",[2814]="9abd0b095dbfd515a49f41d16efcd086",[2815]="9356390c11d56104e3ecfe31211ac26c",[2816]="c013f34dbee62c1e61793f94f1169e4a",[2817]="626e3e38cd4a59790b8133a2ca3513fb",[2818]="02369b3e8024f9808f83c1e370d51e61",[2819]="8e7b487d77e482cf3828f8e68434ef1f",[2820]="cb9e2416ace2da030908ed2a1b663839",[2821]="c6d42f932237470626d9b130213588de",[2822]="bf8b14c8572b2335f0551d08fd74d016",[2823]="e92079fcabe881b621ca6a38ce795b9b",[2824]="eb0b4ba55d6937bdcea3246e0ae8e068",[2825]="a39438f6a1b6249bbfcd337f12dbaa6f",[2826]="ce2c837f68d424ab3f7dfb3df0e39ac3",[2827]="fd5f87929c70698c0b60b82eb7781be2",[2828]="77b57a55a09a3e5e9c0e712ecba98857",[2829]="d922f6d7681bc0683c69d44591a0db4f",[2830]="d922f6d7681bc0683c69d44591a0db4f",[2831]="d922f6d7681bc0683c69d44591a0db4f",[2832]="d922f6d7681bc0683c69d44591a0db4f",[2833]="d922f6d7681bc0683c69d44591a0db4f",[2834]="d922f6d7681bc0683c69d44591a0db4f",[2835]="d922f6d7681bc0683c69d44591a0db4f",[2836]="d922f6d7681bc0683c69d44591a0db4f",[2837]="421bc7212944e75f6636ec4f69f5ddd8",[2909]="d922f6d7681bc0683c69d44591a0db4f",[2910]="51234e15d5fe742353c75bd84ee86a55",[2911]="0faa269c3416c979090fc75138770afd",[2912]="88ee9463df96c5ac0e9cc0e44672b18d",[2913]="210a6746b1e8ecfe02a4af694869da6c",[2914]="a63b73d2ccffca3062845a2931378d4c",[2915]="a043a71d88c5348626942f8a579e3104",[2916]="8f6d2c2714011bbfd4498bfdf4144049",[2917]="94cd52759d7f75533182e62f83c38054",[2918]="7a875f0448ae53fc0c1a339abab7923a",[2919]="74a39d47f06493f6319c117ab3943924",[2920]="f17820283db2d8539d230ced1fddd175",[2921]="23fb8e942902c9109f82e0fc0224b3c7",[2922]="aa08fbfbbd75b54e4f22a0fdf572ca82",[2923]="27237692d79aabaf4aa66df08826c7d3",[2924]="72fc053682c99434347c932850baead5",[2925]="d99b53e1968433ae393e3fdacbc1be76",[2926]="56a68a742c4bf3dad28cf24927b62120",[2927]="f181c304cee6d430db98ce8759ce42c2",[2928]="d922f6d7681bc0683c69d44591a0db4f",[2929]="d922f6d7681bc0683c69d44591a0db4f",[2930]="d922f6d7681bc0683c69d44591a0db4f",[2931]="d922f6d7681bc0683c69d44591a0db4f",[2932]="d922f6d7681bc0683c69d44591a0db4f",[2933]="d922f6d7681bc0683c69d44591a0db4f",[2934]="d922f6d7681bc0683c69d44591a0db4f",[2935]="d922f6d7681bc0683c69d44591a0db4f",[2936]="d922f6d7681bc0683c69d44591a0db4f",[2937]="4c5b0c29cfa3cc311e744def037a73bb",[3009]="d922f6d7681bc0683c69d44591a0db4f",[3010]="51234e15d5fe742353c75bd84ee86a55",[3011]="d398ca8ab437e15b7f2ca16107764eee",[3012]="c7299f73ce3a8e1e46c439e4b0115479",[3013]="bfbf3013a182511d929fdb4d41242b75",[3014]="9c26c3193fbff7e44744dd7cbdb317e1",[3015]="71761a313120027a77f90c25fa0fb956",[3016]="d6bbd3699738f10cd3086fcedfcaf735",[3017]="3b9f3eb7be6a0e482f6508cd4ed7cc79",[3018]="7ed8bf963c9bf1220c5cd2f79c8e8ddc",[3019]="da71fe2a15cf73c63a30ed055aa12660",[3020]="72c37e82cd79e59c7d4980d13469145b",[3021]="02753ca37edefda6dcd7b5ba58af05cc",[3022]="3ff56030ff76270e858dbbf2bf889cea",[3023]="d25a3f1f1507d66adf675710749198e4",[3024]="fb93217accc0b97d68ee48e11d9daacd",[3025]="ce43ca30b1c88e299ccbe0af09f17090",[3026]="85403a353bf089dcacba13a0a4e66479",[3027]="8f041d54fca1e0fd1b5523a6c003472b",[3028]="d922f6d7681bc0683c69d44591a0db4f",[3029]="d922f6d7681bc0683c69d44591a0db4f",[3030]="d922f6d7681bc0683c69d44591a0db4f",[3031]="d922f6d7681bc0683c69d44591a0db4f",[3032]="d922f6d7681bc0683c69d44591a0db4f",[3033]="d922f6d7681bc0683c69d44591a0db4f",[3034]="d922f6d7681bc0683c69d44591a0db4f",[3035]="d922f6d7681bc0683c69d44591a0db4f",[3036]="d922f6d7681bc0683c69d44591a0db4f",[3037]="421bc7212944e75f6636ec4f69f5ddd8",[3109]="51234e15d5fe742353c75bd84ee86a55",[3110]="51234e15d5fe742353c75bd84ee86a55",[3111]="0346d8e7e44c8ca70abdbd943b9a1555",[3112]="2562783080cfc4e0eb14aaff517021ff",[3113]="40f09ee0fed173b616b9847624c5606a",[3114]="966519d6f0fa54b04c03ce3286980154",[3115]="95db91c7195c92a704107efc373c650c",[3116]="7ea00127e58de652d02c171b4dfcbf06",[3117]="8c261fedd2159d876ca9fa83144927e2",[3118]="eae10cb1be63aadfc7c148b1504f5c96",[3119]="83c7f3a14b14db54c6bc72fc98fe4aed",[3120]="5d16d835cbc4c43bdc681120df84a38f",[3121]="f53c245762d896d3b698ee066af732ae",[3122]="1036937582b9945078fe6188869504bf",[3123]="773988245e5d3866b2cb808c80b83a92",[3124]="cf322257929908550d3bf340124d9b7f",[3125]="a7190be1c6a866aec2791eb641345fca",[3126]="abebaff028332e284f431914496c7db7",[3127]="ad4dc257e3687ac022d04964ac5de7f6",[3128]="fdf9795638ef463a31ef8afcf590f65f",[3129]="d922f6d7681bc0683c69d44591a0db4f",[3130]="d922f6d7681bc0683c69d44591a0db4f",[3131]="d922f6d7681bc0683c69d44591a0db4f",[3132]="d922f6d7681bc0683c69d44591a0db4f",[3133]="d922f6d7681bc0683c69d44591a0db4f",[3134]="d922f6d7681bc0683c69d44591a0db4f",[3135]="d922f6d7681bc0683c69d44591a0db4f",[3136]="d922f6d7681bc0683c69d44591a0db4f",[3137]="4c5b0c29cfa3cc311e744def037a73bb",[3209]="51234e15d5fe742353c75bd84ee86a55",[3210]="d922f6d7681bc0683c69d44591a0db4f",[3211]="d922f6d7681bc0683c69d44591a0db4f",[3212]="b0a0003c039b1982659c487fdf0a6eae",[3213]="2cace3234ec5e9f7782d4d763b0f1484",[3214]="5a4bf0d7cfdd00491470dfb1fca12272",[3215]="1f9deae141b36796b883c99af6a2923f",[3216]="8f97928fb8a176e079091fc24e7361c6",[3217]="7661020b0486a3e1c02efee6085c2014",[3218]="25e43fbfc4d6c1b782eb3adf0a13be4f",[3219]="11e3dcc6b42a72ef0688d06cc32f2e17",[3220]="03e6aac1c314388ecfcff01d78f364dd",[3221]="8ae5701eb05e38e5a86ebb804cd77dbd",[3222]="c1b01bca35e0cf9c1ccc99ad5210d49a",[3223]="099cdc63bf5c34cfb3d394526fe805e9",[3224]="4db6f88e38afc5a077e708285cc8b9bc",[3225]="a10aae8b5a95753a9720a68326b7d67d",[3226]="6bb5e54336eb6b2dc6851dc438a4438e",[3227]="9b76d6e2bf7af908612779ba29e64816",[3228]="fa7841126b9408c97b7bdced8f9044ab",[3229]="d922f6d7681bc0683c69d44591a0db4f",[3230]="d922f6d7681bc0683c69d44591a0db4f",[3231]="d922f6d7681bc0683c69d44591a0db4f",[3232]="d922f6d7681bc0683c69d44591a0db4f",[3233]="d922f6d7681bc0683c69d44591a0db4f",[3234]="d922f6d7681bc0683c69d44591a0db4f",[3235]="d922f6d7681bc0683c69d44591a0db4f",[3236]="d922f6d7681bc0683c69d44591a0db4f",[3237]="421bc7212944e75f6636ec4f69f5ddd8",[3309]="51234e15d5fe742353c75bd84ee86a55",[3310]="d922f6d7681bc0683c69d44591a0db4f",[3311]="d922f6d7681bc0683c69d44591a0db4f",[3312]="9714af07891541ed0e930d53d47b80ea",[3313]="b1e8804786290587725faeda13df4708",[3314]="29309cec69a3456bed5793d1818da464",[3315]="01a7a7fb14cbcfacc45233071d95fa5b",[3316]="345890f794ef9dd9bd5203ac18a59619",[3317]="8cf04fce1b14b24409be9191b266f35d",[3318]="927f984ed07d03fa3c0d8ea7a25e1a14",[3319]="cdda90f7598d8eaa43c2ef64449ccc93",[3320]="03985f2b135d9ac73ae3bacf64717635",[3321]="19ccc53ab2d721bade2b3f2a783834c0",[3322]="30072cd2f7254167bf4b20dc7f6bb6e1",[3323]="b89c743dea7554e19c19a4ead24f6108",[3324]="b4200f319b13cd9bf53814ccdb8f5869",[3325]="eb872739127e589489380c8e45f93a41",[3326]="b1871b2117c80a491696381a263f9f88",[3327]="3d363f403e8db9697e3f558086ba3eeb",[3328]="d922f6d7681bc0683c69d44591a0db4f",[3329]="d922f6d7681bc0683c69d44591a0db4f",[3330]="d922f6d7681bc0683c69d44591a0db4f",[3331]="d922f6d7681bc0683c69d44591a0db4f",[3332]="d922f6d7681bc0683c69d44591a0db4f",[3333]="d922f6d7681bc0683c69d44591a0db4f",[3334]="d922f6d7681bc0683c69d44591a0db4f",[3335]="d922f6d7681bc0683c69d44591a0db4f",[3336]="d922f6d7681bc0683c69d44591a0db4f",[3337]="4c5b0c29cfa3cc311e744def037a73bb",[3409]="51234e15d5fe742353c75bd84ee86a55",[3410]="d922f6d7681bc0683c69d44591a0db4f",[3411]="d922f6d7681bc0683c69d44591a0db4f",[3412]="d0ce609cc3c5fa5e8e435a451091b13c",[3413]="032e56d1e79d5374f93ce81dbba54b15",[3414]="5b2ec7be432cc1e4aeabd34017850967",[3415]="e5bdb267d7ff950cad2e86c50c5b2ae4",[3416]="fc18a5d8fe99f7d2584c19f35863eef7",[3417]="6deef485b19e88875a7886c1c017156e",[3418]="a7daaef2080c4105b31138bfda4485d5",[3419]="4c542f6b13feff3e50657b00347ef43a",[3420]="cf1d6560b3949d99d0a599c761777305",[3421]="712fe5edaadbf96b66511a763810fb2c",[3422]="da2ae05add74c73a514ed6ef600a3cd4",[3423]="dd9e1cd0c0a25c3457dd34daeee42985",[3424]="85c57269ef3c2fde96dc0ff8e001cb1e",[3425]="3d2fac557b63d890db0711b796fb7638",[3426]="26c18ec9ffc77de491853fdb6ed92a41",[3427]="bbd67be5a48727cc715f883a5f4bf189",[3428]="46cbee94f117128fcbdea1c88d74b7bd",[3429]="d922f6d7681bc0683c69d44591a0db4f",[3430]="d922f6d7681bc0683c69d44591a0db4f",[3431]="d922f6d7681bc0683c69d44591a0db4f",[3432]="d922f6d7681bc0683c69d44591a0db4f",[3433]="d922f6d7681bc0683c69d44591a0db4f",[3434]="d922f6d7681bc0683c69d44591a0db4f",[3435]="d922f6d7681bc0683c69d44591a0db4f",[3436]="d922f6d7681bc0683c69d44591a0db4f",[3437]="421bc7212944e75f6636ec4f69f5ddd8",[3509]="51234e15d5fe742353c75bd84ee86a55",[3510]="d922f6d7681bc0683c69d44591a0db4f",[3511]="d922f6d7681bc0683c69d44591a0db4f",[3512]="aa36cf7f6debf520a17c287c1cbf84c5",[3513]="dcfd88f5a3a621079c3c998dad131604",[3514]="3ea20268e461c31219b7695c39b6c4f4",[3515]="8bdef760cbd2026766dc8e72609d923f",[3516]="090ef5716e45b4af898ade3a6ce1c19f",[3517]="a88af0ea376e10ea23d14e35df0496f4",[3518]="91ae508101e2c0897d66ee8819a34dfd",[3519]="54895ce16e55795cab62a33e4e8c85e0",[3520]="f0ba007aa3a4670732307e9e0e3136ff",[3521]="da0283e9ac72584a2cd9216e49ece638",[3522]="b6174fc40546d3523bf3ef2cb6a8faeb",[3523]="aa72c4a1c0bb64c2839f295e1f835e86",[3524]="4ed4aabef7238297bfa4524be44343b5",[3525]="b43dbb198582ecafd397d0b6a7b613bf",[3526]="7b9395665850d3091afbab586e3f570e",[3527]="eceb302247c77e4bdd9e16cc120671a7",[3528]="bc4cc55ec61b345d4c87459f15253fee",[3529]="bf663ce365473eba2d1a242d7626ac16",[3530]="c583a4705f6a867eefc8fbebb593cb29",[3531]="d922f6d7681bc0683c69d44591a0db4f",[3532]="d922f6d7681bc0683c69d44591a0db4f",[3533]="d922f6d7681bc0683c69d44591a0db4f",[3534]="d922f6d7681bc0683c69d44591a0db4f",[3535]="d922f6d7681bc0683c69d44591a0db4f",[3536]="d922f6d7681bc0683c69d44591a0db4f",[3537]="4c5b0c29cfa3cc311e744def037a73bb",[3609]="51234e15d5fe742353c75bd84ee86a55",[3610]="d922f6d7681bc0683c69d44591a0db4f",[3611]="d922f6d7681bc0683c69d44591a0db4f",[3612]="d922f6d7681bc0683c69d44591a0db4f",[3613]="b73cbb8e4fdf0f085a03f498a57f3350",[3614]="556c92d29983a419fcfee314b1c77567",[3615]="f7503a16ea07b463f0384c5ead9ffd55",[3616]="6525c45e524f7d76b101f17812856443",[3617]="7c15a335126a4e453d352bd466864a51",[3618]="d2e01357bffab28546a188605e79cff0",[3619]="5954ca81a7f53672ac0f7062f705c4c5",[3620]="b6daa2f47e545375296cd3849de3b424",[3621]="bb0d2985fcbccb7bda800836ef05a22b",[3622]="b8eefe87d2a3a447d890b15f5c40bf46",[3623]="6ea831ac1e56eb03a26343f6b0a1557c",[3624]="52d9987519af4fb84fca7bc6d7446f8a",[3625]="714ca644a0a043d2c45c801e65742e84",[3626]="6d0ea476abf5835bda9dc8f1aa9340e1",[3627]="1fedfde62b0b4ab9d87bb83abb2bd348",[3628]="34ab737892794221a22f6cb81dca7bf0",[3629]="97d99c06f724ace34aff51b3abd793d9",[3630]="0ac9ef4a8eddffc8e1284828df592560",[3631]="38d565030e6eccbd7cd6ff15e7e0b065",[3632]="4237019c433cf42fc88d3cf9b3a190ec",[3633]="d922f6d7681bc0683c69d44591a0db4f",[3634]="d922f6d7681bc0683c69d44591a0db4f",[3635]="d922f6d7681bc0683c69d44591a0db4f",[3636]="d922f6d7681bc0683c69d44591a0db4f",[3637]="421bc7212944e75f6636ec4f69f5ddd8",[3709]="51234e15d5fe742353c75bd84ee86a55",[3710]="d922f6d7681bc0683c69d44591a0db4f",[3711]="d922f6d7681bc0683c69d44591a0db4f",[3712]="d922f6d7681bc0683c69d44591a0db4f",[3713]="d922f6d7681bc0683c69d44591a0db4f",[3714]="9177ebb9b48bd77bf3971ab8aa9b2e89",[3715]="11905e85b4e76730919226852916af97",[3716]="cf6a81c880b9543cd688e60849e66510",[3717]="aa5f97407a73b42009e33809e704e628",[3718]="d169ea10ecaa019e35d6eaafafc897f1",[3719]="f4ae0bcad72211399f9cf818bbc77f0e",[3720]="e8fd44ed3a7cce06dd33b740b756cefe",[3721]="bbd04e84bde2237a9c0487e04ca12216",[3722]="dfd62973196673a4df9a3cb41b922f59",[3723]="160f08d87614671d1326fd8f4ac6df60",[3724]="2c2066bd8d132c67d3b1e7122b9f061d",[3725]="41e760a006d5b099fd870764c1a0344b",[3726]="db642d661345b2b25ef1f00d90927ee6",[3727]="340265f79055e13e7eff660ad6d3d44d",[3728]="61aa6c9870e1b6158732f3a540c31f9e",[3729]="db2cadb81b4208beeb60128fea8bc8c1",[3730]="6ce6514ac1c6b9340067e01017a45014",[3731]="f9635c1dbd69baf30625a6e70726e513",[3732]="ab706461189b54cd6ff94d16bee1d2ab",[3733]="5887553c9709e729e7f203073f6e7b73",[3734]="d922f6d7681bc0683c69d44591a0db4f",[3735]="d922f6d7681bc0683c69d44591a0db4f",[3736]="d922f6d7681bc0683c69d44591a0db4f",[3737]="4c5b0c29cfa3cc311e744def037a73bb",[3809]="51234e15d5fe742353c75bd84ee86a55",[3810]="d922f6d7681bc0683c69d44591a0db4f",[3811]="d922f6d7681bc0683c69d44591a0db4f",[3812]="d922f6d7681bc0683c69d44591a0db4f",[3813]="d922f6d7681bc0683c69d44591a0db4f",[3814]="e6fd09aa3cac4ef9669e837b078f9cb8",[3815]="faf91253d81900b12ef3da0ad9eea8c4",[3816]="2beb62e0993baa1888b778a91fc131e0",[3817]="f15b3b1aa5959dfea5dc4692399401c3",[3818]="e7a5df01c2aff584077d5c651e63689c",[3819]="424092168913620061488c7996170269",[3820]="11cb359879eb0af149e60bf8f0af5199",[3821]="b6765e01dceb542e66ab570b4b10e039",[3822]="6a77408be011949b8290d135ebb6248e",[3823]="d7b89552c41bcbe7dcc6556ac986334b",[3824]="77a5a5b141faea2d4f2a5c8934d6ca68",[3825]="355286d40b604de93a1592cabba126a7",[3826]="d352980911c59d6a65b36f7858329312",[3827]="11075164223e4102f2a008e599c6431e",[3828]="808e358ba77901b45969a2c4f1a3d908",[3829]="12298ff7dbb8327bed450a1247d3a320",[3830]="4f207d349e9e4a6529bc8b78c493d916",[3831]="c8a36ad317f86dfc1a07670620fd7bfe",[3832]="529c6facb90915644c42e7358916d821",[3833]="c0c1375c85c6dcaac8bda6b9df910f69",[3834]="d922f6d7681bc0683c69d44591a0db4f",[3835]="d922f6d7681bc0683c69d44591a0db4f",[3836]="d5ab776bd4d3e3127a68a75f5dd94406",[3837]="421bc7212944e75f6636ec4f69f5ddd8",[3909]="51234e15d5fe742353c75bd84ee86a55",[3910]="d922f6d7681bc0683c69d44591a0db4f",[3911]="d922f6d7681bc0683c69d44591a0db4f",[3912]="d922f6d7681bc0683c69d44591a0db4f",[3913]="d922f6d7681bc0683c69d44591a0db4f",[3914]="d922f6d7681bc0683c69d44591a0db4f",[3915]="d922f6d7681bc0683c69d44591a0db4f",[3916]="a129581feb09f8b064d36a3dbea55e93",[3917]="945eae74887e5f8067f7f2f18d07e448",[3918]="ed9759062107eee311380aea263b9899",[3919]="10894bd494656ce668d40429719c8d90",[3920]="e43042560fef489fe46e1382a0e027d2",[3921]="d7a720203864ed9836773b8cc38b5cf5",[3922]="00df4cea8c05b8dbfd8196dee6834813",[3923]="3a631b4e2b2985a846dbc81d98193bda",[3924]="4051e371f6392f41cc56b2474e779aa3",[3925]="c06361e4ce614317140c7e2c50b8a897",[3926]="7a2f7ba01f9bebfd45cca92d76c31add",[3927]="452489442c86fa293e3cc56fcf9e937b",[3928]="4f2226d18e8cc13b30e73e327570c8a9",[3929]="3e925b087b653e049cfa26fb036a5576",[3930]="99648eef7bc21ffe8a9bd708587c63ef",[3931]="d412d51da9b7a32152d69b3cf10cb86d",[3932]="6f5a4f0971cf33d8ec7aef7ae22558d7",[3933]="11eeca6ec0befa35dcd93adbaf19a857",[3934]="d922f6d7681bc0683c69d44591a0db4f",[3935]="d922f6d7681bc0683c69d44591a0db4f",[3936]="d922f6d7681bc0683c69d44591a0db4f",[3937]="4c5b0c29cfa3cc311e744def037a73bb",[4009]="aaa05407a4fa1407042693af8d9a584f",[4010]="d922f6d7681bc0683c69d44591a0db4f",[4011]="d922f6d7681bc0683c69d44591a0db4f",[4012]="d922f6d7681bc0683c69d44591a0db4f",[4013]="d922f6d7681bc0683c69d44591a0db4f",[4014]="d922f6d7681bc0683c69d44591a0db4f",[4015]="d922f6d7681bc0683c69d44591a0db4f",[4016]="d922f6d7681bc0683c69d44591a0db4f",[4017]="457818fe5fde69035a18357cdcbb8f91",[4018]="f4d82a1f52f710558a43e2dbc1626e70",[4019]="da79f450b01e6de33d982b97238879ef",[4020]="91224335ec63968b17d5ab5da99ae891",[4021]="00375709787253be838a269b4b41b8d0",[4022]="394f3496f48a211d5d82d1dcc6873bb8",[4023]="88e45a6443b41a212f80246c954593fb",[4024]="91f62b1997d54dd35b4c2b0ba65ac1a3",[4025]="60656f7e592c6dec3cf307fe167b75f7",[4026]="169b198d4930bce97e2200a41a81f282",[4027]="06c34294ce3293a65158d91150fc6ebf",[4028]="ec99f0bf2fb7f1a712f5bb16671694e5",[4029]="4c5eca9f2dd85c76a58135d7bccf2e0e",[4030]="64490313e9e1f665f20582552f40c193",[4031]="8efd2806ac7a834631b48e1f6f60adf8",[4032]="3d30f9f907dc6b6511e986601cdc1d27",[4033]="aac9cffa46faa2f1f4e3fd6189115ba5",[4034]="d922f6d7681bc0683c69d44591a0db4f",[4035]="d922f6d7681bc0683c69d44591a0db4f",[4036]="d922f6d7681bc0683c69d44591a0db4f",[4037]="421bc7212944e75f6636ec4f69f5ddd8",[4109]="51234e15d5fe742353c75bd84ee86a55",[4110]="d922f6d7681bc0683c69d44591a0db4f",[4111]="d922f6d7681bc0683c69d44591a0db4f",[4112]="d922f6d7681bc0683c69d44591a0db4f",[4113]="d922f6d7681bc0683c69d44591a0db4f",[4114]="d922f6d7681bc0683c69d44591a0db4f",[4115]="d922f6d7681bc0683c69d44591a0db4f",[4116]="d922f6d7681bc0683c69d44591a0db4f",[4117]="2c09ce5da0b6a06510b347b526d42010",[4118]="c6d090a676ca1e365e8cfc510300d1d2",[4119]="81035b58b9161dcb055197d34419ce12",[4120]="c2b6448eae1a0910a80f6ecc0dddf3e7",[4121]="552a5c0e884613c84422c0f11bd47aa9",[4122]="193b33cabdb92498b041252217be9c6d",[4123]="3d70290278bf41d1f4d6cc7e15e4c45a",[4124]="0f9b5643c039d91105a9d3e4cd691c3e",[4125]="b786fcf27e06278fa73585aad86854a2",[4126]="46d5627fb2ebe98382af547b061ccf9a",[4127]="0e0fccc7f00b49a1533775d8a5b7c4cc",[4128]="69235aa5d15aa34f1a6cc79b90e6877c",[4129]="b5c7dd072c88aaf06d45ffcd776319ff",[4130]="4a223b5ef485f86aca0557d144262e0d",[4131]="4280eed3600b649873018302b8082b38",[4132]="fac6dfcfa034773dfe9432f746f05025",[4133]="b10b6cde58138faf528faad424255609",[4134]="d922f6d7681bc0683c69d44591a0db4f",[4135]="d922f6d7681bc0683c69d44591a0db4f",[4136]="d922f6d7681bc0683c69d44591a0db4f",[4137]="4c5b0c29cfa3cc311e744def037a73bb",[4209]="51234e15d5fe742353c75bd84ee86a55",[4210]="d922f6d7681bc0683c69d44591a0db4f",[4211]="d922f6d7681bc0683c69d44591a0db4f",[4212]="d922f6d7681bc0683c69d44591a0db4f",[4213]="d922f6d7681bc0683c69d44591a0db4f",[4214]="d922f6d7681bc0683c69d44591a0db4f",[4215]="d922f6d7681bc0683c69d44591a0db4f",[4216]="d922f6d7681bc0683c69d44591a0db4f",[4217]="d922f6d7681bc0683c69d44591a0db4f",[4218]="135d9635ab361aa125f55b22217b80af",[4219]="2dc2ed2cd6da1e8a69b695def547f5c5",[4220]="d922f6d7681bc0683c69d44591a0db4f",[4221]="9c80d1544031d3b1295ed4ec974735ba",[4222]="e905212a532fc1998156e4923c658c2b",[4223]="2c18313f4f58b5f37affc5cb84553567",[4224]="380ef90e2a6e3ad69916b5116a1de7fa",[4225]="67e67bf99f1c5ddeec2956f75a4902fd",[4226]="6ef544f9dd0d571714b7f3ac5753687a",[4227]="41666af8b12fc7a7ef459b8050f33881",[4228]="62c16543ccbe5a9b0ae1872b99d9c7aa",[4229]="d5097ee16efe0298036d1508e933ac5d",[4230]="731c99c24c7f91f8b3d644f2089fe0b9",[4231]="6f3ac55606f36e9b0a239be0a1b0b035",[4232]="3d00329f6204b2faef545c98fad396d6",[4233]="e0ffaebbcbc78cd380e19bf959e521e0",[4234]="d922f6d7681bc0683c69d44591a0db4f",[4235]="d922f6d7681bc0683c69d44591a0db4f",[4236]="d922f6d7681bc0683c69d44591a0db4f",[4237]="421bc7212944e75f6636ec4f69f5ddd8",[4309]="51234e15d5fe742353c75bd84ee86a55",[4310]="d922f6d7681bc0683c69d44591a0db4f",[4311]="d922f6d7681bc0683c69d44591a0db4f",[4312]="d922f6d7681bc0683c69d44591a0db4f",[4313]="d922f6d7681bc0683c69d44591a0db4f",[4314]="d922f6d7681bc0683c69d44591a0db4f",[4315]="d922f6d7681bc0683c69d44591a0db4f",[4316]="d922f6d7681bc0683c69d44591a0db4f",[4317]="d922f6d7681bc0683c69d44591a0db4f",[4318]="d922f6d7681bc0683c69d44591a0db4f",[4319]="d922f6d7681bc0683c69d44591a0db4f",[4320]="d922f6d7681bc0683c69d44591a0db4f",[4321]="d922f6d7681bc0683c69d44591a0db4f",[4322]="450c1cf710e7d2f1dc81b913d7af42a7",[4323]="4e8a42b00f0dc514b950e5449b788818",[4324]="d922f6d7681bc0683c69d44591a0db4f",[4325]="cacde50ef6b895800f3522fb5594b630",[4326]="e5a3735645b78796e59bbf6868ead449",[4327]="cdb264915d06566bba43d38909be4c37",[4328]="f802b6459b6ffdb20cb26a4aca1f824b",[4329]="9d596a8a7549a7934de32a6c6b99a7c1",[4330]="adc016998bb47772b71d0e57496e3482",[4331]="da56c41ba392872689d1cd2e10fa5a68",[4332]="0e2978b3a45c53e55ed3be9604bd5491",[4333]="d922f6d7681bc0683c69d44591a0db4f",[4334]="d922f6d7681bc0683c69d44591a0db4f",[4335]="d922f6d7681bc0683c69d44591a0db4f",[4336]="d922f6d7681bc0683c69d44591a0db4f",[4337]="4c5b0c29cfa3cc311e744def037a73bb",[4409]="51234e15d5fe742353c75bd84ee86a55",[4410]="d922f6d7681bc0683c69d44591a0db4f",[4411]="d922f6d7681bc0683c69d44591a0db4f",[4412]="d922f6d7681bc0683c69d44591a0db4f",[4413]="d922f6d7681bc0683c69d44591a0db4f",[4414]="d922f6d7681bc0683c69d44591a0db4f",[4415]="d922f6d7681bc0683c69d44591a0db4f",[4416]="d922f6d7681bc0683c69d44591a0db4f",[4417]="d922f6d7681bc0683c69d44591a0db4f",[4418]="d922f6d7681bc0683c69d44591a0db4f",[4419]="d922f6d7681bc0683c69d44591a0db4f",[4420]="d922f6d7681bc0683c69d44591a0db4f",[4421]="d922f6d7681bc0683c69d44591a0db4f",[4422]="d922f6d7681bc0683c69d44591a0db4f",[4423]="d922f6d7681bc0683c69d44591a0db4f",[4424]="d922f6d7681bc0683c69d44591a0db4f",[4425]="9670f41a4acd2b853f7db93991f0d2cb",[4426]="af7b1f9878bc9bccfede792f1a3ddb5c",[4427]="0b5faf1bf57ce70da49318181da39af9",[4428]="f4d7ae6e135c291d5d9fd7f85b58f8ca",[4429]="1bea76593990c6d202390bcd6c73c1d0",[4430]="0b5ad8dbe6f7b8368e9a97b023d41436",[4431]="8b1a1e3a0b6313451966d7b88784f218",[4432]="b7363569221d193f882830a19a227703",[4433]="d922f6d7681bc0683c69d44591a0db4f",[4434]="d922f6d7681bc0683c69d44591a0db4f",[4435]="d922f6d7681bc0683c69d44591a0db4f",[4436]="d922f6d7681bc0683c69d44591a0db4f",[4437]="421bc7212944e75f6636ec4f69f5ddd8",[4509]="d922f6d7681bc0683c69d44591a0db4f",[4510]="d922f6d7681bc0683c69d44591a0db4f",[4511]="d922f6d7681bc0683c69d44591a0db4f",[4512]="d922f6d7681bc0683c69d44591a0db4f",[4513]="d922f6d7681bc0683c69d44591a0db4f",[4514]="d922f6d7681bc0683c69d44591a0db4f",[4515]="d922f6d7681bc0683c69d44591a0db4f",[4516]="d922f6d7681bc0683c69d44591a0db4f",[4517]="d922f6d7681bc0683c69d44591a0db4f",[4518]="d922f6d7681bc0683c69d44591a0db4f",[4519]="d922f6d7681bc0683c69d44591a0db4f",[4520]="d922f6d7681bc0683c69d44591a0db4f",[4521]="d922f6d7681bc0683c69d44591a0db4f",[4522]="d922f6d7681bc0683c69d44591a0db4f",[4523]="d922f6d7681bc0683c69d44591a0db4f",[4524]="d922f6d7681bc0683c69d44591a0db4f",[4525]="d922f6d7681bc0683c69d44591a0db4f",[4526]="d922f6d7681bc0683c69d44591a0db4f",[4527]="d922f6d7681bc0683c69d44591a0db4f",[4528]="d922f6d7681bc0683c69d44591a0db4f",[4529]="d922f6d7681bc0683c69d44591a0db4f",[4530]="8e8c65dd2562216d2a8b03ff687d222f",[4531]="04aa63eda675fd92e806a3c217bd6e8d",[4532]="d922f6d7681bc0683c69d44591a0db4f",[4533]="d922f6d7681bc0683c69d44591a0db4f",[4534]="d922f6d7681bc0683c69d44591a0db4f",[4535]="d922f6d7681bc0683c69d44591a0db4f",[4536]="d922f6d7681bc0683c69d44591a0db4f",[4537]="4c5b0c29cfa3cc311e744def037a73bb",}

--Tol'Garod
for i=2,6 do 
    for j=2,5 do
        Map.EMB[2035 + 100* i + j] =  string.format("Sirus6_%d_%d", 23+i, 23+j)
    end
end
--VIP Forbes
Map.VIPB = {}
for i=1,4 do 
    for j=1,5 do
        Map.VIPB[1010 + 100* i + j] =  string.format("vip_%d_%d", 36+i, 23+j)
    end
end
-- Shar'gel
for i=0,3 do 
    for j=0,2 do
        Map.OLMB[3332 + 100* i + j] =  string.format("TWN_%d_%d", 30+i, 30+j)
    end
end

-- TODO
-- Kotmogu
-- [4537]= "valleyofpower27_27",[4637]= "valleyofpower28_27",[4737]= "valleyofpower29_27",[4837]= "valleyofpower30_27",[4937]= "valleyofpower31_27",
-- [4538]= "valleyofpower27_28",[4638]= "valleyofpower28_28",[4738]= "valleyofpower29_28",[4838]= "valleyofpower30_28",[4938]= "valleyofpower31_28",
-- [4539]= "valleyofpower27_29",[4639]= "valleyofpower28_29",[4739]= "valleyofpower29_29",[4839]= "valleyofpower30_29",[4939]= "valleyofpower31_29",
-- [4540]= "valleyofpower27_30",[4640]= "valleyofpower28_30",[4740]= "valleyofpower29_30",[4840]= "valleyofpower30_30",[4940]= "valleyofpower31_30",
-- [4541]= "valleyofpower27_31",[4641]= "valleyofpower28_31",[4741]= "valleyofpower29_31",[4841]= "valleyofpower30_31",[4941]= "valleyofpower31_31",
-- Two Spires
-- [4537]= "TWP30_27",[4637]= "TWP31_27",[4737]= "TWP32_27",
-- [4538]= "TWP30_28",[4638]= "TWP31_28",[4738]= "TWP32_28",
-- [4539]= "TWP30_29",[4639]= "TWP31_29",[4739]= "TWP32_29",
-- ???
-- local MMname = "Sirus2_%d"
-- for i=0,8 do 
--     for j=0,8 do
--         Map.NRMB[3022 +  100* i + j] = MMname:format(1+ 9* j + i)
--     end
-- end
-- ???
-- local MMname = "Sirus3_%d"
-- for i=0,4 do 
--     for j=0,4 do
--         Map.NRMB[3022 +  100* i + j] = MMname:format(1+ 5* j + i)
--     end
-- end
-- Felyard
-- local MMname = "sirus5_%d_%d"
-- for i=0,22 do 
--     for j=0,17 do
--         Map.NRMB[3525 +  100* i + j] = MMname:format(21+i, 22+j)
--     end
-- end
-- Hyjal???
-- local MMname = "Sirus8_%d_%d"
-- for i=0,12 do 
--     for j=0,12 do
--         Map.EMB[2035 +  100* i + j] =  MMname:format(27+i, 27+j)
--     end
-- end
-- SandChamber???
-- local MMname = "SandChamber_%d_%d"
-- for i=0,3 do 
--     for j=0,3 do
--         Map.NRMB[3022 +  100* i + j] =  MMname:format(33+i, 21+j)
--     end
-- end

Map.MiniMapBlks = {[1]={Map.KMB,1908,-1387.5660,-2060.4561,},[2]={Map.EMB,2420,2930.591080,-1480.211752,},[3]={Map.OLMB,1221,973.145157,-7842.942698,},[4]={Map.NRMB,1109,198.700859,-4335.362984,},[5]={Map.VIPB,1000,1430,430,},[1003]={Map.DMB,5033,-1580.243817,-1403.381588,},[2011]={Map.BMB,4111,4241.011121,-1924.128369,},}

--------
-- Get minimap info for map
-- (map id)
-- ret: table, x, y

function Nx.Map:GetMiniInfo (mapId)

	local winfo = self.MapWorldInfo[mapId]
	local id = winfo.MId

	if not id then
		id = floor (mapId / 1000)

		if id == 9 then	-- BGs?
			return
		end

		local info = self.MapInfo[id]
		if not info then
			return
		end
	end

	local t = self.MiniMapBlks[id]

	if not t then		-- "Isle of Quel'Danas"??

--		if NxData.DebugMap then
--			Nx.prt ("GetMiniInfo: missing %s", id)
--		end
		return
	end

	return t,t[3],t[4],t[5] or 1
end

--------
-- Get minimap block file name (256x256 texture)

function Nx.Map:GetMiniBlkName (miniT, x, y)

	local off = x * 100 + y

--	Nx.prtCtrl ("%s, %s, %s = %s", x, y, off, off + miniT[2])

	return miniT[1][off + miniT[2]]
end

-------------------------------------------------------------------------------


--[[ 
-- WorldMapArea.dbc
-- bounds y1, y2, x1, x2
-- 4.0.1 11,1,17,"Barrens",2622.91650391,-7510.41650391,1612.49987793,-5143.75,-1,0,0,0x0,
-- 4.0.3 11,1,17,"Barrens",202.083328247,-5543.75,1810.41662598,-2020.83325195,-1,0,0,0x0,
-- 5.0.4 11,1,17,"Barrens",202.083328247,-5543.75,1810.41662598,-2020.83325195,-1,0,0,0x0,10,20,

-- x = (x-maEntry->x1)/((maEntry->x2-maEntry->x1)/100);
-- y = (y-maEntry->y1)/((maEntry->y2-maEntry->y1)/100);    // client y coord from top to down
--
-- MapWorldInfo table calc:
-- Scale = -y2 + y1 / 500
-- X = -y1 / 5
-- Y = -x1 / 5
function Nx.Map:ConvertMapData()

	local data = {}
	NxData.DumpZoneOverlays = data

	local areas = {}
	NxData.DumpMapAreas = areas

	local wma = { strsplit ("\n", self.WorldMapArea) }
	local wmo = { strsplit ("\n", self.WorldMapOverlay) }

	for n, s in ipairs (wma) do

		local aid, map, _, aname, ay1, ay2, ax1, ax2 = strsplit (",", s)
		aid = tonumber (aid)
		map = tonumber (map)

		aname = gsub (aname, '"', "")
		aname = strlower (aname)

		local nxid = Nx.ID2Zone[aid]
		if nxid and nxid > 0 then

			local name, minLvl, maxLvl, faction, cont = strsplit ("!", Nx.Zones[nxid])

			if faction ~= "3" then	-- Not instance

				ay1 = tonumber (ay1)
				ay2 = tonumber (ay2)
				ax1 = tonumber (ax1)
				ax2 = tonumber (ax2)

				local scale = (-ay2 + ay1) / 500
				if scale > 0 then
					local t = {}
					areas[nxid] = t
					t[1] = scale
					t[2] = -ay1 / 5						-- X
					t[3] = -ax1 / 5						-- Y
					t[4] = aname
				end
			end
		end

		if map == 0 or map == 1 then
--		if map == 648 or map == 646 or map == 730 then			-- Maelstrom
--		if map == 654 then	-- Gilneas
--		if map == 571 or map == 609 then			-- Northrend, DK start

			Nx.prt ("%s %s %s", aid, map, aname)

			local area = {}

			for n, os in ipairs (wmo) do

				-- 84,41,736,0,0,0,"BanethilHollow",175,235,374,221,292,430,375,497,0x0,

				local _, oaid, _, _, _, _, oname, w, h, x, y = strsplit (",", os)

				oname = gsub (oname, '"', "")

				if tonumber (oaid) == aid and #oname > 0 then
					oname = strlower (oname)
					area[oname] = format ("%s,%s,%s,%s", x, y, w, h)
				end
			end

			if next (area) then	-- Not empty?
				data[aname] = area
			end
		end
	end
end

Nx.Map.WorldMapArea = {906,1000,6500,"DustwallowMarshScenarioAlliance",-3979.16601563,-5037.5,-3468.75,-4175.0,-1,0,0,0x0,0,0,}

Nx.Map.WorldMapOverlay = {3515,806,6517,0,0,0,"",0,0,0,0,526,386,557,423,0x0,}
 ]]
-------------------------------------------------------------------------------
--EOF

















