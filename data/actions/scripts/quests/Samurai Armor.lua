function onUse(cid, item, frompos, item2, topos)
	if item.uid == 60010 then
		if getPlayerStorageValue(cid,60010) == -1 then
			doPlayerSendTextMessage(cid,25,"Voce ganhou uma Samurai Armor!")
			doPlayerAddItem(cid,13924,1)
			setPlayerStorageValue(cid,60010,1)
		else
			doPlayerSendTextMessage(cid,25,"Voce já recebeu seu item.")
		end
		return true
	end
end