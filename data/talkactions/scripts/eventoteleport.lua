function onSay(cid, words, param)
if words=="/eventoopen" then
local create_pos = {x=102 , y=191 , z=7, stackpos=255}
local tp_pos = {x=1028 , y=155 , z=7}
doCreateTeleport(952, tp_pos , create_pos)
doSendMagicEffect(create_pos , 10)
doPlayerSendTextMessage(cid, 28 , "Portal do Torneio está aberto no templo!")
return TRUE
end
if words=="/eventoclose" then
doRemoveItem(getTileItemById(create_pos,1387))
doPlayerSendTextMessage(cid, 28 , "Portal do torneio fechou fechou!")
end
return TRUE
end