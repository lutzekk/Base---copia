function onUse(cid, item, frompos, item2, topos)
	if item.uid == 60013 then
		if getPlayerStorageValue(cid,60013) == -1 then
			doPlayerSendTextMessage(cid,25,"Voce ganhou uma Rook Helmet!")
			doPlayerAddItem(cid,13942,1)
			setPlayerStorageValue(cid,60013,1)
		else
			doPlayerSendTextMessage(cid,25,"Voce já recebeu seu item.")
		end
		return true
	end
end