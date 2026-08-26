function onUse(cid, item, frompos, item2, topos)
	if item.uid == 60003 then
		if getPlayerStorageValue(cid,60003) == -1 then
			doPlayerSendTextMessage(cid,25,"Voce ganhou uma Unknown Legs!")
			doPlayerAddItem(cid,13920,1)
			setPlayerStorageValue(cid,60003,1)
		else
			doPlayerSendTextMessage(cid,25,"Voce já recebeu seu item.")
		end
		return true
	end
end