function onCastSpell(cid, var)
doPlayerSay(cid, 'regeneration area', TALKTYPE_ORANGE_1) 
	local pos, membersList = getCreaturePosition(cid), getPartyMembers(cid)
	if(membersList == nil or type(membersList) ~= 'table' or table.maxn(membersList) <= 1) then
		doPlayerSendCancel(cid, 'No party members in range [3 tiles]')
		doSendMagicEffect(pos, CONST_ME_POFF)
		return false
	end

	local affectedList = {}
	for _, pid in ipairs(membersList) do
		if(getDistanceBetween(getCreaturePosition(pid), pos) <= 3) then
			table.insert(affectedList, pid)
		end
	end

	local tmp = table.maxn(affectedList)
	if(tmp <= 1) then
		doPlayerSendCancel(cid, 'No party members in range [3 tiles]')
		doSendMagicEffect(pos, CONST_ME_POFF)
		return false
	end



	local health = math.random(((getPlayerMagLevel(cid) * getPlayerLevel(cid) * 3) * 0.9), getPlayerMagLevel(cid) * getPlayerLevel(cid) * 3)
	for _, pid in ipairs(affectedList) do
		doCreatureAddHealth(pid, health)
		doSendMagicEffect(getCreaturePosition(pid), 13)
	end

	return true
end