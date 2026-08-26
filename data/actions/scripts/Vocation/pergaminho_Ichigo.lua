function onUse(cid, item, frompos, item2, topos)
local voc = 250 -- id da vocation que ele vai ser promovido
local outfit = 1742
if item.itemid == 14712 then -- id do item que vai tenque clickar
doPlayerSetVocation(cid,voc)
doCreatureChangeOutfit(cid, {lookType = outfit})
doRemoveItem(item.uid,1)
doPlayerSendTextMessage(cid, 22, "Parabens Voce Virou Ichigo")
end
return true
end