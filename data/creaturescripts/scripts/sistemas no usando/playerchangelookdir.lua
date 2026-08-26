function verifyLookDirPos(cid)
        local positions = {
            north1 = {x = getCreaturePosition(cid).x-1, y = getCreaturePosition(cid).y-1,z = getCreaturePosition(cid).z},
            north2 = {x = getCreaturePosition(cid).x, y = getCreaturePosition(cid).y - 1, z = getCreaturePosition(cid).z},
            north3 = {x = getCreaturePosition(cid).x + 1, y = getCreaturePosition(cid).y - 1, z = getCreaturePosition(cid).z},
            south1 = {x = getCreaturePosition(cid).x - 1, y = getCreaturePosition(cid).y + 1},
            south2 = {x = getCreaturePosition(cid).x, y = getCreaturePosition(cid).y + 1},
            south3 = {x = getCreaturePosition(cid).x + 1, y = getCreaturePosition(cid).y + 1},
            east = {x = getCreaturePosition(cid).x + 1, y = getCreaturePosition(cid).y},
            west = {x = getCreaturePosition(cid).x - 1, y = getCreaturePosition(cid).y},
        }
        local targetpos = getCreaturePosition(getCreatureTarget(cid))
        local targetposition = {x = targetpos.x, y = targetpos.y, z = targetpos.z}
        
        if (targetposition.x == positions.north1.x and targetposition.y == positions.north1.y or targetposition.x == positions.north2.x and targetposition.y == positions.north2.y or targetposition.x == positions.north3.x and targetposition.y == positions.north3.y) then
            return "isinnorth"
        end        
        
        if (targetposition.x == positions.south1.x and targetposition.y == positions.south1.y or targetposition.x == positions.south2.x and targetposition.y == positions.south2.y or targetposition.x == positions.south3.x and targetposition.y == positions.south3.y) then
            return "isinsouth"
        end        
        
        if (targetposition.x == positions.east.x and targetposition.y == positions.east.y) then
            return "isineast"
        end
        
        if (targetposition.x == positions.west.x and targetposition.y == positions.west.y) then
            return "isinwest"
        end

end


function onThink(cid)

    if (isPlayer(cid) and getCreatureTarget(cid) > 1) then
    local north = {x = getCreaturePosition(cid).x-1, y = getCreaturePosition(cid).y-1,z = getCreaturePosition(cid).z}
        if(verifyLookDirPos(cid) == "isinnorth") then
            doCreatureSetLookDir(cid, 0)
        end        
        
        if(verifyLookDirPos(cid) == "isinsouth") then
            doCreatureSetLookDir(cid, 2)
        end        
        
        if(verifyLookDirPos(cid) == "isineast") then
            doCreatureSetLookDir(cid, 1)
        end        
        
        if(verifyLookDirPos(cid) == "isinwest") then
            doCreatureSetLookDir(cid, 3)
        end
    end
    
    return true
end