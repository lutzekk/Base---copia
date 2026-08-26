function onStepIn(cid, item, position, fromPosition)
local storage = 89745 -- Storage
if getPlayerStorageValue(cid, storage) >= 1 then
else
doTeleportThing(cid, fromPosition)
doSendMagicEffect(getCreaturePos(cid), 1)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,"Voce precisa ser Ouro para fazer a Missao Platina.")
end
return true
end