function onCombat(cid, target)
    if isPlayer(target) and isPlayer(cid) then
     if getPlayerStorageValue(cid, 91821) <= 0 then
      doPlayerSendCancel(cid, "You have PvP mode disabled. If you want to attack other players, activate it by talking !pvp on.")
      return false
     end
	end
   return true
end

 
function onLogin(cid)
 registerCreatureEvent(cid, "PvPCombat")
 setPlayerStorageValue(cid, 91821, 1)
 return true
end