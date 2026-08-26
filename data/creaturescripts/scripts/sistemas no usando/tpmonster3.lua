
  function onKill(cid, target, lastHit)
       local m = {
          ["Goku Quest"] = { -- Monster que es necesario matar para que aparezca el teleport
             time = 15, -- Segundos en el que podrás utilizar el teleport
             to = {x = 1532, y = 110, z = 5}, -- Dónde te lleva el teleport
             tp = {x = 1574, y = 123, z = 5} -- Dónde aparece el teleport.
          }

       
       }
       local monster = m[getCreatureName(target)]
          local function deleteTeleport()
             local teleport = getTileItemById(monster.tp, 1387)
             if(teleport.uid > 0) then
                doRemoveItem(teleport.uid)
                doSendMagicEffect(monster.tp, CONST_ME_POFF)
                doSendAnimatedText(monster.tp, "Closed", TEXTCOLOR_RED)
             end
             return true
          end
          
      
       if(monster) then
          local teleportt = doCreateTeleport(1387, monster.to, monster.tp)
          doItemSetAttribute(teleportt, "aid", 5006)
          addEvent(deleteTeleport, monster.time * 1000)
          doCreatureSay(cid, "You have " .. monster.time .. " seconds to go!", TALKTYPE_ORANGE_1)
       end
       return true
    end