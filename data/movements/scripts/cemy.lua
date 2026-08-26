function onStepIn(cid, item, position, fromPosition)

local config = {
msgDenied = "Desculpe, Você não tem permissão para entrar aqui Faça a quest de acesso a Cemetery Island!",
msgWelcome = "Você está em Cemetery Island!"
}

if getPlayerStorageValue(cid, 13501) - os.time() <= 0 then
doTeleportThing(cid, fromPosition, true)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.msgDenied)
doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE)
return TRUE
end
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.msgWelcome)
return TRUE
end