function onLogin(cid)
 if getPlayerStorageValue(cid, 50000) == -1 then
 doPlayerSendTextMessage(cid, 22, "Bem-Vindo(a) "..getPlayerName(cid).." Server Totalmente Dedicado,SEM LAG,Varios Eventos,Aproveite.Bom JOGO")
 setPlayerStorageValue(cid, 50000, 1)
  end
return TRUE
end