function onUse(cid, item, frompos, item2, topos)
if item.itemid == 14660 then
local IsPlayers = getPoints(cid)
doRemoveItem(item.uid,14660)
doPlayerAddPoints(cid, 4000)
doPlayerSendTextMessage(cid,22,"Voce recebeu 4000 PC Bang.")
end
end