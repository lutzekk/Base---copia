--[[
BH Corp.
100% wydajniej !
Uszanuj moja robocizne: s
]]--
local t = {
[5878] = {e = 50000, m = "My power is stronger 50.000 experiance up!", s = 6300},
[5948] = {e = 100000, m = "My power is stronger 100.000 experiance up!", s = 6301},
[5880] = {e = 200000, m = "My power is stronger 200.000 experiance up!", s = 6302},
[5920] = {e = 500000, m = "My power is stronger 500.000 experiance up!", s = 6303},
[5894] = {e = 3000000, m = "My power is stronger 3.000.000 experiance up!", s = 6304},
[5882] = {e = 3000000, m = "My power is stronger 3.000.000 experiance up!", s = 6305},
[5914] = {e = 1000000, m = "Majin Power. \n1.000.000 experiance up!", s = 6306},
[2680] = {e = 3000000, m = "My power is stronger 3.000.000 experiance up!", s = 6307},
[4851] = {e = 15000, m = "My power is stronger!", s = 6308},
[5944] = {e = 50000, m = "My power is stronger!", s = 6309},
[7431] = {e = 1000000, m = "My power is stronger!", s = 6310}
--[7431] = {e = 250000000, m = "My power is stronger! [250kk]", s = 6310}
}

local function getItemType(item)
if item.type > 1 then
doChangeTypeItem(item.uid,item.type-1)
else
doRemoveItem(item.uid, 1)
	end
end

function onUse(cid, item, frompos, item2, topos)
local p = getPlayerPosition(cid)
local getDane = t[item.itemid]
	if(getDane) then
		if getPlayerStorageValue(cid, getDane.s) >= 1 then
			return doPlayerSendTextMessage(cid, 22, "Sorry, you cannot use this item.")	
		end
		
		doSendMagicEffect(p, 32)
		doCreatureSay(cid, getDane.m, TALKTYPE_MONSTER)
		doPlayerAddExp(cid, getDane.e)
		doSendAnimatedText(p, getDane.e, math.random(134,153))
		setPlayerStorageValue(cid,getDane.s, getPlayerStorageValue(cid, getDane.s) + 1)
		getItemType(item)
		end
	return true
end 
