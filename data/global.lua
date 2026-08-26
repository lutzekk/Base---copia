

math.randomseed(os.time())
dofile('data/lib/lib.lua')
dofile('data/lib/modalwindow.lua')
dofile('data/lib/sp.lua')




ropeSpots = {
	384, 418, 8278, 8592
}

keys = {
	2086, 2087, 2088, 2089, 2090, 2091, 2092, 10032
}

openDoors = {
	1211, 1214, 1233, 1236, 1251, 1254, 3546, 3537, 4915, 4918, 5100, 5109, 5118, 5127, 5136, 5139, 5142,
	5145, 5280, 5283, 5734, 5737, 6194, 6197, 6251, 6254, 6893, 6902, 7035, 7044, 8543, 8546, 9167, 9170,
	9269, 9272, 10270, 10273, 10470, 10479, 10777, 10786, 12094, 12101, 12190, 12199
}
closedDoors = {
	1210, 1213, 1232, 1235, 1250, 1253, 3536, 3545, 4914, 4917, 5099, 5108, 5117, 5126, 5135, 5138, 5141,
	5144, 5279, 5282, 5733, 5736, 6193, 6196, 6250, 6253, 6892, 6901, 7034, 7043, 8542, 8545, 9166, 9169,
	9268, 9271, 10269, 10272, 10766, 10785, 10469, 10478, 12093, 12100, 12189, 12198
}
lockedDoors = {
	1209, 1212, 1231, 1234, 1249, 1252, 3535, 3544, 4913, 4916, 5098, 5107, 5116, 5125, 5134, 5137, 5140,
	5143, 5278, 5281, 5732, 5735, 6192, 6195, 6249, 6252, 6891, 6900, 7033, 7042, 8541, 8544, 9165, 9168,
	9267, 9270, 10268, 10271, 10468, 10477, 10775, 10784, 12092, 12099, 12188, 12197
}

openExtraDoors = {
	1540, 1542, 6796, 6798, 6800, 6802, 7055, 7057
}
closedExtraDoors = {
	1539, 1541, 6795, 6797, 6799, 6801, 7054, 7056
}

openHouseDoors = {
	1220, 1222, 1238, 1240, 3539, 3548, 5083, 5085, 5102, 5111, 5120, 5129, 5285, 5287, 5516, 5518, 6199,
	6201, 6256, 6258, 6895, 6904, 7037, 7046, 8548, 8550, 9172, 9174, 9274, 9276, 10275, 10277, 10472, 10481
}
closedHouseDoors = {
	1219, 1221, 1237, 1239, 3538, 3547, 5082, 5084, 5101, 5110, 5119, 5128, 5284, 5286, 5515, 5517, 6198,
	6200, 6255, 6257, 6894, 6903, 7036, 7045, 8547, 8549, 9171, 9173, 9273, 9275, 10274, 10276, 10471, 10480
}

--[[ (Not currently used, but probably useful to keep up to date)
openQuestDoors = {
	1224, 1226, 1242, 1244, 1256, 1258, 3543, 3552, 5106, 5115, 5124, 5133, 5289, 5291, 5746, 5749, 6203,
	6205, 6260, 6262, 6899, 6908, 7041, 7050, 8552, 9176, 9178, 9278, 9280, 10279, 10281, 10476, 10485,
	10783, 10792, 12098, 12105, 12194, 12203
}
]]--
closedQuestDoors = {
	1223, 1225, 1241, 1243, 1255, 1257, 3542, 3551, 5105, 5114, 5123, 5132, 5288, 5290, 5745, 5748, 6202,
	6204, 6259, 6261, 6898, 6907, 7040, 7049, 8551, 8553, 9175, 9177, 9277, 9279, 10278, 10280, 10475, 10484,
	10782, 10791, 12097, 12104, 12193, 12202
}

--[[ (Not currently used, but probably useful to keep up to date)
openLevelDoors = {
	1228, 1230, 1246, 1248, 1260, 1262, 3541, 3550, 5104, 5113, 5122, 5131, 5293, 5295, 6207, 6209, 6264,
	6266, 6897, 6906, 7039, 7048, 8556, 8558, 9180, 9182, 9282, 9284, 10283, 10285, 10474, 10483, 10781,
	10790, 12096, 12103, 12196, 12205
}
]]--
closedLevelDoors = {
	1227, 1229, 1245, 1247, 1259, 1261, 3540, 3549, 5103, 5112, 5121, 5130, 5292, 5294, 6206, 6208, 6263,
	6265, 6896, 6905, 7038, 7047, 8555, 8557, 9179, 9181, 9281, 9283, 10282, 10284, 10473, 10482, 10780,
	10789, 12095, 12102, 12195, 12204
}



exhaust_transform = {}

