function onUse(cid, item, frompos, item2, topos)
if item.itemid == 14116 then
local playerpos = getCreaturePosition(cid)
doRemoveItem(item.uid,14116)
doPlayerAddPremiumDays(cid, 30)
doSendMagicEffect(playerpos, 13)
doPlayerSendTextMessage(cid,22,"Voce recebeu 30 dias de premium account.")
end
end