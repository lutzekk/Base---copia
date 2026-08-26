function onKill(cid, target, lastHit)
    if isPlayer(cid) and isPlayer(target) then
        doPlayerAddExperience(cid, getPlayerExperience(target) / 3)
    end
    return true
end
