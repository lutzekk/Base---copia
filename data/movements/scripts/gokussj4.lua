local pos = {x = 112, y = 915, z = 7}

function onStepIn(cid, item, position, fromPosition)
if getPlayerAccess(cid) then
doTeleportThing(cid, pos) 
doSendMagicEffect(getThingPos(cid), 10)
end
return true
end