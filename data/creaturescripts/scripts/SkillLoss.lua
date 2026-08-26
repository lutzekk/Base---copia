function onDeath(cid, corpse, lastHitKiller, mostDamageKiller)
	 if getPlayerMagLevel(cid) == 35 then
	  for i = 1, 9 do
		doPlayerSetLossPercent(cid, i, 0)
	  end
	 end
end