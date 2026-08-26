-- annihilator chests

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 5555 then
   		queststatus = getPlayerStorageValue(cid,5555)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a South Kai Armor.")
   			doPlayerAddItem(cid,2126,1)
   			setPlayerStorageValue(cid,5555,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5556 then
   		queststatus = getPlayerStorageValue(cid,5555)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a Grand Kai Armor.")
   			doPlayerAddItem(cid,2128,1)
   			setPlayerStorageValue(cid,5555,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5557 then
   		queststatus = getPlayerStorageValue(cid,5555)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a East Kai Armor.")
   			doPlayerAddItem(cid,2142,1)
   			setPlayerStorageValue(cid,5555,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	





else
		return 0
   	end
   	return 1
end
