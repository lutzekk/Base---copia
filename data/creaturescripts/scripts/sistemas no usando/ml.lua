function onDeath(cid, corpse, deathList)
	if isPlayer(cid) and getPlayerMagLevel(cid) >= 120 then
		doPlayerSetLossPercent(cid, PLAYERLOSS_MANA, 0)
	end
	return true
end