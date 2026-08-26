function onTarget(cid, target)
	if(attacker and isPlayer(attacker) and (type == STATSCHANGE_HEALTHLOSS or type == STATSCHANGE_MANALOSS) and getPlayerSecureMode(attacker)) then
		return false
	end
	return true
end
 
function onStatsChange(cid, attacker, type, combat, value)
	if(attacker and isPlayer(attacker) and (type == STATSCHANGE_HEALTHLOSS or type == STATSCHANGE_MANALOSS) and getPlayerSecureMode(attacker)) then
		if combat ~= COMBAT_HEALING then
return false
end 
end
return true
end
 
function onCast(cid, target)
	if(attacker and isPlayer(attacker) and (type == STATSCHANGE_HEALTHLOSS or type == STATSCHANGE_MANALOSS) and getPlayerSecureMode(attacker)) then
		if combat ~= COMBAT_HEALING then
return false
end 
end
return true
end