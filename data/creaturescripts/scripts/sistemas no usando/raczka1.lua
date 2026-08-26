function onCombat(cid, target) 
    if(target and isPlayer(target) and getPlayerSecureMode(cid)) then 
        doPlayerSendCancel(cid, "Turn secure mode off if you really want to attack unmarked players.") 
        return false 
    end 
    return true 
end