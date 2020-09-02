/*
x==============================================================================x
x               			       Variables                                   x
x==============================================================================x
*/

enum @Datos
{
    FPSAnterior,
    FPSActual,
	VehiculosJ
};
new Datos[MAX_PLAYERS][@Datos];

new Float:posiciones[3][4] =
{
	{1461.9105, 2784.1587, 11.3846, 236.1313},
	{1463.2231, 2776.7620, 11.3846, 269.6583},
	{1464.3828, 2764.1777, 11.3846, 312.5854}
};

new const InteriorDialogNames[0b1001001][] =
{
    "Four Dragons Suite","Ganton Gym","Brothel","Brothel2","Inside Track Betting","Blastin' Fools Records","The Big Spread Ranch","Warehouse 1","Warehouse 2","B Dup's Apartment","B Dup's Crack Palace","Wheel Arch Angels","OG Loc's House","Barber Shop","Planning Department","LVPD","Pro-Laps","Sex Shop","LV Tattoo parlor","Lost SF Tattoo parlor",
	"24/7 (ver 1)","Diner 1","Pizza Stack","Rusty Brown's Donuts","Ammu-nation","Victim","Loco Low Co","SFPD",
    "24/7 (ver 2 - large)","Below The Belt Gym (Las Venturas)","Transfenders","World of Coq","Ammu-nation (ver 2)","SubUrban","Denise's Bedroom","Helena's Barn","Barbara's Love nest","SF Garage","Oval Stadium","8-Track Stadium","The Pig Pen (strip club 2)","Four Dragons","Liberty City","Ryder's house","Sweet's House","RC Battlefield","The Johnson House","Burger shot",
	"Caligula's Casino","Katie's Lovenest","Barber Shop 2 (Reece's)","Angel Pine Trailer","24/7 (ver 3)","Zip",
    "The Pleasure Domes","Madd Dogg's Mansion","Big Smoke's Crack Palace","Burning Desire Building","Wu-Zi Mu's","Abandoned AC tower","Wardrobe/Changing room","Didier Sachs","Casino (Redsands West)",
    "Kickstart Stadium","Club","Atrium","LS Tattoo Parlor","Safe House 1","Safe House 2","Safe House 3","Safe House 4","Sherman Dam","24/7 (ver 4)"
};

new const InteriorDialogNames2[0b1001001][] =
{
    "Jefferson Motel","Jet Interior","The Welcome Pump","Burglary House X1","Burglary House X2","Burglary House X3","Burglary House X4","Binco","4 Burglary houses","Blood Bowl Stadium","Budget Inn Motel Room",
	"Palamino Bank","Palamino Diner","Dillimore Gas Station","Lil' Probe Inn","Torreno's Ranch","Zombotech - lobby area","Crypt in LS cemetery (temple)",
	"Blueberry Liquor Store","Pair of Burglary Houses","Crack Den","Burglary House X11","Burglary House X12","Ammu-nation (ver 3)","Jay's Diner","24/7 (ver 5)","Warehouse 3","Michelle's Love Nest*","Burglary House X14","Sindacco Abatoir","K.A.C.C. Military Fuels Depot","Area 69","Burglary House X13","Unused Safe House","Millie's Bedroom","Barber Shop","Dirtbike Stadium",
	"Cobra Gym","LSPD","LS Airport","Burglary House X15","Burglary House X16","Burglary House X17","Bike School","Francis International Airport",
    "Vice Stadium","Burglary House X18","Burglary House X19","Zero's RC Shop","Ammu-nation (ver 4)","Ammu-nation (ver 5)","Burglary House X20","24/7 (ver 6)","Secret Valley Diner","Rosenberg's Office in Caligulas","Fanny Batter's Whore House","Colonel Furhberger's","Cluckin' Bell","The Camel's Toe Safehouse","Caligula's Roof","Old Venturas Strip Casino","Driving School",
	"Verdant Bluffs Safehouse","Bike School","Andromada","Four Dragons' Janitor's Office","Bar","Burglary House X21","Willowfield Safehouse","Burglary House X22","Burglary House X23","Otto's Autos","Wang Cars"
};

