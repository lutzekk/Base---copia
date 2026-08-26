function onUse(cid, item, frompos, item2, topos)
    if ( getPlayerStorageValue(cid, 5833) ~= -1 ) then
	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voce já possui a skin Minato Flash")
	return true
	else
	doPlayerSetStorageValue(cid, 5833,1)
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voce habilitou a skin Minato Flash. Para usá-la use !skin Minato Flash")
	doRemoveItem(item.uid, 1)
	return true
    end 
end