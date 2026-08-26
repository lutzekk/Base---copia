function onUse(cid, item, frompos, item2, topos)
if item.itemid == 14655 then
local IsPlayers = getPoints(cid)
doRemoveItem(item.uid,14655)
doPlayerAddPoints(cid, 50)
doPlayerSendTextMessage(cid,22,"Voce recebeu 50 PC Bang.")
end
end