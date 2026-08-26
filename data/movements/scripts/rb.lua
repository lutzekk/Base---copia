local pos = {x = 816, y = 71, z = 0}

function onStepIn(cid, item, position, fromPosition)
if getPlayerAccess(cid) then
doTeleportThing(cid, pos) 
doSendMagicEffect(getThingPos(cid), 10)
end
return true
end