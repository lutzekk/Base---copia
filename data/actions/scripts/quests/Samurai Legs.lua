function onUse(cid, item, frompos, item2, topos)
	if item.uid == 60011 then
		if getPlayerStorageValue(cid,60011) == -1 then
			doPlayerSendTextMessage(cid,25,"Voce ganhou uma Samurai Legs!")
			doPlayerAddItem(cid,13925,1)
			setPlayerStorageValue(cid,60011,1)
		else
			doPlayerSendTextMessage(cid,25,"Voce já recebeu seu item.")
		end
		return true
	end
end