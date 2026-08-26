function onUse(cid, item, frompos, item2, topos)
	if item.uid == 60006 then
		if getPlayerStorageValue(cid,60006) == -1 then
			doPlayerSendTextMessage(cid,25,"Voce ganhou uma Vastlord Armor!")
			doPlayerAddItem(cid,13928,1)
			setPlayerStorageValue(cid,60006,1)
		else
			doPlayerSendTextMessage(cid,25,"Voce já recebeu seu item.")
		end
		return true
	end
end