new const Float:InteriorDialogData[0b1001001][0b100] =
{
    {2003.1178, 1015.1948, 33.008, 351.5789},
    {770.8033, -0.7033, 1000.7267, 22.8599},
    {974.0177, -9.5937, 1001.1484, 22.6045},
    {961.9308, -51.9071, 1001.1172, 95.5381},
    {830.6016, 5.9404, 1004.1797, 125.8149},
    {1037.8276, 0.397, 1001.2845, 353.9335},
    {1212.1489, -28.5388, 1000.9531, 170.5692},
    {1290.4106, 1.9512, 1001.0201, 179.9419},
    {1412.1472, -2.2836, 1000.9241, 114.661},
    {1527.0468, -12.0236, 1002.0971, 350.0013},
    {1523.5098, -47.8211, 1002.2699, 262.7038},
    {612.2191, -123.9028, 997.9922, 266.5704},
    {512.9291, -11.6929, 1001.5653, 198.7669},
    {418.4666, -80.4595, 1001.8047, 343.2358},
    {386.5259, 173.6381, 1008.3828, 63.7399},
    {288.4723, 170.0647, 1007.1794, 22.0477},
    {206.4627, -137.7076, 1003.0938, 10.9347},
    {-100.2674, -22.9376, 1000.7188, 17.285},
    {-201.2236, -43.2465, 1002.2734, 45.8613},
    {-202.9381, -6.7006, 1002.2734, 204.2693},
    {-25.7220, -187.8216, 1003.5469, 5.0760},
    {454.9853, -107.2548, 999.4376, 309.0195},
    {372.5565, -131.3607, 1001.4922, 354.2285},
    {378.026, -190.5155, 1000.6328, 141.0245},
    {315.244, -140.8858, 999.6016, 7.4226},
    {225.0306, -9.1838, 1002.218, 85.5322},
    {611.3536, -77.5574, 997.9995, 320.9263},
    {246.0688, 108.9703, 1003.2188, 0.2922},
    {6.0856, -28.8966, 1003.5494, 5.0365},
    {773.7318, -74.6957, 1000.6542, 5.2304},
    {621.4528, -23.7289, 1000.9219, 15.6789},
    {445.6003, -6.9823, 1000.7344, 172.2105},
    {285.8361, -39.0166, 1001.5156, 0.7529},
    {204.1174, -46.8047, 1001.8047, 357.5777},
    {245.2307, 304.7632, 999.1484, 273.4364},
    {290.623, 309.0622, 999.1484, 89.9164},
    {322.5014, 303.6906, 999.1484, 8.1747},
    {-2041.2334, 178.3969, 28.8465, 156.2153},
    {-1402.6613, 106.3897, 1032.2734, 105.1356},
    {-1403.0116, -250.4526, 1043.5341, 355.8576},
    {1204.6689, -13.5429, 1000.9219, 350.0204},
    {2016.1156, 1017.1541, 996.875, 88.0055},
    {-741.8495, 493.0036, 1371.9766, 71.7782},
    {2447.8704, -1704.4509, 1013.5078, 314.5253},
    {2527.0176, -1679.2076, 1015.4986, 260.9709},
    {-1129.8909, 1057.5424, 1346.4141, 274.5268},
    {2496.0549, -1695.1749, 1014.7422, 179.2174},
    {366.0248, -73.3478, 1001.5078, 292.0084},
    {2233.9363, 1711.8038, 1011.6312, 184.3891},
    {269.6405, 305.9512, 999.1484, 215.6625},
    {414.2987, -18.8044, 1001.8047, 41.4265},
    {1.1853, -3.2387, 999.4284, 87.5718},
    {-30.9875, -89.6806, 1003.5469, 359.8401},
    {161.4048, -94.2416, 1001.8047, 0.7938},
    {-2638.8232, 1407.3395, 906.4609, 94.6794},
    {1267.8407, -776.9587, 1091.9063, 231.3418},
    {2536.5322, -1294.8425, 1044.125, 254.9548},
    {2350.1597, -1181.0658, 1027.9766, 99.1864},
    {-2158.6731, 642.09, 1052.375, 86.5402},
    {419.8936, 2537.1155, 10.0, 67.6537},
    {256.9047, -41.6537, 1002.0234, 85.8774},
    {204.1658, -165.7678, 1000.5234, 181.7583},
    {1133.35, -7.8462, 1000.6797, 165.8482},
    {-1420.4277, 1616.9221, 1052.5313, 159.1255},
    {493.1443, -24.2607, 1000.6797, 356.9864},
    {1727.2853, -1642.9451, 20.2254, 172.4193},
    {-202.842, -24.0325, 1002.2734, 252.8154},
    {2233.6919, -1112.8107, 1050.8828, 8.6483},
    {1211.2484, 1049.0234, 359.941, 170.9341},
    {2319.1272, -1023.9562, 1050.2109, 167.3959},
    {2261.0977, -1137.8833, 1050.6328, 266.88},
    {-944.2402, 1886.1536, 5.0051, 179.8548},
    {-26.1856, -140.9164, 1003.5469, 2.9087}
};

