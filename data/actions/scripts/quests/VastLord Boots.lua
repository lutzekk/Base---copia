function onUse(cid, item, frompos, item2, topos)
	if item.uid == 60008 then
		if getPlayerStorageValue(cid,60008) == -1 then
			doPlayerSendTextMessage(cid,25,"Voce ganhou uma Vastlord Boots!")
			doPlayerAddItem(cid,13930,1)
			setPlayerStorageValue(cid,60008,1)
		else
			doPlayerSendTextMessage(cid,25,"Voce já recebeu seu item.")
		end
		return true
	end
end