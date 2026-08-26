function onUse(cid, item, frompos, item2, topos)
local voc = 560 -- id da vocation que ele vai ser promovido
local outfit = 1570
if item.itemid == 14716 then -- id do item que vai tenque clickar
doPlayerSetVocation(cid,voc)
doCreatureChangeOutfit(cid, {lookType = outfit})
doRemoveItem(item.uid,1)
doPlayerSendTextMessage(cid, 22, "Parabens Voce Virou Android 21")
end
return true
end