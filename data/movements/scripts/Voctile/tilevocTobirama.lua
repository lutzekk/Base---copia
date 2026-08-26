local vocation = {440, 441, 442, 443, 444 , 445 , 446 , 447 , 448 , 449 , 450 , 451 , 452}
 
function onStepIn(cid, item, position, fromPosition)
     if not isInArray(vocation, getPlayerVocation(cid)) then
        doTeleportThing(cid, fromPosition, true)
        doPlayerSendTextMessage(cid, 18, 'Apenas Tobirama Passa Aki.')
        doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE)
     end
   return true
end