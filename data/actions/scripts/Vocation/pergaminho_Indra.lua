function onUse(cid, item, frompos, item2, topos)
local voc = 690 -- id da vocation que ele vai ser promovido
local outfit = 1770
if item.itemid == 14719 then -- id do item que vai tenque clickar
doPlayerSetVocation(cid,voc)
doCreatureChangeOutfit(cid, {lookType = outfit})
doRemoveItem(item.uid,1)
doPlayerSendTextMessage(cid, 22, "Parabens Voce Virou Indra")
end
return true
end