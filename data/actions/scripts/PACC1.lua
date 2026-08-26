function onUse(cid, item, frompos, item2, topos)
if item.itemid == 14109 then
local playerpos = getCreaturePosition(cid)
doRemoveItem(item.uid,14109)
doPlayerAddPremiumDays(cid, 1)
doSendMagicEffect(playerpos, 13)
doPlayerSendTextMessage(cid,22,"Voce recebeu 1 dias de premium account.")
end
end