new const Float:InteriorDialogData2[0b1001001][0b100] =
{
    {2217.281, -1150.5349, 1025.7969, 273.7328},
    {1.5491, 23.3183, 1199.5938, 359.9054},
    {681.6216, -451.8933, -25.6172, 166.166},
    {234.6087, 1187.8195, 1080.2578, 349.4844},
    {225.5707, 1240.0643, 1082.1406, 96.2852},
    {224.288, 1289.1907, 1082.1406, 359.868},
    {239.2819, 1114.1991, 1080.9922, 270.2654},
    {207.5219, -109.7448, 1005.1328, 358.62},
    {295.1391, 1473.3719, 1080.2578, 352.9526},
    {-1417.8927, 932.4482, 1041.5313, 0.7013},
    {446.3247, 509.9662, 1001.4195, 330.5671},
    {2306.3826, -15.2365, 26.7496, 274.49},
    {2331.8984, 6.7816, 26.5032, 100.2357},
    {663.0588, -573.6274, 16.3359, 264.9829},
    {-227.5703, 1401.5544, 27.7656, 269.2978},
    {-688.1496, 942.0826, 13.6328, 177.6574},
    {-1916.1268, 714.8617, 46.5625, 152.2839},
    {818.7714, -1102.8689, 25.794, 91.1439},
    {255.2083, -59.6753, 1.5703, 1.4645},
    {446.626, 1397.738, 1084.3047, 343.9647},
    {227.3922, 1114.6572, 1080.9985, 267.459},
    {227.7559, 1114.3844, 1080.9922, 266.2624},
    {261.1165, 1287.2197, 1080.2578, 178.9149},
    {291.7626, -80.1306, 1001.5156, 290.2195},
    {449.0172, -88.9894, 999.5547, 89.6608},
    {-27.844, -26.6737, 1003.5573, 184.3118},
    {2135.2004, -2276.2815, 20.6719, 318.59},
    {306.1966, 307.819, 1003.3047, 203.1354},
    {24.3769, 1341.1829, 1084.375, 8.3305},
    {963.0586, 2159.7563, 1011.0303, 175.313},
    {2548.4807, 2823.7429, 10.8203, 270.6003},
    {215.1515, 1874.0579, 13.1406, 177.5538},
    {221.6766, 1142.4962, 1082.6094, 184.9618},
    {2323.7063, -1147.6509, 1050.7101, 206.5352},
    {344.9984, 307.1824, 999.1557, 193.643},
    {411.9707, -51.9217, 1001.8984, 173.3449},
    {-1421.5618, -663.8262, 1059.5569, 170.9341},
    {773.8887, -47.7698, 1000.5859, 10.7161},
    {246.6695, 65.8039, 1003.6406, 7.9562},
    {-1864.9434, 55.7325, 1055.5276, 85.8541},
    {-262.1759, 1456.6158, 1084.3672, 82.459},
    {22.861, 1404.9165, 1084.4297, 349.6158},
    {140.3679, 1367.8837, 1083.8621, 349.2372},
    {1494.8589, 1306.48, 1093.2953, 196.065},
    {-1813.213, -58.012, 1058.9641, 335.3199},
    {-1401.067, 1265.3706, 1039.8672, 178.6483},
    {234.2826, 1065.229, 1084.2101, 4.3864},
    {-68.5145, 1353.8485, 1080.2109, 3.5742},
    {-2240.1028, 136.973, 1035.4141, 269.0954},
    {297.144, -109.8702, 1001.5156, 20.2254},
    {316.5025, -167.6272, 999.5938, 10.3031},
    {-285.2511, 1471.197, 1084.375, 85.6547},
    {-26.8339, -55.5846, 1003.5469, 3.9528},
    {442.1295, -52.4782, 999.7167, 177.9394},
    {2182.2017, 1628.5848, 1043.8723, 224.8601},
    {748.4623, 1438.2378, 1102.9531, 0.6069},
    {2807.3604, -1171.7048, 1025.5703, 193.7117},
    {366.0002, -9.4338, 1001.8516, 160.528},
    {2216.1282, -1076.3052, 1050.4844, 86.428},
    {2268.5156, 1647.7682, 1084.2344, 99.7331},
    {2236.6997, -1078.9478, 1049.0234, 2.5706},
    {-2031.1196, -115.8287, 1035.1719, 190.1877},
    {2365.1089, -1133.0795, 1050.875, 177.3947},
    {1168.512, 1360.1145, 10.9293, 196.5933},
    {315.4544, 976.5972, 1960.8511, 359.6368},
    {1893.0731, 1017.8958, 31.8828, 86.1044},
    {501.9578, -70.5648, 998.7578, 171.5706},
    {-42.5267, 1408.23, 1084.4297, 172.068},
    {2283.3118, 1139.307, 1050.8984, 19.7032},
    {84.9244, 1324.2983, 1083.8594, 159.5582},
    {260.7421, 1238.2261, 1084.2578, 84.3084},
    {-1658.1656, 1215.0002, 7.25, 103.9074},
    {-1961.6281, 295.2378, 35.4688, 264.4891}
};

