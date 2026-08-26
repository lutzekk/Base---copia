function onUse(cid, item, frompos, item2, topos)
local voc = 420 -- id da vocation que ele vai ser promovido
local outfit = 1766
if item.itemid == 13967 then -- id do item que vai tenque clickar
doPlayerSetVocation(cid,voc)
doCreatureChangeOutfit(cid, {lookType = outfit})
doRemoveItem(item.uid,1)
doPlayerSendTextMessage(cid, 22, "Parabens Voce Virou Goku Anjo")
end
return true
end