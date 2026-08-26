local saga = {
['raditz saga'] = {setStorageValue = 2,
rewards = {
	{"item", 2342, 1}, 
	{"exp", 10000}
}},
['monkey saga'] = {setStorageValue = 4,
rewards = {
	{"exp", 20000}
}},
['gregory saga'] = {setStorageValue = 8,
rewards = {
	{"exp", 20000}
}},
['saibaman saga'] = {setStorageValue = 10,
rewards = {
	{"exp", 20000}
}},
['nappa saga'] = {setStorageValue = 11,
rewards = {
	{"exp", 20000}
}},
['vegeta saga'] = {setStorageValue = 11, summonMonster = "Vegeta Oozaru Saga", say = "MHAHAH \n YOU CAN'T KILL ME.",
rewards = {
	{"item", 2457, 1}, 
	{"exp", 25000}
}},
['vegeta oozaru saga'] = {setStorageValue = 13,
rewards = { 
	{"exp", 25000}
}},
['dodoria saga'] = {setStorageValue = 16,
rewards = { 
	{"exp", 25000}
}},
['zarbon saga'] = {setStorageValue = 18,
rewards = { 
	{"exp", 25000}
}},
['guldo saga'] = {setStorageValue = 20,
rewards = { 
	{"exp", 25000}
}},
['reecome saga'] = {setStorageValue = 21,
rewards = { 
	{"exp", 30000}
}},
['copassa saga'] = {setStorageValue = 22,
rewards = { 
	{"exp", 35000}
}},
['capitan ginyu saga'] = {setStorageValue = 23,
rewards = { 
	{"exp", 50000}
}},
['capitan ginyu goku saga'] = {setStorageValue = 24,
rewards = { 
	{"exp", 100000}
}},
['freeza form 1 saga'] = {setStorageValue = 25, summonMonster = "Freeza2 Saga", say = "..HAHA \n GO DIE.",
rewards = { 
	{"exp", 25000}
}},
['freeza form 2 saga'] = {setStorageValue = 25, summonMonster = "Freeza3 Saga", say = "HAHAH.",
rewards = { 
	{"exp", 25000}
}},
['freeza form 3 saga'] = {setStorageValue = 25, summonMonster = "Freeza4 Saga", say = "NOT YET.",
rewards = { 
	{"exp", 25000}
}},
['freeza form 4 saga'] = {setStorageValue = 25, summonMonster = "Freeza5 Saga", say = "AAAAAAAA!!!",
rewards = { 
	{"exp", 25000}
}},
['freeza form 5 saga'] = {setStorageValue = 26,
rewards = { 
	{"exp", 1000000}
}},
['metal freeza saga'] = {setStorageValue = 28,
rewards = { 
	{"exp", 1000000}
}},
['c19 saga'] = {setStorageValue = 30,
rewards = { 
	{"exp", 100000}
}},
['c20 saga'] = {setStorageValue = 31,
rewards = { 
	{"exp", 100000}
}},
['cell first saga'] = {setStorageValue = 33,
rewards = { 
	{"exp", 200000}
}},
['c17 saga'] = {setStorageValue = 34,
rewards = { 
	{"exp", 300000}
}},
['cell second saga'] = {setStorageValue = 35,
rewards = { 
	{"exp", 500000}
}},
['cell jr saga'] = {setStorageValue = 35,
rewards = { 
	{"exp", 500000}
}},
['cell third saga'] = {setStorageValue = 36, summonMonster = "Cell4 Saga", say = "HAHAHA!!",
rewards = { 
	{"exp", 500000}
}},
['cell fourth saga'] = {setStorageValue = 37,
rewards = { 
	{"exp", 2000000}
}},
['pui pui saga'] = {setStorageValue = 37,
rewards = { 
	{"exp", 100000}
}},
['yakon saga'] = {setStorageValue = 37,
rewards = { 
	{"exp", 200000}
}},
['dabura saga'] = {setStorageValue = 37,
rewards = { 
	{"exp", 300000}
}},
['majin vegeta saga'] = {setStorageValue = 41,
rewards = { 
	{"exp", 1000000}
}},
['fat buu saga'] = {setStorageValue = 42,
rewards = { 
	{"exp", 1000000}
}},
['evil buu saga'] = {setStorageValue = 44,
rewards = { 
	{"exp", 1000000}
}},
['buu second saga'] = {setStorageValue = 46,
rewards = { 
	{"exp", 1000000}
}},
['super buu saga'] = {setStorageValue = 47,
rewards = { 
	{"exp", 1000000}
}},
['kid buu saga'] = {setStorageValue = 49,
rewards = { 
	{"exp", 1500000}
}},
['bebi saga'] = {setStorageValue = 50, summonMonster = "Bebi2 Saga", say = "HAHAHA!!",
rewards = { 
	{"exp", 100000}
}},
['bebi oozaru saga'] = {setStorageValue = 51,
rewards = { 
	{"exp", 3000000}
}},
['super c17 saga'] = {setStorageValue = 53,
rewards = { 
	{"exp", 3000000}
}},
['ryan shenlong saga'] = {setStorageValue = 55,
rewards = { 
	{"exp", 500000}
}},
['chii shenlong saga'] = {setStorageValue = 56,
rewards = { 
	{"exp", 500000}
}},
['uu shenlong saga'] = {setStorageValue = 57,
rewards = { 
	{"exp", 500000}
}},
['ryuu shenlong saga'] = {setStorageValue = 58,
rewards = { 
	{"exp", 500000}
}},
['suu shenron saga'] = {setStorageValue = 59,
rewards = { 
	{"exp", 1000000}
}},
['san shenron saga'] = {setStorageValue = 60,
rewards = { 
	{"exp", 1000000}
}},
['li shenron saga'] = {setStorageValue = 60, summonMonster = "Omega Shenron Saga", say = "REVIVE ME BALLS!",
rewards = { 
	{"exp", 1000000}
}},
['omega shenron saga'] = {setStorageValue = 61,
rewards = { 
	{"exp", 1000000}
}},
}

local function reward(cid, t) 
	for _,n in pairs(t) do
		if(n[1] == "item") then
			doPlayerAddItem(cid, n[2], n[3], true)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE,  "Reward: ".. n[3] .." ".. getItemNameById(n[2]) .."(s).")
		end
		if(n[1] == "exp") then
			doPlayerAddExperience(cid, n[2])
			doSendAnimatedText(getCreaturePosition(cid), n[2], 15)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE,  "Experience: ".. n[2] ..".")
		end
	end
	return true 
end 

function onKill(cid, target, lastHit)

	for x, y in pairs(saga) do 
		if(x:lower() == getCreatureName(target):lower()) then
			--if(getPlayerStorageValue(cid, 8000) == y.getStorageValue) then
				doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "Saga: ".. x .. " successful done.")
				setPlayerStorageValue(cid, 8000, y.setStorageValue)
				--doCreatureSay(cid, "Saga ".. x .." successful done.", TALKTYPE_ORANGE_1)	
				reward(cid, y.rewards)
			--end
		end
	end
	return true
end

function onDeath(cid, corpse, deathList)
	for x, y in pairs(saga) do 
		if(x:lower() == getCreatureName(cid):lower()) then
			if(y.summonMonster ~= nil) then
				local m = doCreateMonster(y.summonMonster, getPlayerPosition(cid))
				doCreatureSay(m, y.say, TALKTYPE_MONSTER)
			end
		end
	end
	return true
end