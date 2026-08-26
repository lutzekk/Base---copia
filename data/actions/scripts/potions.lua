local t = {
[2689] = {hp = 2000, ki = 1000, soul = 0, m = "Yeah!", s = 6318, exh = 0},
[6558] = {hp = 10000, ki = 10000, soul = 0, m = "Omg! Yeah", s = 6319, exh = 0}, 
[7443] = {hp = 5000, ki = 5000, soul = 0, m = "Omg! Yeah", s = 6320, exh = 0},  
[7440] = {hp = 5000, ki = 1000, soul = 0, m = "Ohh Yeah", s = 6320, exh = 0}, 
[2686] = {hp = 1000, ki = 2000, soul = 0, m = "Yeah", s = 6320, exh = 0}, 
[2685] = {hp = 0, ki = 0, soul = 25, m = "Power!", s = 6320, exh = 0},
[7439] = {hp = 7500, ki = 2500, soul = 2, m = "Namek Power!", s = 6320, exh = 0}
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
		if(os.time() > getPlayerStorageValue(cid, getDane.s)) then
			if(getDane.hp > 0 and getDane.hp ~= nil) then
				doCreatureAddMana(cid,getDane.hp)
			end
			if(getDane.ki > 0 and getDane.hp ~= nil) then
				doCreatureAddHealth(cid,getDane.ki)
			end
			if(getDane.soul > 0 and getDane.soul ~= nil) then
				doPlayerAddSoul(cid, getDane.soul)
			end	

			doSendMagicEffect(p,14)
			doCreatureSay(cid, getDane.m, TALKTYPE_ORANGE_1)
			setPlayerStorageValue(cid, getDane.s, os.time() + getDane.exh)
			getItemType(item)

		else
			doSendMagicEffect(p, CONST_ME_POFF)
			doPlayerSendCancel(cid, "You are exhausted.")	
		end
	end
	return true
end


