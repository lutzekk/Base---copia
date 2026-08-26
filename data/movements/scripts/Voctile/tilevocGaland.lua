local vocation = {390, 391, 392, 393, 394 , 395}
 
function onStepIn(cid, item, position, fromPosition)
     if not isInArray(vocation, getPlayerVocation(cid)) then
        doTeleportThing(cid, fromPosition, true)
        doPlayerSendTextMessage(cid, 18, 'Sua vocacao nao pode passar aqui.')
        doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE)
     end
   return true
end