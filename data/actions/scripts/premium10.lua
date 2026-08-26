function onUse(cid, item, fromPosition, itemEx, toPosition)
if getPlayerPremiumDays(cid) >= 60 then
doPlayerSendCancel(cid, 'You can only have 60 days of vip in this account.')
return false
end
doPlayerAddPremiumDays(cid, 10)
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You Have Added 10 Days Premium To Your Account!")
doSendMagicEffect(getThingPosition(cid), 14)
doRemoveItem(item.uid)
return true
end
