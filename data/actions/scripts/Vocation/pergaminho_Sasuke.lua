function onUse(cid, item, frompos, item2, topos)
local voc = 700 -- id da vocation que ele vai ser promovido
local outfit = 1791
if item.itemid == 14723 then -- id do item que vai tenque clickar
doPlayerSetVocation(cid,voc)
doCreatureChangeOutfit(cid, {lookType = outfit})
doRemoveItem(item.uid,1)
doPlayerSendTextMessage(cid, 22, "Parabens Voce Virou Sasuke")
end
return true
end