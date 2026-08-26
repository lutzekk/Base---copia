function onStepIn(cid, item, position, fromPosition)

local config = {
msgDenied = "Desculpe, Você não tem permissão para entrar aqui e para ter compre a Permissão para entra no Psychic Island!",
msgWelcome = "Você entrou no Psychic Island!"
}

if getPlayerStorageValue(cid, 13500) - os.time() <= 0 then
doTeleportThing(cid, fromPosition, true)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.msgDenied)
doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_RED)
return TRUE
end
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, config.msgWelcome)
return TRUE
end