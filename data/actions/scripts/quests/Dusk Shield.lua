function onUse(cid, item, frompos, item2, topos)
	if item.uid == 60026 then
		if getPlayerStorageValue(cid,60026) == -1 then
			doPlayerSendTextMessage(cid,25,"Voce ganhou um Dusk Shield!")
			doPlayerAddItem(cid,14675,1)
			setPlayerStorageValue(cid,60026,1)
		else
			doPlayerSendTextMessage(cid,25,"Voce já recebeu seu item.")
		end
		return true
	end
end