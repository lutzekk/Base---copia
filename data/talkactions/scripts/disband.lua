-- Script criada pelo Night | Yan Liima.
-- Não mude e nem remova os créditos não seja mal... Lembrando que você não ganhará nada com isso.
------------------------------------------------------------------------------------------------------------
function onSay(cid, words, param)
if doPlayerRemoveItem(cid,0,0) == TRUE then
local time = 0
doPlayerSendTextMessage(cid, 19,"Comando Removido devido a clonagem!")
doMutePlayer(cid, time*30)
return true
end
end
--**********************************************************************************************--
--|                                      Créditos                                                |
--|                                By Night | Yan Liima                                          |
--|                                      Contato:                                                |
--|                           E-mail: yan_zorde@hotmail.com                                      |
--|                          Skype:      yan.brendo                                              |
--|             página no facebook: https://www.facebook.com/dbuoriginal                         |
--|             Grupo do facebook: https://www.facebook.com/groups/dbuoriginal/                  |
--|             Não retire os créditos caso a contrario você não ganhara nada                    |
--***********************************************************************************************--