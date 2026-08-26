
  function onKill(cid, target, lastHit)
       local m = {
          ["Android LvL 3"] = { -- Monster que es necesario matar para que aparezca el teleport
             time = 10, -- Segundos en el que podrás utilizar el teleport
             to = {x = 547, y = 957, z = 7}, -- Dónde te lleva el teleport
             tp = {x = 527, y = 959, z = 7} -- Dónde aparece el teleport.
          }

       
       }
       local monster = m[getCreatureName(target)]
          local function deleteTeleport()
        doTeleportThing(cid, m.tp)


        
             return true
          end
          
      
       if(monster) then

          addEvent(deleteTeleport, monster.time * 1000)
          doCreatureSay(cid, "You have " .. monster.time .. " seconds to go!", TALKTYPE_ORANGE_1)
       end
       return true
    end
	
	  