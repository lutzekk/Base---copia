function onUse(cid, item, frompos, item2, topos)
	if item.uid == 60002 then
		if getPlayerStorageValue(cid,60002) == -1 then
			doPlayerSendTextMessage(cid,25,"Voce ganhou uma Unknown Armor!")
			doPlayerAddItem(cid,13919,1)
			setPlayerStorageValue(cid,60002,1)
		else
			doPlayerSendTextMessage(cid,25,"Voce já recebeu seu item.")
		end
		return true
	end
end