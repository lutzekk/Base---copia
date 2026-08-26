function onUse(cid, item, frompos, item2, topos)
if item.itemid == 14115 then
local playerpos = getCreaturePosition(cid)
doRemoveItem(item.uid,14115)
doPlayerAddPremiumDays(cid, 10)
doSendMagicEffect(playerpos, 13)
doPlayerSendTextMessage(cid,22,"Voce recebeu 10 dias de premium account.")
end
end