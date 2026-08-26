function onStepIn(cid, item, position, fromPosition)
local storage = 89745 -- Storage
if getPlayerStorageValue(cid, storage) == 2 then
else
doTeleportThing(cid, fromPosition)
doSendMagicEffect(getCreaturePos(cid), 1)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,"Voce precisa ser Platina para fazer a Missao Diamante.")
end
return true
end