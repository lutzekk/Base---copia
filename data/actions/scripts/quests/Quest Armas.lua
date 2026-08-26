function onUse(cid, item, fromPosition, itemEx, toPosition)

   	if item.uid == 60019 then
   		queststatus = getPlayerStorageValue(cid,50090)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "Voce ganhou uma Slayer Glove!")
   			doPlayerAddItem(cid,13386,1)
   			setPlayerStorageValue(cid,50090,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "Voce já escolheu seu item.")
   		end
   	elseif item.uid == 60020 then
   		queststatus = getPlayerStorageValue(cid,50090)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "Voce ganhou uma Hextec Sword!")
   			doPlayerAddItem(cid,2400,1)
   			setPlayerStorageValue(cid,50090,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "Voce já escolheu seu item.")
   		end
			elseif item.uid == 60027 then
   		queststatus = getPlayerStorageValue(cid,50090)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "Voce ganhou uma kabutowari!")
   			doPlayerAddItem(cid,14735,1)
   			setPlayerStorageValue(cid,50090,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "Voce já escolheu seu item.")
   		end
   	elseif item.uid == 60021 then
   		queststatus = getPlayerStorageValue(cid,50090)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "Voce ganhou um Murcielago!")
   			doPlayerAddItem(cid,14106,1)
   			setPlayerStorageValue(cid,50090,1)
   		else
   			doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR, "Voce já escolheu seu item.")
		end
	end
   	return 1
end