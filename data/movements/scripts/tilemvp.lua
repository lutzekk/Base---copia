
function onStepIn(cid, item, position, fromPosition)
	
		if getPlayerLevel(cid) >= 400 then
		doSendMagicEffect(getThingPos(cid), 7)
		doPlayerSendTextMessage(cid, 25, "Welcome to the MVP zone ".. getPlayerName(cid) .."!")
	 else	
	doTeleportThing(cid, fromPosition, true)
		doSendMagicEffect(getThingPos(cid), 2)
		doPlayerSendTextMessage(cid, 25, "LvL 400 player only can pass.")
	
	end
			return true	
	end