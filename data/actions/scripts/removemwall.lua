function onUse(cid, item, frompos, item2, topos)
local playermagiclevel = getPlayerMagLevel(cid)
if playermagiclevel < 5 then
doPlayerSendTextMessage(cid,24,'You need to be magic level 5 or higher to use desintegrate runes!')
elseif isCreature(item2.uid) == FALSE and isMoveable(item2.uid) == TRUE then
doRemoveItem(item2.uid)
doRemoveItem(item.uid)
doSendMagicEffect(topos, CONST_ME_GIFT_WRAPS)
doSendDistanceShoot(getCreaturePosition(cid), topos, CONST_ANI_ENERGY)
return 1
elseif item2.uid == cid then
doPlayerSendTextMessage(cid,24,'You can not use desintegrate runes on yourself!')
elseif item2.itemid == 1498 then
doRemoveItem(item2.uid)
if getPlayerStorageValue(cid, 1234) < os.time () then
setPlayerStorageValue(cid, 1234, os.time () + 10)
doSendMagicEffect(topos, CONST_ME_GIFT_WRAPS)
doSendDistanceShoot(getCreaturePosition(cid), topos, CONST_ANI_ENERGY)
else
doPlayerSendDefaultCancel(cid, RETURNVALUE_NOTPOSSIBLE)
return 0
end
end
end