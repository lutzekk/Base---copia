-- [( Script created by Matheus for TibiaKing.com )] --
function onThink(interval, lastExecution)
MENSAGEM = {
"Seja Bem Vindo ao NDBO HUNTER",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],22)
return true
end