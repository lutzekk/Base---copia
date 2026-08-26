function onUse(cid, item, frompos, item2, topos)

if getPlayerStorageValue(cid, 20184) < 1 then
doPlayerSendTextMessage(cid,22,"Voce acabou Ganhar o Set Deus Da Destruicao")
local bag = doPlayerAddItem(cid, 8886, 1)
local bag = doPlayerAddItem(cid, 2476, 1)
local bag = doPlayerAddItem(cid, 2477, 1)
local bag = doPlayerAddItem(cid, 2475, 1)
setPlayerStorageValue(cid, 20184, 1)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voce ja pegou o item!.")
end

return TRUE
end