function onStepIn(cid, item, position, fromPosition)
	
		if getPlayerPremiumDays(cid) >= 1 then
		doSendMagicEffect(getThingPos(cid), 7)
		doPlayerSendTextMessage(cid, 25, "Welcome to the VIP Heaven zone ".. getPlayerName(cid) .."!")
	 else	
	doTeleportThing(cid, fromPosition, true)
		doSendMagicEffect(getThingPos(cid), 2)
		doPlayerSendTextMessage(cid, 25, "Only VIP Players can pass.")
	
	end
			return true	
	end