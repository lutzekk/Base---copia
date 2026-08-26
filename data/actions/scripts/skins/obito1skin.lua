function onUse(cid, item, frompos, item2, topos)
    if ( getPlayerStorageValue(cid, 5831) ~= -1 ) then
	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voce já possui a skin Obito Skin")
	return true
	else
	doPlayerSetStorageValue(cid, 5831,1)
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voce habilitou a skin Obito Shinigami. Para usá-la use !skin Obito Shinigami")
	doRemoveItem(item.uid, 1)
	return true
    end 
end