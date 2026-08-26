function onStepIn(cid, item, position, fromPosition)

local config = {
msgDenied = "Desculpe, Você não tem permissão para entrar aqui e Preciso Fazer a Missão 6 {NPC Task} Para Voce Obiter o Dark Acesso!",
msgWelcome = "Você entrou no Dark Island!"
}

if getPlayerStorageValue(cid, 13502) - os.time() <= 0 then
doTeleportThing(cid, fromPosition, true)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.msgDenied)
doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_RED)
return TRUE
end
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, config.msgWelcome)
return TRUE
end