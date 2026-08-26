local vocation = {250, 251, 252, 253, 254 , 255 , 256 , 257 , 258, 259}
 
function onStepIn(cid, item, position, fromPosition)
     if not isInArray(vocation, getPlayerVocation(cid)) then
        doTeleportThing(cid, fromPosition, true)
        doPlayerSendTextMessage(cid, 18, 'Apenas Ichigo Passa Aki.')
        doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE)
     end
   return true
end