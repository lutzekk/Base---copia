local t = {
[1] = {v = 69},
[6] = {v = 62},
[76] = {v = 250},
[2] = {v = 73},
[7] = {v = 158},
[78] = {v = 51},
[12] = {v = 84},
[3] = {v = 50},
[5] = {v = 15},
[13] = {v = 15},
[9] = {v = 227},
[8] = {v = 52},
[10] = {v = 34},
[11] = {v = 167},
[91] = {v = 190},
[100] = {v = 60},
[105] = {v = 281},
[109] = {v = 223},
[303] = {v = 329},
[333] = {v = 334},
[314] = {v = 326},
[324] = {v = 241},
[353] = {v = 356},
[343] = {v = 349}

}

function onSay(cid, words, param)
local v = t[getPlayerVocation(cid)]
	if(v) then
		doCreatureChangeOutfit(cid, {lookType=v.v})
	end
    return true
end