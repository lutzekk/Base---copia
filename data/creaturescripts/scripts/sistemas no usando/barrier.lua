function onStatsChange(cid, attacker, type, combat, value)
	if (type == STATSCHANGE_HEALTHLOSS or type == STATSCHANGE_HEALTHGAIN) and isMonster(cid) then
		if (getCreatureName(cid) == "Barrier") then
			a = getCreatureHealth(cid) >= (getCreatureMaxHealth(cid)/2) and doSetItemOutfit(cid, 3766, -1) or doSetItemOutfit(cid, 3767, -1)
		end
	end
 return true
end