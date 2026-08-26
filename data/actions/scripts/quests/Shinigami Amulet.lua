function onUse(cid, item, frompos, item2, topos)
	if item.uid == 60040 then
		if getPlayerStorageValue(cid,60040) == -1 then
			doPlayerSendTextMessage(cid,25,"Voce ganhou um Shinigami Amulet!")
			doPlayerAddItem(cid,14340,1)
			setPlayerStorageValue(cid,60040,1)
		else
			doPlayerSendTextMessage(cid,25,"Voce já recebeu seu item.")
		end
		return true
	end
end