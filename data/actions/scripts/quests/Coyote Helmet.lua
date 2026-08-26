function onUse(cid, item, frompos, item2, topos)
	if item.uid == 60022 then
		if getPlayerStorageValue(cid,60022) == -1 then
			doPlayerSendTextMessage(cid,25,"Voce ganhou um Coyote Helmet!")
			doPlayerAddItem(cid,14185,1)
			setPlayerStorageValue(cid,60022,1)
		else
			doPlayerSendTextMessage(cid,25,"Voce já recebeu seu item.")
		end
		return true
	end
end