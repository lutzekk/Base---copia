function onUse(cid, item, frompos, item2, topos)
if item.itemid == 14658 then
local IsPlayers = getPoints(cid)
doRemoveItem(item.uid,14658)
doPlayerAddPoints(cid, 800)
doPlayerSendTextMessage(cid,22,"Voce recebeu 800 PC Bang.")
end
end