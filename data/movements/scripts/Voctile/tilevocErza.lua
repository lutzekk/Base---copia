local vocation = {295, 296, 297, 298, 299, 300, 301 , 302 , 303}
 
function onStepIn(cid, item, position, fromPosition)
     if not isInArray(vocation, getPlayerVocation(cid)) then
        doTeleportThing(cid, fromPosition, true)
        doPlayerSendTextMessage(cid, 18, 'Sua vocacao nao pode passar aqui.')
        doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE)
     end
   return true
end