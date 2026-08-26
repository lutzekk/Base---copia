function onUse(cid, item, frompos, item2, topos)
local voc = 520 -- id da vocation que ele vai ser promovido
local outfit = 1521
if item.itemid == 14715 then -- id do item que vai tenque clickar
doPlayerSetVocation(cid,voc)
doCreatureChangeOutfit(cid, {lookType = outfit})
doRemoveItem(item.uid,1)
doPlayerSendTextMessage(cid, 22, "Parabens Voce Virou Bills")
end
return true
end