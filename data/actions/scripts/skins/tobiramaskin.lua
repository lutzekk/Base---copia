function onUse(cid, item, frompos, item2, topos)
    if ( getPlayerStorageValue(cid, 5834) ~= -1 ) then
	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voce já possui a skin Tobirama Zoom")
	return true
	else
	doPlayerSetStorageValue(cid, 5834,1)
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voce habilitou a skin Tobirama Zoom. Para usá-la use !skin Tobirama Zoom")
	doRemoveItem(item.uid, 1)
	return true
    end 
end