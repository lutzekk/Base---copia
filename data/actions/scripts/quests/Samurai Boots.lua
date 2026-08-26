function onUse(cid, item, frompos, item2, topos)
	if item.uid == 60012 then
		if getPlayerStorageValue(cid,60012) == -1 then
			doPlayerSendTextMessage(cid,25,"Voce ganhou uma Samurai Boots!")
			doPlayerAddItem(cid,13926,1)
			setPlayerStorageValue(cid,60012,1)
		else
			doPlayerSendTextMessage(cid,25,"Voce já recebeu seu item.")
		end
		return true
	end
end