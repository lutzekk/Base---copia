function onUse(cid, item, frompos, item2, topos)
local voc = 770 -- id da vocation que ele vai ser promovido
local outfit = 1889
if item.itemid == 13614 then -- id do item que vai tenque clickar
doPlayerSetVocation(cid,voc)
doCreatureChangeOutfit(cid, {lookType = outfit})
doRemoveItem(item.uid,1)
doPlayerSendTextMessage(cid, 22, "Parabens Voce Virou OkumuraRin")
end
return true
end