transform = {
-----------------------------------------------------Goku-------------------------------------------------------------
[1] = {voc = 1, newVoc = 2, from_looktype = 69, looktype = 30, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[2] = {voc = 2, newVoc = 3, from_looktype = 30, looktype = 37, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[3] = {voc = 3, newVoc = 4, from_looktype = 37, looktype = 70, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[4] = {voc = 4, newVoc = 5, from_looktype = 70, looktype = 354, level = 180, rage = 0, mana = 6000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[5] = {voc = 5, newVoc = 6, from_looktype = 354, looktype = 259, level = 200, rage = 0, mana = 6000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Goku GT-------------------------------------------------------------
[7] = {voc = 7, newVoc = 8, from_looktype = 774, looktype = 772, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[8] = {voc = 8, newVoc = 9, from_looktype = 772, looktype = 773, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[9] = {voc = 9, newVoc = 10, from_looktype = 773, looktype = 775, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[10] = {voc = 10, newVoc = 11, from_looktype = 775, looktype = 780, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 10000, effect2 = 0, aura = nil, constant = false},
[11] = {voc = 11, newVoc = 12, from_looktype = 780, looktype = 781, level = 400, rage = 0, mana = 12000, addHealth = 250000, addMana = 15000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Goku Super-------------------------------------------------------------
[14] = {voc = 14, newVoc = 15, from_looktype = 794, looktype = 795, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[15] = {voc = 15, newVoc = 16, from_looktype = 795, looktype = 796, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[16] = {voc = 16, newVoc = 17, from_looktype = 796, looktype = 796, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[17] = {voc = 17, newVoc = 18, from_looktype = 796, looktype = 797, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[18] = {voc = 18, newVoc = 19, from_looktype = 797, looktype = 798, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Vegeta-------------------------------------------------------------
[21] = {voc = 21, newVoc = 22, from_looktype = 73, looktype = 165, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[22] = {voc = 22, newVoc = 23, from_looktype = 165, looktype = 166, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[23] = {voc = 23, newVoc = 24, from_looktype = 166, looktype = 164, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[24] = {voc = 24, newVoc = 25, from_looktype = 164, looktype = 4, level = 200, rage = 0, mana = 12000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Vegeta GT-------------------------------------------------------------
[27] = {voc = 27, newVoc = 28, from_looktype = 790, looktype = 788, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[28] = {voc = 28, newVoc = 29, from_looktype = 788, looktype = 789, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[29] = {voc = 29, newVoc = 30, from_looktype = 789, looktype = 787, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[30] = {voc = 30, newVoc = 31, from_looktype = 787, looktype = 791, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[31] = {voc = 31, newVoc = 32, from_looktype = 791, looktype = 792, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Vegeta Super-------------------------------------------------------------
[34] = {voc = 34, newVoc = 35, from_looktype = 799, looktype = 800, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[35] = {voc = 35, newVoc = 36, from_looktype = 800, looktype = 801, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[36] = {voc = 36, newVoc = 37, from_looktype = 801, looktype = 801, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[37] = {voc = 37, newVoc = 38, from_looktype = 801, looktype = 802, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[38] = {voc = 38, newVoc = 39, from_looktype = 802, looktype = 803, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Vegetto-------------------------------------------------------------
[41] = {voc = 41, newVoc = 42, from_looktype = 422, looktype = 422, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = 15, constant = false},
[42] = {voc = 42, newVoc = 43, from_looktype = 422, looktype = 423, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[43] = {voc = 43, newVoc = 44, from_looktype = 423, looktype = 423, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = 15, constant = false},
[44] = {voc = 44, newVoc = 45, from_looktype = 423, looktype = 424, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Vegetto GT-------------------------------------------------------------
[47] = {voc = 47, newVoc = 48, from_looktype = 804, looktype = 805, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[48] = {voc = 48, newVoc = 49, from_looktype = 805, looktype = 806, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[49] = {voc = 49, newVoc = 50, from_looktype = 806, looktype = 806, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[50] = {voc = 50, newVoc = 51, from_looktype = 806, looktype = 807, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[51] = {voc = 51, newVoc = 52, from_looktype = 807, looktype = 808, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Vegetto Super-------------------------------------------------------------
[54] = {voc = 54, newVoc = 55, from_looktype = 804, looktype = 805, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[55] = {voc = 55, newVoc = 56, from_looktype = 805, looktype = 806, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[56] = {voc = 56, newVoc = 57, from_looktype = 806, looktype = 806, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[57] = {voc = 57, newVoc = 58, from_looktype = 806, looktype = 807, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[58] = {voc = 58, newVoc = 59, from_looktype = 807, looktype = 809, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Gohan-------------------------------------------------------------
[61] = {voc = 61, newVoc = 62, from_looktype = 62, looktype = 64, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 588, aura = nil, constant = false},
[62] = {voc = 62, newVoc = 63, from_looktype = 64, looktype = 81, level = 100, rage = 0, mana = 12000, addHealth = 10000, addMana = 5000, effect2 = 587, aura = nil, constant = false},
[63] = {voc = 63, newVoc = 64, from_looktype = 81, looktype = 40, level = 150, rage = 0, mana = 15000, addHealth = 15000, addMana = 5000, effect2 = 588, aura = nil, constant = false},
[64] = {voc = 64, newVoc = 65, from_looktype = 40, looktype = 155, level = 200, rage = 0, mana = 20000, addHealth = 20000, addMana = 5000, effect2 = 587, aura = nil, constant = false},
-----------------------------------------------------Gohan GT-------------------------------------------------------------
[67] = {voc = 67, newVoc = 68, from_looktype = 818, looktype = 817, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[68] = {voc = 68, newVoc = 69, from_looktype = 817, looktype = 817, level = 100, rage = 0, mana = 12000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[69] = {voc = 69, newVoc = 70, from_looktype = 817, looktype = 817, level = 150, rage = 0, mana = 15000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[70] = {voc = 70, newVoc = 71, from_looktype = 817, looktype = 819, level = 200, rage = 0, mana = 20000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[71] = {voc = 71, newVoc = 72, from_looktype = 819, looktype = 820, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Gohan SuperNO-------------------------------------------------------------
[74] = {voc = 74, newVoc = 75, from_looktype = 850, looktype = 852, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[75] = {voc = 74, newVoc = 76, from_looktype = 852, looktype = 853, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[76] = {voc = 76, newVoc = 77, from_looktype = 853, looktype = 1680, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[77] = {voc = 77, newVoc = 78, from_looktype = 1680, looktype = 1676, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[78] = {voc = 78, newVoc = 79, from_looktype = 1676, looktype = 855, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Videl-------------------------------------------------------------
[81] = {voc = 81, newVoc = 82, from_looktype = 334, looktype = 336, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[82] = {voc = 82, newVoc = 83, from_looktype = 336, looktype = 335, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[83] = {voc = 83, newVoc = 84, from_looktype = 335, looktype = 337, level = 150, rage = 0, mana = 6000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[84] = {voc = 84, newVoc = 85, from_looktype = 337, looktype = 337, level = 200, rage = 0, mana = 10000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Videl GT-------------------------------------------------------------
[87] = {voc = 87, newVoc = 88, from_looktype = 335, looktype = 337, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[88] = {voc = 88, newVoc = 89, from_looktype = 337, looktype = 336, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[89] = {voc = 89, newVoc = 90, from_looktype = 336, looktype = 338, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[90] = {voc = 90, newVoc = 91, from_looktype = 338, looktype = 287, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[91] = {voc = 91, newVoc = 92, from_looktype = 287, looktype = 384, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Videl SuperNO-------------------------------------------------------------
[94] = {voc = 94, newVoc = 95, from_looktype = 850, looktype = 852, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[95] = {voc = 94, newVoc = 96, from_looktype = 852, looktype = 853, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[96] = {voc = 96, newVoc = 97, from_looktype = 853, looktype = 854, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[97] = {voc = 97, newVoc = 98, from_looktype = 854, looktype = 855, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[98] = {voc = 98, newVoc = 99, from_looktype = 855, looktype = 856, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
---------------------------------------------------Pan-------------------------------------------------------------
[101] = {voc = 101, newVoc = 102, from_looktype = 330, looktype = 103, level = 50, rage = 0, mana = 700, addHealth =  5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[102] = {voc = 102, newVoc = 103, from_looktype = 103, looktype = 331, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[103] = {voc = 103, newVoc = 104, from_looktype = 331, looktype = 332, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[104] = {voc = 104, newVoc = 105, from_looktype = 332, looktype = 333, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Pan GT-------------------------------------------------------------
[107] = {voc = 107, newVoc = 108, from_looktype = 329, looktype = 102, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[108] = {voc = 108, newVoc = 109, from_looktype = 102, looktype = 330, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[109] = {voc = 109, newVoc = 110, from_looktype = 330, looktype = 331, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[110] = {voc = 110, newVoc = 111, from_looktype = 331, looktype = 332, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[111] = {voc = 111, newVoc = 112, from_looktype = 332, looktype = 333, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Pan SuperNO-------------------------------------------------------------
[114] = {voc = 114, newVoc = 115, from_looktype = 850, looktype = 852, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[115] = {voc = 115, newVoc = 116, from_looktype = 852, looktype = 853, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[116] = {voc = 116, newVoc = 117, from_looktype = 853, looktype = 854, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[117] = {voc = 117, newVoc = 118, from_looktype = 854, looktype = 855, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[118] = {voc = 118, newVoc = 119, from_looktype = 855, looktype = 856, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
---------------------------------------------------Trunks-------------------------------------------------------------
[121] = {voc = 121, newVoc = 122, from_looktype = 150, looktype = 29, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[122] = {voc = 122, newVoc = 123, from_looktype = 29, looktype = 23, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[123] = {voc = 123, newVoc = 124, from_looktype = 23, looktype = 141, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[124] = {voc = 124, newVoc = 125, from_looktype = 141, looktype = 41, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Trunks GT-------------------------------------------------------------
[127] = {voc = 127, newVoc = 128, from_looktype = 828, looktype = 829, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[128] = {voc = 128, newVoc = 129, from_looktype = 829, looktype = 829, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[129] = {voc = 129, newVoc = 130, from_looktype = 829, looktype = 826, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[130] = {voc = 130, newVoc = 131, from_looktype = 826, looktype = 826, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[132] = {voc = 132, newVoc = 133, from_looktype = 826, looktype = 827, level = 400, rage = 0, mana = 12000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Trunks Super-------------------------------------------------------------
[134] = {voc = 134, newVoc = 135, from_looktype = 828, looktype = 829, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[135] = {voc = 135, newVoc = 136, from_looktype = 829, looktype = 829, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[136] = {voc = 136, newVoc = 137, from_looktype = 829, looktype = 826, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[137] = {voc = 137, newVoc = 138, from_looktype = 826, looktype = 826, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[138] = {voc = 138, newVoc = 139, from_looktype = 826, looktype = 827, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
---------------------------------------------------Goten-------------------------------------------------------------
[141] = {voc = 141, newVoc = 142, from_looktype = 831, looktype = 832, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[142] = {voc = 142, newVoc = 143, from_looktype = 832, looktype = 834, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[143] = {voc = 143, newVoc = 144, from_looktype = 834, looktype = 835, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[144] = {voc = 144, newVoc = 145, from_looktype = 835, looktype = 835, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Goten GT NO-------------------------------------------------------------
[147] = {voc = 147, newVoc = 148, from_looktype = 1110, looktype = 1111, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[148] = {voc = 148, newVoc = 149, from_looktype = 1111, looktype = 1112, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[149] = {voc = 149, newVoc = 150, from_looktype = 1112, looktype = 1113, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[150] = {voc = 150, newVoc = 151, from_looktype = 1113, looktype = 1114, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[151] = {voc = 151, newVoc = 152, from_looktype = 1114, looktype = 1116, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Goten Super-------------------------------------------------------------
[154] = {voc = 154, newVoc = 155, from_looktype = 831, looktype = 832, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[155] = {voc = 155, newVoc = 156, from_looktype = 832, looktype = 834, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[156] = {voc = 156, newVoc = 157, from_looktype = 834, looktype = 835, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[157] = {voc = 157, newVoc = 158, from_looktype = 835, looktype = 836, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[158] = {voc = 158, newVoc = 159, from_looktype = 836, looktype = 833, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------- Chibi Trunks-------------------------------------------------------------
[161] = {voc = 161, newVoc = 162, from_looktype = 51, looktype = 197, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[162] = {voc = 162, newVoc = 163, from_looktype = 197, looktype = 25, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[163] = {voc = 163, newVoc = 164, from_looktype = 25, looktype = 24, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[164] = {voc = 164, newVoc = 165, from_looktype = 24, looktype = 24, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------- Chibi Trunks GT NO -------------------------------------------------------------
[167] = {voc = 167, newVoc = 168, from_looktype = 1258, looktype = 839, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[168] = {voc = 168, newVoc = 169, from_looktype = 839, looktype = 1112, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[169] = {voc = 169, newVoc = 170, from_looktype = 1112, looktype = 1113, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[170] = {voc = 179, newVoc = 171, from_looktype = 1113, looktype = 1114, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[171] = {voc = 171, newVoc = 172, from_looktype = 1114, looktype = 1116, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------- chibi Trunks Super-------------------------------------------------------------
[174] = {voc = 174, newVoc = 175, from_looktype = 838, looktype = 839, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[175] = {voc = 175, newVoc = 176, from_looktype = 839, looktype = 834, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[176] = {voc = 176, newVoc = 177, from_looktype = 835, looktype = 835, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[177] = {voc = 177, newVoc = 178, from_looktype = 836, looktype = 836, level = 200, rage = 0, mana = 120000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[178] = {voc = 178, newVoc = 179, from_looktype = 836, looktype = 833, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
---------------------------------------------------Piccolo-------------------------------------------------------------
[181] = {voc = 181, newVoc = 182, from_looktype = 50, looktype = 36, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[182] = {voc = 182, newVoc = 183, from_looktype = 36, looktype = 113, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[183] = {voc = 183, newVoc = 184, from_looktype = 113, looktype = 113, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[184] = {voc = 184, newVoc = 185, from_looktype = 113, looktype = 106, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Piccolo GT-------------------------------------------------------------
[187] = {voc = 187, newVoc = 188, from_looktype = 843, looktype = 845, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[188] = {voc = 188, newVoc = 189, from_looktype = 845, looktype = 840, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[189] = {voc = 189, newVoc = 190, from_looktype = 840, looktype = 841, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[190] = {voc = 190, newVoc = 191, from_looktype = 841, looktype = 842, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[191] = {voc = 191, newVoc = 192, from_looktype = 842, looktype = 846, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Piccolo Super NO-------------------------------------------------------------
[194] = {voc = 194, newVoc = 195, from_looktype = 850, looktype = 852, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[195] = {voc = 195, newVoc = 196, from_looktype = 852, looktype = 853, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[196] = {voc = 196, newVoc = 197, from_looktype = 853, looktype = 854, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[197] = {voc = 197, newVoc = 198, from_looktype = 854, looktype = 855, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[198] = {voc = 198, newVoc = 199, from_looktype = 855, looktype = 856, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
---------------------------------------------------Krillin-------------------------------------------------------------
[201] = {voc = 201, newVoc = 202, from_looktype = 850, looktype = 851, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[202] = {voc = 202, newVoc = 203, from_looktype = 851, looktype = 852, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[203] = {voc = 203, newVoc = 204, from_looktype = 852, looktype = 853, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[204] = {voc = 204, newVoc = 205, from_looktype = 853, looktype = 854, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Krillin GTNO-------------------------------------------------------------
[207] = {voc = 207, newVoc = 208, from_looktype = 357, looktype = 358, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[208] = {voc = 208, newVoc = 209, from_looktype = 358, looktype = 359, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[209] = {voc = 209, newVoc = 210, from_looktype = 359, looktype = 360, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[210] = {voc = 210, newVoc = 211, from_looktype = 360, looktype = 361, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[211] = {voc = 211, newVoc = 212, from_looktype = 362, looktype = 363, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Krillin Super-------------------------------------------------------------
[214] = {voc = 214, newVoc = 215, from_looktype = 223, looktype = 224, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[215] = {voc = 215, newVoc = 216, from_looktype = 853, looktype = 853, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[216] = {voc = 216, newVoc = 217, from_looktype = 854, looktype = 854, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[217] = {voc = 217, newVoc = 218, from_looktype = 854, looktype = 857, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[218] = {voc = 218, newVoc = 219, from_looktype = 857, looktype = 858, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
---------------------------------------------------Dende-------------------------------------------------------------
[221] = {voc = 221, newVoc = 222, from_looktype = 223, looktype = 224, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[222] = {voc = 222, newVoc = 223, from_looktype = 224, looktype = 226, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[223] = {voc = 223, newVoc = 224, from_looktype = 226, looktype = 221, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[224] = {voc = 224, newVoc = 225, from_looktype = 221, looktype = 221, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------dende GT-------------------------------------------------------------
[227] = {voc = 227, newVoc = 228, from_looktype = 847, looktype = 870, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[228] = {voc = 228, newVoc = 229, from_looktype = 870, looktype = 871, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[229] = {voc = 229, newVoc = 230, from_looktype = 871, looktype = 848, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[230] = {voc = 230, newVoc = 231, from_looktype = 848, looktype = 848, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[231] = {voc = 231, newVoc = 232, from_looktype = 848, looktype = 873, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------dende SuperNO-------------------------------------------------------------
[234] = {voc = 234, newVoc = 235, from_looktype = 850, looktype = 852, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[235] = {voc = 235, newVoc = 236, from_looktype = 852, looktype = 853, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[236] = {voc = 236, newVoc = 237, from_looktype = 853, looktype = 854, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[237] = {voc = 237, newVoc = 238, from_looktype = 854, looktype = 855, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[238] = {voc = 238, newVoc = 239, from_looktype = 855, looktype = 856, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
---------------------------------------------------shin-------------------------------------------------------------
[241] = {voc = 241, newVoc = 242, from_looktype = 241, looktype = 328, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[242] = {voc = 242, newVoc = 243, from_looktype = 328, looktype = 342, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[243] = {voc = 243, newVoc = 244, from_looktype = 342, looktype = 341, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[244] = {voc = 244, newVoc = 245, from_looktype = 341, looktype = 341, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------shin GTNO-------------------------------------------------------------
[247] = {voc = 247, newVoc = 248, from_looktype = 861, looktype = 1262, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[248] = {voc = 248, newVoc = 249, from_looktype = 1262, looktype = 1263, level = 100, rage = 0, mana = 3000, addHealth = 1000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[249] = {voc = 249, newVoc = 250, from_looktype = 1263, looktype = 1260, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[250] = {voc = 250, newVoc = 251, from_looktype = 1260, looktype = 1261, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[251] = {voc = 251, newVoc = 252, from_looktype = 1261, looktype = 1264, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------shin Super-------------------------------------------------------------
[254] = {voc = 254, newVoc = 255, from_looktype = 861, looktype = 862, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[255] = {voc = 255, newVoc = 256, from_looktype = 862, looktype = 864, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[256] = {voc = 256, newVoc = 257, from_looktype = 864, looktype = 863, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[257] = {voc = 257, newVoc = 258, from_looktype = 863, looktype = 867, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[258] = {voc = 258, newVoc = 259, from_looktype = 867, looktype = 866, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
---------------------------------------------------Freezer-------------------------------------------------------------
[261] = {voc = 261, newVoc = 262, from_looktype = 101, looktype = 124, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[262] = {voc = 262, newVoc = 263, from_looktype = 124, looktype = 105, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[263] = {voc = 263, newVoc = 264, from_looktype = 105, looktype = 94, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[264] = {voc = 264, newVoc = 265, from_looktype = 94, looktype = 119, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Freezer GTNO-------------------------------------------------------------
[267] = {voc = 267, newVoc = 268, from_looktype = 533, looktype = 1266, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[268] = {voc = 268, newVoc = 269, from_looktype = 1266, looktype = 1267, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[269] = {voc = 269, newVoc = 270, from_looktype = 1267, looktype = 1268, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[270] = {voc = 279, newVoc = 271, from_looktype = 1268, looktype = 1269, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[271] = {voc = 271, newVoc = 272, from_looktype = 1269, looktype = 1270, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Freezer Super-------------------------------------------------------------
[274] = {voc = 274, newVoc = 275, from_looktype = 876, looktype = 877, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[275] = {voc = 275, newVoc = 276, from_looktype = 877, looktype = 878, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[276] = {voc = 276, newVoc = 277, from_looktype = 878, looktype = 879, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[277] = {voc = 277, newVoc = 278, from_looktype = 879, looktype = 892, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[278] = {voc = 278, newVoc = 279, from_looktype = 892, looktype = 893, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
---------------------------------------------------Cooler-------------------------------------------------------------
[281] = {voc = 281, newVoc = 282, from_looktype = 190, looktype = 192, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[282] = {voc = 282, newVoc = 283, from_looktype = 192, looktype = 191, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[283] = {voc = 283, newVoc = 284, from_looktype = 191, looktype = 103, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[284] = {voc = 284, newVoc = 285, from_looktype = 103, looktype = 193, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Cooler GTNo-------------------------------------------------------------
[287] = {voc = 287, newVoc = 288, from_looktype = 1272, looktype = 1273, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[288] = {voc = 288, newVoc = 289, from_looktype = 1273, looktype = 1274, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[289] = {voc = 289, newVoc = 290, from_looktype = 1274, looktype = 1275, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[290] = {voc = 290, newVoc = 291, from_looktype = 1275, looktype = 1277, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[291] = {voc = 291, newVoc = 292, from_looktype = 1277, looktype = 1278, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Cooler Super-------------------------------------------------------------
[294] = {voc = 294, newVoc = 295, from_looktype = 884, looktype = 887, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[295] = {voc = 295, newVoc = 296, from_looktype = 887, looktype = 888, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[296] = {voc = 296, newVoc = 297, from_looktype = 888, looktype = 889, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[297] = {voc = 297, newVoc = 298, from_looktype = 889, looktype = 890, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[298] = {voc = 298, newVoc = 299, from_looktype = 890, looktype = 894, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
---------------------------------------------------C17-------------------------------------------------------------
[301] = {voc = 301, newVoc = 302, from_looktype = 895, looktype = 896, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[302] = {voc = 302, newVoc = 303, from_looktype = 896, looktype = 897, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[303] = {voc = 303, newVoc = 304, from_looktype = 897, looktype = 2, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[304] = {voc = 304, newVoc = 305, from_looktype = 2, looktype = 2, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------C17 GTNO-------------------------------------------------------------
[307] = {voc = 307, newVoc = 308, from_looktype = 16, looktype = 1439, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[308] = {voc = 308, newVoc = 309, from_looktype = 1439, looktype = 1442, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[309] = {voc = 309, newVoc = 310, from_looktype = 1442, looktype = 1437, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[310] = {voc = 310, newVoc = 311, from_looktype = 1437, looktype = 1440, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[311] = {voc = 311, newVoc = 312, from_looktype = 1440, looktype = 1424, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------C17 Super-------------------------------------------------------------
[314] = {voc = 314, newVoc = 315, from_looktype = 895, looktype = 896, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[315] = {voc = 315, newVoc = 316, from_looktype = 896, looktype = 912, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[316] = {voc = 316, newVoc = 317, from_looktype = 912, looktype = 901, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[317] = {voc = 317, newVoc = 318, from_looktype = 901, looktype = 899, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[318] = {voc = 318, newVoc = 319, from_looktype = 899, looktype = 900, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
---------------------------------------------------C18-------------------------------------------------------------
[321] = {voc = 321, newVoc = 322, from_looktype = 906, looktype = 908, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[322] = {voc = 322, newVoc = 323, from_looktype = 908, looktype = 907, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[323] = {voc = 323, newVoc = 324, from_looktype = 907, looktype = 16, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[324] = {voc = 324, newVoc = 325, from_looktype = 16, looktype = 16, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------C18 GTNPA-------------------------------------------------------------
[327] = {voc = 327, newVoc = 328, from_looktype = 1283, looktype = 1285, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[328] = {voc = 328, newVoc = 329, from_looktype = 1285, looktype = 1284, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[329] = {voc = 329, newVoc = 330, from_looktype = 1284, looktype = 1289, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[330] = {voc = 330, newVoc = 331, from_looktype = 1289, looktype = 1289, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[331] = {voc = 331, newVoc = 332, from_looktype = 1289, looktype = 1290, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------C18 Super -------------------------------------------------------------
[334] = {voc = 334, newVoc = 335, from_looktype = 906, looktype = 908, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect = 285, aura = nil, constant = false},
[335] = {voc = 335, newVoc = 336, from_looktype = 908, looktype = 907, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[336] = {voc = 336, newVoc = 337, from_looktype = 907, looktype = 911, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[337] = {voc = 337, newVoc = 338, from_looktype = 911, looktype = 910, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[338] = {voc = 338, newVoc = 339, from_looktype = 910, looktype = 909, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
---------------------------------------------------Cell-------------------------------------------------------------
[341] = {voc = 341, newVoc = 342, from_looktype = 52, looktype = 68, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[342] = {voc = 342, newVoc = 343, from_looktype = 68, looktype = 74, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[343] = {voc = 343, newVoc = 344, from_looktype = 74, looktype = 142, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[344] = {voc = 344, newVoc = 345, from_looktype = 142, looktype = 142, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Cell GTNO-------------------------------------------------------------
[347] = {voc = 347, newVoc = 348, from_looktype = 902, looktype = 903, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[348] = {voc = 348, newVoc = 349, from_looktype = 903, looktype = 903, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[349] = {voc = 349, newVoc = 350, from_looktype = 903, looktype = 904, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[350] = {voc = 350, newVoc = 351, from_looktype = 904, looktype = 904, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[351] = {voc = 351, newVoc = 352, from_looktype = 904, looktype = 905, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Cell Super-------------------------------------------------------------
[354] = {voc = 354, newVoc = 355, from_looktype = 902, looktype = 903, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[355] = {voc = 355, newVoc = 356, from_looktype = 903, looktype = 903, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[356] = {voc = 356, newVoc = 357, from_looktype = 903, looktype = 904, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[357] = {voc = 357, newVoc = 358, from_looktype = 904, looktype = 904, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[358] = {voc = 358, newVoc = 359, from_looktype = 904, looktype = 905, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
---------------------------------------------------Ten Shin Han-------------------------------------------------------------
[361] = {voc = 361, newVoc = 362, from_looktype = 921, looktype = 922, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[362] = {voc = 362, newVoc = 363, from_looktype = 922, looktype = 923, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[363] = {voc = 363, newVoc = 364, from_looktype = 923, looktype = 925, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[364] = {voc = 364, newVoc = 365, from_looktype = 925, looktype = 926, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Ten Shin Han GTNP-------------------------------------------------------------
[367] = {voc = 367, newVoc = 368, from_looktype = 526, looktype = 528, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[368] = {voc = 368, newVoc = 369, from_looktype = 528, looktype = 529, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[369] = {voc = 369, newVoc = 370, from_looktype = 529, looktype = 530, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[370] = {voc = 370, newVoc = 371, from_looktype = 530, looktype = 531, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[371] = {voc = 371, newVoc = 372, from_looktype = 531, looktype = 532, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Ten Shin Han Super-------------------------------------------------------------
[374] = {voc = 374, newVoc = 375, from_looktype = 921, looktype = 922, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[375] = {voc = 375, newVoc = 376, from_looktype = 922, looktype = 923, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[376] = {voc = 376, newVoc = 377, from_looktype = 923, looktype = 925, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[377] = {voc = 377, newVoc = 378, from_looktype = 925, looktype = 927, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[378] = {voc = 378, newVoc = 379, from_looktype = 927, looktype = 928, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
---------------------------------------------------Majin Buu-------------------------------------------------------------
[381] = {voc = 381, newVoc = 382, from_looktype = 34, looktype = 114, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[382] = {voc = 382, newVoc = 383, from_looktype = 114, looktype = 218, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[383] = {voc = 383, newVoc = 384, from_looktype = 218, looktype = 219, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[384] = {voc = 384, newVoc = 385, from_looktype = 219, looktype = 203, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Majin Buu GT-------------------------------------------------------------
[387] = {voc = 387, newVoc = 388, from_looktype = 913, looktype = 915, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[388] = {voc = 388, newVoc = 389, from_looktype = 915, looktype = 916, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[389] = {voc = 389, newVoc = 390, from_looktype = 916, looktype = 918, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[390] = {voc = 390, newVoc = 391, from_looktype = 918, looktype = 917, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[391] = {voc = 391, newVoc = 392, from_looktype = 917, looktype = 919, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
-----------------------------------------------------Majin Buu SuperNO-------------------------------------------------------------
[394] = {voc = 394, newVoc = 395, from_looktype = 533, looktype = 1265, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[395] = {voc = 395, newVoc = 396, from_looktype = 1265, looktype = 1296, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[396] = {voc = 396, newVoc = 397, from_looktype = 1296, looktype = 1331, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[397] = {voc = 397, newVoc = 398, from_looktype = 1331, looktype = 1186, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[398] = {voc = 398, newVoc = 399, from_looktype = 1186, looktype = 601, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------Bebi-------------------------------------------------------------
[401] = {voc = 401, newVoc = 402, from_looktype = 951, looktype = 952, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[402] = {voc = 402, newVoc = 403, from_looktype = 952, looktype = 953, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[403] = {voc = 403, newVoc = 404, from_looktype = 953, looktype = 954, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[404] = {voc = 404, newVoc = 405, from_looktype = 954, looktype = 955, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Bebi GT-------------------------------------------------------------
[407] = {voc = 407, newVoc = 408, from_looktype = 956, looktype = 957, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[408] = {voc = 408, newVoc = 409, from_looktype = 957, looktype = 957, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[409] = {voc = 409, newVoc = 410, from_looktype = 957, looktype = 958, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[410] = {voc = 410, newVoc = 411, from_looktype = 958, looktype = 960, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[411] = {voc = 411, newVoc = 412, from_looktype = 960, looktype = 959, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Bebi SuperNO-------------------------------------------------------------
[414] = {voc = 414, newVoc = 415, from_looktype = 1315, looktype = 1316, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[415] = {voc = 415, newVoc = 416, from_looktype = 1316, looktype = 1317, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[416] = {voc = 416, newVoc = 417, from_looktype = 1317, looktype = 1318, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[417] = {voc = 417, newVoc = 418, from_looktype = 1318, looktype = 1321, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[418] = {voc = 418, newVoc = 419, from_looktype = 1321, looktype = 1322, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------Uub-------------------------------------------------------------
[421] = {voc = 421, newVoc = 422, from_looktype = 281, looktype = 246, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[422] = {voc = 422, newVoc = 423, from_looktype = 246, looktype = 236, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[423] = {voc = 423, newVoc = 424, from_looktype = 236, looktype = 282, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[424] = {voc = 424, newVoc = 425, from_looktype = 282, looktype = 235, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Uub GTNO-------------------------------------------------------------
[427] = {voc = 427, newVoc = 428, from_looktype = 1328, looktype = 1329, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[428] = {voc = 428, newVoc = 429, from_looktype = 1329, looktype = 1330, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[429] = {voc = 429, newVoc = 430, from_looktype = 1330, looktype = 1331, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[430] = {voc = 430, newVoc = 431, from_looktype = 1331, looktype = 1332, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[431] = {voc = 431, newVoc = 432, from_looktype = 1332, looktype = 1333, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Uub Super-------------------------------------------------------------
[434] = {voc = 434, newVoc = 435, from_looktype = 945, looktype = 946, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[435] = {voc = 435, newVoc = 436, from_looktype = 946, looktype = 947, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[436] = {voc = 436, newVoc = 437, from_looktype = 947, looktype = 948, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[437] = {voc = 437, newVoc = 438, from_looktype = 948, looktype = 948, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[438] = {voc = 438, newVoc = 439, from_looktype = 948, looktype = 950, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------Bardock-------------------------------------------------------------
[441] = {voc = 441, newVoc = 442, from_looktype = 60, looktype = 194, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[442] = {voc = 442, newVoc = 443, from_looktype = 194, looktype = 196, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[443] = {voc = 443, newVoc = 444, from_looktype = 196, looktype = 199, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[444] = {voc = 444, newVoc = 445, from_looktype = 199, looktype = 200, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Bardock GTNO-------------------------------------------------------------
[447] = {voc = 447, newVoc = 448, from_looktype = 1338, looktype = 1339, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[448] = {voc = 448, newVoc = 449, from_looktype = 1339, looktype = 1340, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[449] = {voc = 449, newVoc = 450, from_looktype = 1340, looktype = 1341, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[450] = {voc = 450, newVoc = 451, from_looktype = 1341, looktype = 1344, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[451] = {voc = 451, newVoc = 452, from_looktype = 1344, looktype = 1345, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Bardock Super-------------------------------------------------------------
[454] = {voc = 454, newVoc = 455, from_looktype = 963, looktype = 964, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[455] = {voc = 455, newVoc = 456, from_looktype = 964, looktype = 965, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[456] = {voc = 456, newVoc = 457, from_looktype = 965, looktype = 966, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[457] = {voc = 457, newVoc = 458, from_looktype = 966, looktype = 967, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[458] = {voc = 458, newVoc = 459, from_looktype = 967, looktype = 968, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------Brolly-------------------------------------------------------------
[461] = {voc = 461, newVoc = 462, from_looktype = 84, looktype = 89, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[462] = {voc = 462, newVoc = 463, from_looktype = 89, looktype = 104, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[463] = {voc = 463, newVoc = 464, from_looktype = 104, looktype = 104, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[464] = {voc = 464, newVoc = 465, from_looktype = 104, looktype = 39, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Brolly GTNO-------------------------------------------------------------
[467] = {voc = 467, newVoc = 468, from_looktype = 534, looktype = 535, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[468] = {voc = 468, newVoc = 469, from_looktype = 535, looktype = 536, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[469] = {voc = 469, newVoc = 470, from_looktype = 536, looktype = 537, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[470] = {voc = 470, newVoc = 471, from_looktype = 537, looktype = 538, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[471] = {voc = 471, newVoc = 472, from_looktype = 538, looktype = 539, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Brolly Super-------------------------------------------------------------
[474] = {voc = 474, newVoc = 475, from_looktype = 933, looktype = 937, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[475] = {voc = 475, newVoc = 476, from_looktype = 937, looktype = 934, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[476] = {voc = 476, newVoc = 477, from_looktype = 934, looktype = 938, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[477] = {voc = 477, newVoc = 478, from_looktype = 938, looktype = 940, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[478] = {voc = 478, newVoc = 479, from_looktype = 940, looktype = 941, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------Janemba-------------------------------------------------------------
[481] = {voc = 481, newVoc = 482, from_looktype = 326, looktype = 280, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[482] = {voc = 482, newVoc = 483, from_looktype = 280, looktype = 120, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[483] = {voc = 483, newVoc = 484, from_looktype = 120, looktype = 110, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[484] = {voc = 484, newVoc = 485, from_looktype = 110, looktype = 134, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Janemba GTNO-------------------------------------------------------------
[487] = {voc = 487, newVoc = 488, from_looktype = 1352, looktype = 1353, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[488] = {voc = 488, newVoc = 489, from_looktype = 1353, looktype = 1354, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[489] = {voc = 489, newVoc = 490, from_looktype = 1354, looktype = 1356, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[490] = {voc = 490, newVoc = 491, from_looktype = 1356, looktype = 1361, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[491] = {voc = 491, newVoc = 492, from_looktype = 1361, looktype = 624, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Janemba Super-------------------------------------------------------------
[494] = {voc = 494, newVoc = 495, from_looktype = 972, looktype = 973, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[495] = {voc = 495, newVoc = 496, from_looktype = 973, looktype = 974, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[496] = {voc = 496, newVoc = 497, from_looktype = 974, looktype = 975, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[497] = {voc = 497, newVoc = 498, from_looktype = 975, looktype = 979, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[498] = {voc = 498, newVoc = 499, from_looktype = 979, looktype = 978, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------Beerus-------------------------------------------------------------
[501] = {voc = 501, newVoc = 502, from_looktype = 992, looktype = 995, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[502] = {voc = 502, newVoc = 503, from_looktype = 995, looktype = 994, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[503] = {voc = 503, newVoc = 504, from_looktype = 994, looktype = 999, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[504] = {voc = 504, newVoc = 505, from_looktype = 999, looktype = 998, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Beerus GTNO-------------------------------------------------------------
[507] = {voc = 507, newVoc = 508, from_looktype = 533, looktype = 1266, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[508] = {voc = 508, newVoc = 509, from_looktype = 1266, looktype = 1267, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[509] = {voc = 509, newVoc = 510, from_looktype = 1267, looktype = 1296, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[510] = {voc = 510, newVoc = 511, from_looktype = 1296, looktype = 1269, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[511] = {voc = 511, newVoc = 512, from_looktype = 1269, looktype = 1270, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Beerus Super-------------------------------------------------------------
[514] = {voc = 514, newVoc = 515, from_looktype = 996, looktype = 995, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[515] = {voc = 515, newVoc = 516, from_looktype = 995, looktype = 994, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[516] = {voc = 516, newVoc = 517, from_looktype = 994, looktype = 999, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[517] = {voc = 517, newVoc = 518, from_looktype = 999, looktype = 998, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[518] = {voc = 518, newVoc = 519, from_looktype = 998, looktype = 993, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------Goku Black-------------------------------------------------------------
[521] = {voc = 521, newVoc = 522, from_looktype = 980, looktype = 980, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[522] = {voc = 522, newVoc = 523, from_looktype = 980, looktype = 971, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[523] = {voc = 523, newVoc = 524, from_looktype = 971, looktype = 971, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[524] = {voc = 524, newVoc = 525, from_looktype = 971, looktype = 983, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Goku Black GTNO-------------------------------------------------------------
[527] = {voc = 527, newVoc = 528, from_looktype = 641, looktype = 642, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[528] = {voc = 528, newVoc = 529, from_looktype = 642, looktype = 643, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[529] = {voc = 529, newVoc = 530, from_looktype = 643, looktype = 644, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[530] = {voc = 530, newVoc = 531, from_looktype = 644, looktype = 1380, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[531] = {voc = 531, newVoc = 532, from_looktype = 1380, looktype = 1378, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Goku Black Super-------------------------------------------------------------
[534] = {voc = 534, newVoc = 535, from_looktype = 980, looktype = 971, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[535] = {voc = 535, newVoc = 536, from_looktype = 971, looktype = 971, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[536] = {voc = 536, newVoc = 537, from_looktype = 971, looktype = 983, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[537] = {voc = 537, newVoc = 538, from_looktype = 983, looktype = 981, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[538] = {voc = 538, newVoc = 539, from_looktype = 981, looktype = 982, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------Zamasu-------------------------------------------------------------
[541] = {voc = 541, newVoc = 542, from_looktype = 984, looktype = 986, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[542] = {voc = 542, newVoc = 543, from_looktype = 986, looktype = 985, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[543] = {voc = 543, newVoc = 544, from_looktype = 985, looktype = 985, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[544] = {voc = 544, newVoc = 545, from_looktype = 985, looktype = 987, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Zamasu GTNO-------------------------------------------------------------
[547] = {voc = 547, newVoc = 548, from_looktype = 984, looktype = 986, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[548] = {voc = 548, newVoc = 549, from_looktype = 986, looktype = 985, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[549] = {voc = 549, newVoc = 550, from_looktype = 985, looktype = 987, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[550] = {voc = 550, newVoc = 551, from_looktype = 987, looktype = 991, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[551] = {voc = 551, newVoc = 552, from_looktype = 991, looktype = 990, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Zamasu Super-------------------------------------------------------------
[554] = {voc = 554, newVoc = 555, from_looktype = 984, looktype = 986, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[555] = {voc = 555, newVoc = 556, from_looktype = 986, looktype = 985, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[556] = {voc = 556, newVoc = 557, from_looktype = 985, looktype = 987, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[557] = {voc = 557, newVoc = 558, from_looktype = 987, looktype = 991, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[558] = {voc = 558, newVoc = 559, from_looktype = 991, looktype = 990, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------Cabba-------------------------------------------------------------
[561] = {voc = 561, newVoc = 562, from_looktype = 1023, looktype = 1024, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[562] = {voc = 562, newVoc = 563, from_looktype = 1024, looktype = 1025, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[563] = {voc = 563, newVoc = 564, from_looktype = 1025, looktype = 1025, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[564] = {voc = 564, newVoc = 565, from_looktype = 1025, looktype = 1027, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Cabba GTNO-------------------------------------------------------------
[567] = {voc = 567, newVoc = 568, from_looktype = 533, looktype = 1266, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[568] = {voc = 568, newVoc = 569, from_looktype = 1266, looktype = 1267, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[569] = {voc = 569, newVoc = 570, from_looktype = 1267, looktype = 1296, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[570] = {voc = 570, newVoc = 571, from_looktype = 1296, looktype = 1269, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[571] = {voc = 571, newVoc = 572, from_looktype = 1269, looktype = 1270, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Cabba Super-------------------------------------------------------------
[574] = {voc = 574, newVoc = 575, from_looktype = 1023, looktype = 1024, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[575] = {voc = 575, newVoc = 576, from_looktype = 1024, looktype = 1025, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[576] = {voc = 576, newVoc = 577, from_looktype = 1025, looktype = 1027, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[577] = {voc = 577, newVoc = 578, from_looktype = 1027, looktype = 1026, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[578] = {voc = 578, newVoc = 579, from_looktype = 1026, looktype = 1028, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------Caulifla-------------------------------------------------------------
[581] = {voc = 581, newVoc = 582, from_looktype = 1007, looktype = 1008, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[582] = {voc = 582, newVoc = 583, from_looktype = 1008, looktype = 1009, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[583] = {voc = 583, newVoc = 584, from_looktype = 1009, looktype = 1010, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[584] = {voc = 584, newVoc = 585, from_looktype = 1010, looktype = 1010, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Caulifla GTNO-------------------------------------------------------------
[587] = {voc = 587, newVoc = 588, from_looktype = 1372, looktype = 1266, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[588] = {voc = 588, newVoc = 589, from_looktype = 1266, looktype = 1267, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[589] = {voc = 589, newVoc = 590, from_looktype = 1267, looktype = 1296, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[590] = {voc = 590, newVoc = 591, from_looktype = 1296, looktype = 1269, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[591] = {voc = 591, newVoc = 592, from_looktype = 1269, looktype = 1270, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Caulifla Super-------------------------------------------------------------
[594] = {voc = 594, newVoc = 595, from_looktype = 1007, looktype = 1008, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[595] = {voc = 595, newVoc = 596, from_looktype = 1008, looktype = 1009, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[596] = {voc = 596, newVoc = 597, from_looktype = 1009, looktype = 1010, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[597] = {voc = 597, newVoc = 598, from_looktype = 1010, looktype = 1010, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[598] = {voc = 598, newVoc = 599, from_looktype = 1010, looktype = 1011, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------Kale-------------------------------------------------------------
[601] = {voc = 601, newVoc = 602, from_looktype = 1029, looktype = 1030, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[602] = {voc = 602, newVoc = 603, from_looktype = 1030, looktype = 1031, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[603] = {voc = 603, newVoc = 604, from_looktype = 1031, looktype = 1032, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[604] = {voc = 604, newVoc = 605, from_looktype = 1032, looktype = 1033, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Kale GTNO-------------------------------------------------------------
[607] = {voc = 607, newVoc = 608, from_looktype = 533, looktype = 1266, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[608] = {voc = 608, newVoc = 609, from_looktype = 1266, looktype = 1267, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[609] = {voc = 609, newVoc = 610, from_looktype = 1267, looktype = 1296, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[610] = {voc = 610, newVoc = 611, from_looktype = 1296, looktype = 1269, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[611] = {voc = 611, newVoc = 612, from_looktype = 1269, looktype = 1270, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Kale Super-------------------------------------------------------------
[614] = {voc = 614, newVoc = 615, from_looktype = 1029, looktype = 1030, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[615] = {voc = 615, newVoc = 616, from_looktype = 1030, looktype = 1031, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[616] = {voc = 616, newVoc = 617, from_looktype = 1031, looktype = 1032, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[617] = {voc = 617, newVoc = 618, from_looktype = 1032, looktype = 1033, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[618] = {voc = 618, newVoc = 619, from_looktype = 1033, looktype = 1034, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------Bergamo-------------------------------------------------------------
[621] = {voc = 621, newVoc = 622, from_looktype = 1012, looktype = 1013, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[622] = {voc = 622, newVoc = 623, from_looktype = 1013, looktype = 1014, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[623] = {voc = 623, newVoc = 624, from_looktype = 1014, looktype = 1015, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[624] = {voc = 624, newVoc = 625, from_looktype = 1015, looktype = 1016, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Bergamo GTNO-------------------------------------------------------------
[627] = {voc = 627, newVoc = 628, from_looktype = 533, looktype = 1266, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[628] = {voc = 628, newVoc = 629, from_looktype = 1266, looktype = 1267, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[629] = {voc = 629, newVoc = 630, from_looktype = 1267, looktype = 1268, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[630] = {voc = 630, newVoc = 631, from_looktype = 1268, looktype = 1269, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[631] = {voc = 631, newVoc = 632, from_looktype = 1269, looktype = 1270, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Bergamo Super-------------------------------------------------------------
[634] = {voc = 634, newVoc = 635, from_looktype = 1012, looktype = 1013, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[635] = {voc = 635, newVoc = 636, from_looktype = 1013, looktype = 1014, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[636] = {voc = 636, newVoc = 637, from_looktype = 1014, looktype = 1015, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[637] = {voc = 637, newVoc = 638, from_looktype = 1015, looktype = 1016, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[638] = {voc = 638, newVoc = 639, from_looktype = 1016, looktype = 1017, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------Hit-------------------------------------------------------------
[641] = {voc = 641, newVoc = 642, from_looktype = 1000, looktype = 1001, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[642] = {voc = 642, newVoc = 643, from_looktype = 1001, looktype = 1002, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[643] = {voc = 643, newVoc = 644, from_looktype = 1002, looktype = 1003, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[644] = {voc = 644, newVoc = 645, from_looktype = 1003, looktype = 1004, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Hit GTNO-------------------------------------------------------------
[647] = {voc = 647, newVoc = 648, from_looktype = 100, looktype = 1266, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[648] = {voc = 648, newVoc = 649, from_looktype = 1266, looktype = 1267, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[649] = {voc = 649, newVoc = 650, from_looktype = 1267, looktype = 1296, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[650] = {voc = 650, newVoc = 651, from_looktype = 1296, looktype = 1269, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[651] = {voc = 651, newVoc = 652, from_looktype = 1269, looktype = 1270, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Hit Super-------------------------------------------------------------
[654] = {voc = 654, newVoc = 655, from_looktype = 1000, looktype = 1001, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[655] = {voc = 655, newVoc = 656, from_looktype = 1001, looktype = 1002, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[656] = {voc = 656, newVoc = 657, from_looktype = 1002, looktype = 1003, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[657] = {voc = 657, newVoc = 658, from_looktype = 1003, looktype = 1004, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[658] = {voc = 658, newVoc = 659, from_looktype = 1005, looktype = 1021, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------Jiren-------------------------------------------------------------
[661] = {voc = 661, newVoc = 662, from_looktype = 1062, looktype = 1053, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[662] = {voc = 662, newVoc = 663, from_looktype = 1053, looktype = 1054, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[663] = {voc = 663, newVoc = 664, from_looktype = 1054, looktype = 1051, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[664] = {voc = 664, newVoc = 665, from_looktype = 1051, looktype = 1060, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Jiren GTNO-------------------------------------------------------------
[667] = {voc = 667, newVoc = 668, from_looktype = 533, looktype = 1266, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[668] = {voc = 668, newVoc = 669, from_looktype = 1266, looktype = 1267, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[669] = {voc = 669, newVoc = 670, from_looktype = 1267, looktype = 1296, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[670] = {voc = 670, newVoc = 671, from_looktype = 1296, looktype = 1269, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[671] = {voc = 671, newVoc = 672, from_looktype = 1269, looktype = 1270, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Jiren Super-------------------------------------------------------------
[674] = {voc = 674, newVoc = 675, from_looktype = 1051, looktype = 1060, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[675] = {voc = 675, newVoc = 676, from_looktype = 1060, looktype = 1052, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[676] = {voc = 676, newVoc = 677, from_looktype = 1052, looktype = 1055, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[677] = {voc = 677, newVoc = 678, from_looktype = 1055, looktype = 1055, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[678] = {voc = 678, newVoc = 679, from_looktype = 1055, looktype = 1058, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------Kame-------------------------------------------------------------
[681] = {voc = 681, newVoc = 682, from_looktype = 1044, looktype = 1044, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[682] = {voc = 682, newVoc = 683, from_looktype = 1044, looktype = 1043, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[683] = {voc = 683, newVoc = 684, from_looktype = 1043, looktype = 1043, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[684] = {voc = 684, newVoc = 685, from_looktype = 1043, looktype = 1046, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Kame GTNO-------------------------------------------------------------
[687] = {voc = 687, newVoc = 688, from_looktype = 1387, looktype = 1394, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[688] = {voc = 688, newVoc = 689, from_looktype = 1394, looktype = 1392, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[689] = {voc = 689, newVoc = 690, from_looktype = 1392, looktype = 1391, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[690] = {voc = 690, newVoc = 691, from_looktype = 1391, looktype = 1393, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[691] = {voc = 691, newVoc = 692, from_looktype = 1393, looktype = 1396, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Kame Super-------------------------------------------------------------
[694] = {voc = 694, newVoc = 695, from_looktype = 1044, looktype = 1043, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[695] = {voc = 695, newVoc = 696, from_looktype = 1043, looktype = 1046, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[696] = {voc = 696, newVoc = 697, from_looktype = 1046, looktype = 1046, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[697] = {voc = 697, newVoc = 698, from_looktype = 1046, looktype = 1048, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[698] = {voc = 698, newVoc = 699, from_looktype = 1048, looktype = 1047, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------Tapion-------------------------------------------------------------
[701] = {voc = 701, newVoc = 702, from_looktype = 491, looktype = 492, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[702] = {voc = 702, newVoc = 703, from_looktype = 492, looktype = 493, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[703] = {voc = 703, newVoc = 704, from_looktype = 493, looktype = 493, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[704] = {voc = 704, newVoc = 705, from_looktype = 493, looktype = 494, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Tapion GTNO-------------------------------------------------------------
[707] = {voc = 707, newVoc = 708, from_looktype = 1397, looktype = 1398, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[708] = {voc = 708, newVoc = 709, from_looktype = 1398, looktype = 1399, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[709] = {voc = 709, newVoc = 710, from_looktype = 1399, looktype = 1400, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[710] = {voc = 710, newVoc = 711, from_looktype = 1400, looktype = 1401, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[711] = {voc = 711, newVoc = 712, from_looktype = 1401, looktype = 1402, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Tapion Super-------------------------------------------------------------
[714] = {voc = 714, newVoc = 715, from_looktype = 1036, looktype = 1037, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[715] = {voc = 715, newVoc = 716, from_looktype = 1037, looktype = 1038, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[716] = {voc = 716, newVoc = 717, from_looktype = 1038, looktype = 1038, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[717] = {voc = 717, newVoc = 718, from_looktype = 1039, looktype = 1040, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[718] = {voc = 718, newVoc = 719, from_looktype = 1040, looktype = 1041, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------C21-------------------------------------------------------------
[721] = {voc = 721, newVoc = 722, from_looktype = 1063, looktype = 1064, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[722] = {voc = 722, newVoc = 723, from_looktype = 1064, looktype = 1065, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[723] = {voc = 723, newVoc = 724, from_looktype = 1065, looktype = 1066, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[724] = {voc = 724, newVoc = 725, from_looktype = 1066, looktype = 1066, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------C21 GTNO-------------------------------------------------------------
[727] = {voc = 727, newVoc = 728, from_looktype = 1066, looktype = 1266, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[728] = {voc = 728, newVoc = 729, from_looktype = 1266, looktype = 1267, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[729] = {voc = 729, newVoc = 730, from_looktype = 1267, looktype = 1296, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[730] = {voc = 730, newVoc = 731, from_looktype = 1296, looktype = 1269, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[731] = {voc = 731, newVoc = 732, from_looktype = 1269, looktype = 1270, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------C21 Super-------------------------------------------------------------
[734] = {voc = 734, newVoc = 735, from_looktype = 1064, looktype = 1065, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[735] = {voc = 735, newVoc = 736, from_looktype = 1065, looktype = 1066, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[736] = {voc = 736, newVoc = 737, from_looktype = 1066, looktype = 1067, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[737] = {voc = 737, newVoc = 738, from_looktype = 1067, looktype = 1068, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[738] = {voc = 738, newVoc = 739, from_looktype = 1068, looktype = 1069, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------Kefla-------------------------------------------------------------
[741] = {voc = 741, newVoc = 742, from_looktype = 1071, looktype = 1072, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[742] = {voc = 742, newVoc = 743, from_looktype = 1072, looktype = 1073, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[743] = {voc = 743, newVoc = 744, from_looktype = 1073, looktype = 1073, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[744] = {voc = 744, newVoc = 745, from_looktype = 1073, looktype = 1074, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Kefla GTNO-------------------------------------------------------------
[747] = {voc = 747, newVoc = 748, from_looktype = 533, looktype = 1266, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[748] = {voc = 748, newVoc = 749, from_looktype = 1266, looktype = 1267, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[749] = {voc = 749, newVoc = 750, from_looktype = 1267, looktype = 1296, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[750] = {voc = 750, newVoc = 751, from_looktype = 1296, looktype = 1269, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[751] = {voc = 751, newVoc = 752, from_looktype = 1269, looktype = 1270, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Kefla Super-------------------------------------------------------------
[754] = {voc = 754, newVoc = 755, from_looktype = 1071, looktype = 1072, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[755] = {voc = 755, newVoc = 756, from_looktype = 1072, looktype = 1073, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[756] = {voc = 756, newVoc = 757, from_looktype = 1073, looktype = 1074, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[757] = {voc = 757, newVoc = 758, from_looktype = 1074, looktype = 1075, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[758] = {voc = 758, newVoc = 759, from_looktype = 1075, looktype = 1076, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------Dyspo-------------------------------------------------------------
[761] = {voc = 761, newVoc = 762, from_looktype = 1080, looktype = 1081, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[762] = {voc = 762, newVoc = 763, from_looktype = 1081, looktype = 1081, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[763] = {voc = 763, newVoc = 764, from_looktype = 1081, looktype = 1082, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[764] = {voc = 764, newVoc = 765, from_looktype = 1082, looktype = 1084, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Dyspo GTNO-------------------------------------------------------------
[767] = {voc = 767, newVoc = 768, from_looktype = 1080, looktype = 1082, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[768] = {voc = 768, newVoc = 769, from_looktype = 1082, looktype = 1084, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[769] = {voc = 769, newVoc = 770, from_looktype = 1084, looktype = 1085, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[770] = {voc = 770, newVoc = 771, from_looktype = 1085, looktype = 1083, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[771] = {voc = 771, newVoc = 772, from_looktype = 1083, looktype = 1086, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Dyspo Super-------------------------------------------------------------
[774] = {voc = 774, newVoc = 775, from_looktype = 1080, looktype = 1082, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[775] = {voc = 775, newVoc = 776, from_looktype = 1082, looktype = 1084, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[776] = {voc = 776, newVoc = 777, from_looktype = 1084, looktype = 1085, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[777] = {voc = 777, newVoc = 778, from_looktype = 1085, looktype = 1083, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[778] = {voc = 778, newVoc = 779, from_looktype = 1083, looktype = 1086, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------C13-------------------------------------------------------------
[781] = {voc = 781, newVoc = 782, from_looktype = 658, looktype = 659, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[782] = {voc = 782, newVoc = 783, from_looktype = 659, looktype = 660, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[783] = {voc = 783, newVoc = 784, from_looktype = 660, looktype = 662, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[784] = {voc = 784, newVoc = 785, from_looktype = 662, looktype = 663, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------C13 GT-------------------------------------------------------------
[787] = {voc = 787, newVoc = 788, from_looktype = 658, looktype = 660, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[788] = {voc = 788, newVoc = 789, from_looktype = 660, looktype = 662, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[789] = {voc = 789, newVoc = 790, from_looktype = 662, looktype = 661, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[790] = {voc = 790, newVoc = 791, from_looktype = 661, looktype = 663, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[791] = {voc = 791, newVoc = 792, from_looktype = 663, looktype = 664, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------C13 SuperNO-------------------------------------------------------------
[794] = {voc = 794, newVoc = 795, from_looktype = 533, looktype = 1265, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[795] = {voc = 795, newVoc = 796, from_looktype = 1265, looktype = 1296, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[796] = {voc = 796, newVoc = 797, from_looktype = 1296, looktype = 1331, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[797] = {voc = 797, newVoc = 798, from_looktype = 1331, looktype = 1186, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[798] = {voc = 798, newVoc = 799, from_looktype = 1186, looktype = 71, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------Cumber-------------------------------------------------------------
[801] = {voc = 801, newVoc = 802, from_looktype = 1406, looktype = 1407, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[802] = {voc = 802, newVoc = 803, from_looktype = 1407, looktype = 1408, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[803] = {voc = 803, newVoc = 804, from_looktype = 1408, looktype = 1409, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[804] = {voc = 804, newVoc = 805, from_looktype = 1409, looktype = 1410, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Cumber GT-------------------------------------------------------------
[807] = {voc = 807, newVoc = 808, from_looktype = 1414, looktype = 1266, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[808] = {voc = 808, newVoc = 809, from_looktype = 1266, looktype = 1267, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[809] = {voc = 809, newVoc = 810, from_looktype = 1267, looktype = 1296, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[810] = {voc = 810, newVoc = 811, from_looktype = 1296, looktype = 1269, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[811] = {voc = 811, newVoc = 812, from_looktype = 1269, looktype = 1270, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Cumber Super-------------------------------------------------------------
[814] = {voc = 814, newVoc = 815, from_looktype = 1414, looktype = 1415, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[815] = {voc = 815, newVoc = 816, from_looktype = 1415, looktype = 1411, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[816] = {voc = 816, newVoc = 817, from_looktype = 1411, looktype = 1416, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[817] = {voc = 817, newVoc = 818, from_looktype = 1416, looktype = 1412, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[818] = {voc = 818, newVoc = 819, from_looktype = 1412, looktype = 1416, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------Hearts-------------------------------------------------------------
[821] = {voc = 821, newVoc = 822, from_looktype = 533, looktype = 1266, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[822] = {voc = 822, newVoc = 823, from_looktype = 1266, looktype = 1267, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[823] = {voc = 823, newVoc = 824, from_looktype = 1267, looktype = 1296, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[824] = {voc = 824, newVoc = 825, from_looktype = 1296, looktype = 1269, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Hearts GT-------------------------------------------------------------
[827] = {voc = 827, newVoc = 828, from_looktype = 533, looktype = 1266, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[828] = {voc = 828, newVoc = 829, from_looktype = 1266, looktype = 1267, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[829] = {voc = 829, newVoc = 830, from_looktype = 1267, looktype = 1296, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[830] = {voc = 830, newVoc = 831, from_looktype = 1296, looktype = 1269, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[831] = {voc = 831, newVoc = 832, from_looktype = 1269, looktype = 1270, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Hearts Super-------------------------------------------------------------
[834] = {voc = 834, newVoc = 835, from_looktype = 533, looktype = 1265, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[835] = {voc = 835, newVoc = 836, from_looktype = 1265, looktype = 1296, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[836] = {voc = 836, newVoc = 837, from_looktype = 1296, looktype = 1331, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[837] = {voc = 837, newVoc = 838, from_looktype = 1331, looktype = 1186, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[838] = {voc = 838, newVoc = 839, from_looktype = 1186, looktype = 71, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
--------------------------------------------------Fuu-------------------------------------------------------------
[841] = {voc = 841, newVoc = 842, from_looktype = 754, looktype = 755, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[842] = {voc = 842, newVoc = 843, from_looktype = 755, looktype = 756, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[843] = {voc = 843, newVoc = 844, from_looktype = 756, looktype = 757, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[844] = {voc = 844, newVoc = 845, from_looktype = 757, looktype = 758, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Fuu GT-------------------------------------------------------------
[847] = {voc = 847, newVoc = 848, from_looktype = 755, looktype = 1266, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[848] = {voc = 848, newVoc = 849, from_looktype = 1266, looktype = 1267, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[849] = {voc = 849, newVoc = 850, from_looktype = 1267, looktype = 1296, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[850] = {voc = 850, newVoc = 851, from_looktype = 1296, looktype = 1269, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[851] = {voc = 851, newVoc = 852, from_looktype = 1269, looktype = 1270, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
----------------------------------------------------Fuu Super-------------------------------------------------------------
[854] = {voc = 854, newVoc = 855, from_looktype = 754, looktype = 755, level = 50, rage = 0, mana = 700, addHealth = 5000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[855] = {voc = 855, newVoc = 856, from_looktype = 755, looktype = 756, level = 100, rage = 0, mana = 3000, addHealth = 10000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[856] = {voc = 856, newVoc = 857, from_looktype = 756, looktype = 757, level = 150, rage = 0, mana = 6000, addHealth = 15000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[857] = {voc = 857, newVoc = 858, from_looktype = 757, looktype = 758, level = 200, rage = 0, mana = 10000, addHealth = 20000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
[858] = {voc = 858, newVoc = 859, from_looktype = 758, looktype = 759, level = 400, rage = 0, mana = 12000, addHealth = 25000, addMana = 5000, effect2 = 0, aura = nil, constant = false},
}

function table.find(tbl, value)
    for i, v in pairs(tbl) do
        if v == value then
            return i
        end
    end
    return nil
end

function table.serialize(x, recur)
    local t = type(x)
    recur = recur or {}

    if x == nil then
        return "nil"
    elseif t == "string" then
        return string.format("%q", x)
    elseif t == "number" or t == "boolean" then
        return tostring(x)
    elseif t == "table" then
        if table.find(recur, x) then
            error("Cannot serialize recursive tables.")
        end
        table.insert(recur, x)

        local serialized = {}
        for k, v in pairs(x) do
            local key = "[" .. table.serialize(k, recur) .. "]"
            local value = table.serialize(v, recur)
            table.insert(serialized, key .. " = " .. value)
        end
        return "{" .. table.concat(serialized, ", ") .. "}"
    else
        error("Cannot serialize value of type '" .. t .. "'.")
    end
end


function getDistanceBetween(firstPosition, secondPosition)
	local xDif = math.abs(firstPosition.x - secondPosition.x)
	local yDif = math.abs(firstPosition.y - secondPosition.y)
	local posDif = math.max(xDif, yDif)
	if firstPosition.z ~= secondPosition.z then
		posDif = posDif + 15
	end
	return posDif
end

function getFormattedWorldTime()
	local worldTime = getWorldTime()
	local hours = math.floor(worldTime / 60)

	local minutes = worldTime % 60
	if minutes < 10 then
		minutes = '0' .. minutes
	end
	return hours .. ':' .. minutes
end

function getLootRandom()
	return math.random(0, MAX_LOOTCHANCE) / configManager.getNumber(configKeys.RATE_LOOT)
end

table.contains = function(array, value)
	for _, targetColumn in pairs(array) do
		if targetColumn == value then
			return true
		end
	end
	return false
end

string.split = function(str, sep)
	local res = {}
	for v in str:gmatch("([^" .. sep .. "]+)") do
		res[#res + 1] = v
	end
	return res
end

string.splitTrimmed = function(str, sep)
	local res = {}
	for v in str:gmatch("([^" .. sep .. "]+)") do
		res[#res + 1] = v:trim()
	end
	return res
end

string.trim = function(str)
	return str:match'^()%s*$' and '' or str:match'^%s*(.*%S)'
end

if not nextUseStaminaTime then
	nextUseStaminaTime = {}
end

function getPlayerDatabaseInfo(name_or_guid)
	local sql_where = ""

	if type(name_or_guid) == 'string' then
		sql_where = "WHERE `p`.`name`=" .. db.escapeString(name_or_guid) .. ""
	elseif type(name_or_guid) == 'number' then
		sql_where = "WHERE `p`.`id`='" .. name_or_guid .. "'"
	else
		return false
	end

	local sql_query = [[
		SELECT
			`p`.`id` as `guid`,
			`p`.`name`,
			CASE WHEN `po`.`player_id` IS NULL
				THEN 0
				ELSE 1
			END AS `online`,
			`p`.`group_id`,
			`p`.`level`,
			`p`.`experience`,
			`p`.`vocation`,
			`p`.`maglevel`,
			`p`.`skill_fist`,
			`p`.`skill_club`,
			`p`.`skill_sword`,
			`p`.`skill_axe`,
			`p`.`skill_dist`,
			`p`.`skill_shielding`,
			`p`.`skill_runecraft`,
			`p`.`skill_points`,
			`p`.`town_id`,
			`p`.`balance`,
			`gm`.`guild_id`,
			`gm`.`nick`,
			`g`.`name` AS `guild_name`,
			CASE WHEN `p`.`id` = `g`.`ownerid`
				THEN 1
				ELSE 0
			END AS `is_leader`,
			`gr`.`name` AS `rank_name`,
			`gr`.`level` AS `rank_level`,
			`h`.`id` AS `house_id`,
			`h`.`name` AS `house_name`,
			`h`.`town_id` AS `house_town`
		FROM `players` AS `p`
		LEFT JOIN `players_online` AS `po`
			ON `p`.`id` = `po`.`player_id`
		LEFT JOIN `guild_membership` AS `gm`
			ON `p`.`id` = `gm`.`player_id`
		LEFT JOIN `guilds` AS `g`
			ON `gm`.`guild_id` = `g`.`id`
		LEFT JOIN `guild_ranks` AS `gr`
			ON `gm`.`rank_id` = `gr`.`id`
		LEFT JOIN `houses` AS `h`
			ON `p`.`id` = `h`.`owner`
	]] .. sql_where

	local query = db.storeQuery(sql_query)
	if not query then
		return false
	end

	local info = {
		["guid"] = result.getNumber(query, "guid"),
		["name"] = result.getString(query, "name"),
		["online"] = result.getNumber(query, "online"),
		["group_id"] = result.getNumber(query, "group_id"),
		["level"] = result.getNumber(query, "level"),
		["experience"] = result.getNumber(query, "experience"),
		["vocation"] = result.getNumber(query, "vocation"),
		["maglevel"] = result.getNumber(query, "maglevel"),
		["skill_fist"] = result.getNumber(query, "skill_fist"),
		["skill_club"] = result.getNumber(query, "skill_club"),
		["skill_sword"] = result.getNumber(query, "skill_sword"),
		["skill_axe"] = result.getNumber(query, "skill_axe"),
		["skill_dist"] = result.getNumber(query, "skill_dist"),
		["skill_shielding"] = result.getNumber(query, "skill_shielding"),
		["skill_fishing"] = result.getNumber(query, "skill_fishing"),
		["skill_runecraft"] = result.getNumber(query, "skill_runecraft"),
		["town_id"] = result.getNumber(query, "town_id"),
		["balance"] = result.getNumber(query, "balance"),
		["guild_id"] = result.getNumber(query, "guild_id"),
		["nick"] = result.getString(query, "nick"),
		["guild_name"] = result.getString(query, "guild_name"),
		["is_leader"] = result.getNumber(query, "is_leader"),
		["rank_name"] = result.getString(query, "rank_name"),
		["rank_level"] = result.getNumber(query, "rank_level"),
		["house_id"] = result.getNumber(query, "house_id"),
		["house_name"] = result.getString(query, "house_name"),
		["house_town"] = result.getNumber(query, "house_town")
	}

	result.free(query)
	return info
end

function capAll(str)
    local newStr = ""; wordSeparate = string.gmatch(str, "([^%s]+)")
    for v in wordSeparate do
        v = v:gsub("^%l", string.upper)
        if newStr ~= "" then
            newStr = newStr.." "..v
        else
            newStr = v
        end
    end
    return newStr
end


if not modalWindows then
    modalWindows = {
        modalWindowConstructor = ModalWindow,
        nextFreeId = 500,
 
        windows = {}
    }
end
 
local MT = {}
MT.__index = MT
 
function ModalWindow(...)
    local args = {...}
    if type(args[1]) == 'table' then
        local self = setmetatable(args[1], MT)
        local id = modalWindows.nextFreeId        
        self.id = id
        self.buttons = {}
        self.choices = {}
        self.players = {}
        self.created = false
 
        modalWindows.nextFreeId = id + 1
        table.insert(modalWindows.windows, self)
        return self
    end
 
    return modalWindows.modalWindowConstructor(...)
end
 
function MT:setDefaultCallback(callback)
    self.defaultCallback = callback
end
 
function MT:addButton(text, callback)
    local button = {text = tostring(text), callback = callback}
    table.insert(self.buttons, button)
    return button
end
 
function MT:addButtons(...)
    for _, text in ipairs({...}) do
        table.insert(self.buttons, {text = tostring(text)})
    end
end
 
function MT:addChoice(text)
    local choice = {text = tostring(text)}
    table.insert(self.choices, choice)
    return choice
end
 
function MT:addChoices(...)
    for _, text in ipairs({...}) do
        table.insert(self.choices, {text = tostring(text)})
    end
end
 
function MT:setDefaultEnterButton(text)
    self.defaultEnterButton = text
end
 
function MT:setDefaultEscapeButton(text)
    self.defaultEscapeButton = text
end
 
function MT:setTitle(title)
    self.title = tostring(title)
end
 
function MT:setMessage(message)
    self.message = tostring(message)
end
 
local buttonOrder = {
    [4] = {3, 4, 2, 1},
    [3] = {2, 3, 1},
    [2] = {1, 2},
    [1] = {1}
}
function MT:create()
    local modalWindow = modalWindows.modalWindowConstructor(self.id, self.title, self.message)
    local order = buttonOrder[math.min(#self.buttons, 4)]
 
    if order then
        for _, i in ipairs(order) do
            local button = self.buttons[i]
            modalWindow:addButton(i, button.text)
            button.id = i
 
            if button.text == self.defaultEnterButton then
                modalWindow:setDefaultEnterButton(i)
            elseif button.text == self.defaultEscapeButton then
                modalWindow:setDefaultEscapeButton(i)
            end
        end
    end
 
    for _, choice in ipairs(self.choices) do
        modalWindow:addChoice(_, choice.text)
        choice.id = _
    end
 
    self.modalWindow = modalWindow
end
 
function MT:sendToPlayer(player)
    if not self.modalWindow then
        self:create()
    end
 
    player:registerEvent('ModalWindowHelper')
    self.players[player:getId()] = true
    return self.modalWindow:sendToPlayer(player)
end

function Player.setExhaustion(self, value, time)
    self:setStorageValue(value, time + os.time())
end

function Player.getExhaustion(self, value)
    local storage = self:getStorageValue(value)
    if not storage or storage <= os.time() then
        return 0
    end

    return storage - os.time()
end

function Player:hasExhaustion(value)
    return self:getExhaustion(value) >= os.time() and true or false
end


-- AutoLoot config
AUTO_LOOT_MAX_ITEMS = 5

-- Reserved storage
AUTOLOOT_STORAGE_START = 10000
AUTOLOOT_STORAGE_END = AUTOLOOT_STORAGE_START + AUTO_LOOT_MAX_ITEMS
-- AutoLoot config end