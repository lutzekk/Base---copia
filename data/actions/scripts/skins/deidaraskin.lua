function onUse(cid, item, frompos, item2, topos)
    if ( getPlayerStorageValue(cid, 5835) ~= -1 ) then
	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voce já possui a skin Deidara Gangster")
	return true
	else
	doPlayerSetStorageValue(cid, 5835,1)
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voce habilitou a skin Deidara Gangster. Para usá-la use !skin Deidara Gangster")
	doRemoveItem(item.uid, 1)
	return true
    end 
end