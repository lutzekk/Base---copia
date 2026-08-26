function onThink(interval, lastExecution)
  -- Configurações
    local cor = 20 -- Defina a cor da mensagem (22 = branco)
    local mensagens ={
[[NDBO HUNTER : Siga-nos no FACEBOOK - https://www.facebook.com/NDBOLIGHTT/ 	 SITE : NdboHunter.tk ...
]]
}

  -- Fim de Configurações

  doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end