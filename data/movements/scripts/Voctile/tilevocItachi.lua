local vocation = {370, 371, 372, 373, 374 , 375 , 376 , 377 , 378 , 378 , 379}
 
function onStepIn(cid, item, position, fromPosition)
     if not isInArray(vocation, getPlayerVocation(cid)) then
        doTeleportThing(cid, fromPosition, true)
        doPlayerSendTextMessage(cid, 18, 'Apenas Itachi Passa Aki.')
        doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE)
     end
   return true
end