function onUse(cid, item, frompos, item2, topos)
    if ( getPlayerStorageValue(cid, 5832) ~= -1 ) then
	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voce já possui a skin Minato Elegante")
	return true
	else
	doPlayerSetStorageValue(cid, 5832,1)
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voce habilitou a skin Minato Elegante. Para usá-la use !skin Minato Elegante")
	doRemoveItem(item.uid, 1)
	return true
    end 
end