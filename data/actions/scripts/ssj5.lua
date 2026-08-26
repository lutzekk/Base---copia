

function onUse(cid, item, frompos, item2, topos)
   	if item.uid == 5022 then
   		queststatus = getPlayerStorageValue(cid,5012)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Goku SSJ5 Legs.")
   			doPlayerAddItem(cid,2469,1)
   			setPlayerStorageValue(cid,5012,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5023 then
   		queststatus = getPlayerStorageValue(cid,5012)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Silver Glove.")
   			doPlayerAddItem(cid,2441,1)
   			setPlayerStorageValue(cid,5012,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	end
   	return true
end
