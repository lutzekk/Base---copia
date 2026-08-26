function onUse(cid, item, frompos, item2, topos)
	if item.uid == 60001 then
		if getPlayerStorageValue(cid,60001) == -1 then
			doPlayerSendTextMessage(cid,25,"Voce ganhou uma Unknown Helmet!")
			doPlayerAddItem(cid,13918,1)
			setPlayerStorageValue(cid,60001,1)
		else
			doPlayerSendTextMessage(cid,25,"Voce já recebeu seu item.")
		end
		return true
	end
end