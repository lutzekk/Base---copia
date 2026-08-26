function onUse(cid, item, frompos, item2, topos)
    if ( getPlayerStorageValue(cid, 5830) ~= -1 ) then
	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voce já possui a skin Itachi Susano")
	return true
	else
	doPlayerSetStorageValue(cid, 5830,1)
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voce habilitou a skin Itachi Susano. Para usá-la use !skin Itachi Susano")
	doRemoveItem(item.uid, 1)
	return true
    end 
end