function onStepIn(cid, item, position, lastPosition, fromPosition, toPosition, actor)

if(isPlayer(cid))then
	local set = getPlayerStorageValue(cid, 4442)
	local lvl = getPlayerLevel(cid)
 
	if lvl > 49 and isPremium(cid) then
		doPlayerAddExp(cid,0)
	elseif lvl > 29 and not isPremium(cid) then
		doPlayerAddExp(cid,0)
	elseif set <= 0 and item.itemid == 3170 then
		doPlayerAddExp(cid,1)
	elseif isPremium(cid) and set <= (lvl) and item.itemid == 3170 then
		local addExp2 = math.random(set*3, set*4)
		local hp2 =  math.random(getCreatureMaxHealth(cid)/20 + 1, getCreatureMaxHealth(cid)/20 + 30)
		doPlayerAddExp(cid,addExp2)
		doCreatureAddHealth(cid,-hp2)
	elseif set <= (lvl) and item.itemid == 3170 then
		local addExp = math.random(set, set*2.5)
		local hp =  math.random(getCreatureMaxHealth(cid)/20 + 1, getCreatureMaxHealth(cid)/20 + 30)
		doPlayerAddExp(cid,addExp)
		doCreatureAddHealth(cid,-hp)
	else
	doPlayerSendCancel(cid,"Set Machine to lower than "..(lvl+1)..".")
	end
end
	return true
end