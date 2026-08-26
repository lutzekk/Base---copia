function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(getPlayerFlagValue(cid, PLAYERFLAG_CANNOTPICKUPITEM)) then
		return false
	end

	if(item.type == ITEMCOUNT_MAX) then
		doChangeTypeItem(item.uid, item.type - item.type)
		doPlayerAddItem(cid, 2673, 1)
		doSendAnimatedText(fromPosition, "SENZU!", 121)
	end

	return true
end
