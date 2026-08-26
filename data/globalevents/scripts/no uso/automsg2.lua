local messages = {
"Ajudem-nos a manter o servidor online, a sua contribuicao e de grande importancia, adquira beneficios atraves de sua doacao! Visite o nosso site: NdboHunter.tk e fique por dentro das atualizacoes e de como efetuar o pagamento. Obrigado pela atencao, bom jogo a todos!"
}

local i = 0
function onThink(interval, lastExecution)
local message = messages[(i % #messages) + 1]
for _, pid in ipairs(getPlayersOnline()) do
doPlayerSendTextMessage(pid, 20, "".. message .."")
i = i + 1
end
return TRUE
end