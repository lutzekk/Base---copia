function onUse(cid, item, frompos, item2, topos)
if item.itemid == 14659 then
local IsPlayers = getPoints(cid)
doRemoveItem(item.uid,14659)
doPlayerAddPoints(cid, 2000)
doPlayerSendTextMessage(cid,22,"Voce recebeu 2000 PC Bang.")
end
end