

function onSay(cid, words, param)
local time = 3600.0 -- Tempo de exhaustion
local storage = 45674 -- não mecha
pos = {x=81, y=165, z=7}
 if exhaustion.check(cid, storage) then
            doPlayerSendCancel(cid, "You must wait an hour to use it again.")
            doSendMagicEffect(getCreaturePosition(cid), 2)
            return false
         end
 if (not isPlayerPzLocked(cid)) then
 		else
			doPlayerSendTextMessage(cid,MESSAGE_STATUS_SMALL,"You cannot use this command while you are infight.") 
			return false
		end
		

doPlayerSendCancel(cid,"Congratulations you have been successfully teleported")
doTeleportThing(cid,pos)

 exhaustion.set(cid, storage, time)
return true
end