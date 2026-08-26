local depottiles = {} --piso pra n jogar
local depots = {2589,2590,2591,2592} --id dos dps
local group = 3 --id dos group 6 é todos.
   
local function checkIfThrow(pos,topos)
                    if topos.x == 0xffff then
                        return false
                    end
                local thing = getThingFromPos(pos)
                if isInArray(depottiles,thing.itemid) then
                            if not isInArea(topos,{x=pos.x-1,y=pos.y-1,z=pos.z},{x=pos.x+1,y=pos.y+1, z=pos.z}) then                   
                            return true
                        end   
                else   
                for i = 1, #depots do
                    if depots[i] == getTileItemById(topos,depots[i]).itemid or getTileInfo(topos).actionid == 7483 then
                        return true
                    end
                end
            end                               
    return false
end


function onMoveItem2(cid, item, count, toContainer, fromContainer, fromPos, toPos)
    if isPlayer(cid) then
        local pos = getThingPos(cid)
            if getPlayerGroupId(cid) > group then
                return true
        end
           
        if checkIfThrow({x=pos.x,y=pos.y,z=pos.z,stackpos=0},toPos) then
            doPlayerSendCancel(cid,"Não jogue item ai!!")
            doSendMagicEffect(getThingPos(cid),CONST_ME_POFF)
            return false
        end
    end
    return true
end