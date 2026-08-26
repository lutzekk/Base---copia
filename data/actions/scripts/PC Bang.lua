function onUse(cid, item, frompos, item2, topos)
if item.itemid == 14551 then
local IsPlayers = getPoints(cid)
doRemoveItem(item.uid,14551)
doPlayerAddPoints(cid, 1)
doPlayerSendTextMessage(cid,22,"Voce recebeu 1 PC Bang.")
end
end