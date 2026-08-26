function onUse(cid, item, frompos, item2, topos)
if item.itemid == 14656 then
local IsPlayers = getPoints(cid)
doRemoveItem(item.uid,14656)
doPlayerAddPoints(cid, 200)
doPlayerSendTextMessage(cid,22,"Voce recebeu 200 PC Bang.")
end
end