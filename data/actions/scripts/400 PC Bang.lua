function onUse(cid, item, frompos, item2, topos)
if item.itemid == 14657 then
local IsPlayers = getPoints(cid)
doRemoveItem(item.uid,14657)
doPlayerAddPoints(cid, 400)
doPlayerSendTextMessage(cid,22,"Voce recebeu 400 PC Bang.")
end
end