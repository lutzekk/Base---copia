local function doCharge()
local storage = 3340
	for _,cid in ipairs(getPlayersOnline()) do
local give = math.random((getPlayerLevel(cid) + getPlayerMagLevel(cid) * 7 + 200), (getPlayerLevel(cid) + getPlayerMagLevel(cid) * 8 + 200))
	if(isPlayer(cid) and getPlayerStorageValue(cid, storage) == 1) then
		if(getCreatureMana(cid) == getCreatureMaxMana(cid) and getCreatureHealth(cid) == getCreatureMaxHealth(cid)) then
			doPlayerSetStorageValue(cid, storage, 0)
			doPlayerSendCancel(cid, "You are powerfull.")
			doCreatureSetNoMove(cid, false)
			return true
		end
		if(getCreatureCondition(cid, CONDITION_INFIGHT) == false) then
		if(getCreatureMana(cid) < getCreatureMaxMana(cid)) then
			doCreatureAddMana(cid, give)
		end
		if(getCreatureHealth(cid) < getCreatureMaxHealth(cid)) then
			doCreatureAddHealth(cid, give)
		end
		else
			doPlayerSetStorageValue(cid, storage, 0)
			doCreatureSetNoMove(cid, false)
		end
		local pos = getPlayerPosition(cid)
		if(getCharge(cid) > 0) then
			doSendMagicEffect(pos, getCharge(cid))
		end
	end
	end
end


function onThink(interval, lastExecution, thinkInterval)
	addEvent(doCharge, 250)
	--addEvent(doCharge, 1500)
	--addEvent(doCharge, 1700)
	--addEvent(doCharge, 2100)
	return true
end