new const InteriorDialogInteriors[0b1001001][1] = { {11},{5},{3},{3},{3},{3},{3},{18},{1},{3},{2},{3},{3},{3},{3},{3},{3},{3},{3},{17},{17},{5},{5},{17},{7},{5},{2},{10},{10},{7},{1},{1},{1},{1},{1},{3},{5},{1},{1},{7},{2},{10},{1},{2},{1},{10},{3},{10},{1},{2},{2},{2},{18},{18},{3},{5},{2},{5},{1},{10},{14},{14},{12},{14},{17},{18},{16},{5},{6},{9},{10},{17},{16} };
new const InteriorDialogInteriors2[0b1001001][1] = {	{15},{1},{1},{3},{2},{1},{5},{15},{15},{15},{12},{0},{0},{0},{18},{0},{0},{0},{0},{2},{5},{5},{4},{4},{4},{4},{0},{4},{10},{1},{0},{0},{4},{12},{6},{12},{4},{6},{6},{14},{4},{5},{5},{3},{14},{16},{6},{6},{6},{6},{6},{15},{6},{6},{2},{6},{8},{9},{1},{1},{2},{3},{8},{0},{9},{10},{11},{8},{11},{9},{9},{0},{0} };

new VehicleNames[212][] =
{
   "Landstalker",  "Bravura",  "Buffalo", "Linerunner", "Perennial", "Sentinel",
   "Dumper",  "Firetruck" ,  "Trashmaster" ,  "Stretch",  "Manana",  "Infernus",
   "Voodoo", "Pony",  "Mule", "Cheetah", "Ambulance",  "Leviathan",  "Moonbeam",
   "Esperanto", "Taxi",  "Washington",  "Bobcat",  "Mr Whoopee", "BF Injection",
   "Hunter", "Premier",  "Enforcer",  "Securicar", "Banshee", "Predator", "Bus",
   "Rhino",  "Barracks",  "Hotknife",  "Trailer",  "Previon", "Coach", "Cabbie",
   "Stallion", "Rumpo", "RC Bandit",  "Romero", "Packer", "Monster",  "Admiral",
   "Squalo", "Seasparrow", "Pizzaboy", "Tram", "Trailer",  "Turismo", "Speeder",
   "Reefer", "Tropic", "Flatbed","Yankee", "Caddy", "Solair","Berkley's RC Van",
   "Skimmer", "PCJ-600", "Faggio", "Freeway", "RC Baron","RC Raider","Glendale",
   "Oceanic", "Sanchez", "Sparrow",  "Patriot", "Quad",  "Coastguard", "Dinghy",
   "Hermes", "Sabre", "Rustler", "ZR-350", "Walton",  "Regina",  "Comet", "BMX",
   "Burrito", "Camper", "Marquis", "Baggage", "Dozer","Maverick","News Chopper",
   "Rancher", "FBI Rancher", "Virgo", "Greenwood","Jetmax","Hotring","Sandking",
   "Blista Compact", "Police Maverick", "Boxville", "Benson","Mesa","RC Goblin",
   "Hotring Racer", "Hotring Racer", "Bloodring Banger", "Rancher",  "Super GT",
   "Elegant", "Journey", "Bike", "Mountain Bike", "Beagle", "Cropdust", "Stunt",
   "Tanker", "RoadTrain", "Nebula", "Majestic", "Buccaneer", "Shamal",  "Hydra",
   "FCR-900","NRG-500","HPV1000","Cement Truck","Tow Truck","Fortune","Cadrona",
   "FBI Truck", "Willard", "Forklift","Tractor","Combine","Feltzer","Remington",
   "Slamvan", "Blade", "Freight", "Streak","Vortex","Vincent","Bullet","Clover",
   "Sadler",  "Firetruck", "Hustler", "Intruder", "Primo", "Cargobob",  "Tampa",
   "Sunrise", "Merit",  "Utility Truck",  "Nevada", "Yosemite", "Windsor",  "Monster",
   "Monster","Uranus","Jester","Sultan","Stratum","Elegy","Raindance","RCTiger",
   "Flash","Tahoma","Savanna", "Bandito", "Freight", "Trailer", "Kart", "Mower",
   "Dune", "Sweeper", "Broadway", "Tornado", "AT-400",  "DFT-30", "Huntley",
   "Stafford", "BF-400", "Newsvan","Tug","Trailer","Emperor","Wayfarer","Euros",
   "Hotdog", "Club", "Trailer", "Trailer","Andromada","Dodo","RC Cam", "Launch",
   "Police Car (LSPD)", "Police Car (SFPD)","Police Car (LVPD)","Police Ranger",
   "Picador",   "S.W.A.T. Van",  "Alpha",   "Phoenix",   "Glendale",   "Sadler",
   "Luggage Trailer","Luggage Trailer","Stair Trailer", "Boxville", "Farm Plow",
   "Utility Trailer"
};
