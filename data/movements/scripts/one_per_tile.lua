function getBottomPlayer(pos)
    for i = 1, getTileInfo(pos).things do
        pos.stackpos = getTileInfo(pos).things-i
        local cid = getThingFromPos(pos).uid
        if isPlayer(cid) then
            return cid
        end
    end
    return 0
end
 
function onStepIn(cid, item, position, lastPosition, fromPosition, toPosition, actor)
 
    if not isPlayer(cid) then
        return doTeleportThing(cid, fromPosition, false)
    end
 
    if isPlayer(getBottomPlayer(position)) and cid ~= getBottomPlayer(position) then
        doPlayerSendCancel(cid, 'This tile only allows 1 player in it.')
        return doTeleportThing(cid, fromPosition, false)
    end  
    return true
end