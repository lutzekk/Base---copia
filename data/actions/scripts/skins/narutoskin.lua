function onUse(cid, item, frompos, item2, topos)
    if ( getPlayerStorageValue(cid, 5836) ~= -1 ) then
	doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voce já possui a skin Naruto Goku")
	return true
	else
	doPlayerSetStorageValue(cid, 5836,1)
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Voce habilitou a skin Naruto Goku. Para usá-la use !skin Naruto Goku")
	doRemoveItem(item.uid, 1)
	return true
    end 
end