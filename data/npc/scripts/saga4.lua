local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onThink()                     npcHandler:onThink()                     end
function onCreatureAppear(cid)         npcHandler:onCreatureAppear(cid)	        end
function onCreatureDisappear(cid)      npcHandler:onCreatureDisappear(cid)	    end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg)	end

function greetCallback(cid)
  doSendDialogNpc(cid, getNpcId(), "We are under attack, we dont have power to fight with this monsters, please you look like powerful fighter, Can you help us?", "Exit&Yes")
  selfSay("We are under attack, we dont have power to fight with this monsters, please you look like powerful fighter, Can you help us?. {'Yes'}", cid)
  return true             
end

function creatureSayCallback(cid, type, msg)
  if not npcHandler:isFocused(cid) then
    return false
  end
		local count = 15
  if msgcontains(msg:lower(), "yes") then
    local message = ""
		if getPlayerStorageValue(cid,8000) == count-1 then
			setPlayerStorageValue(cid, 8000, count)
	  message = "Thank you!"
	  selfSay('Thank you!')
	  
	else
	  message = "Sorry, you can\'t do this saga."
	  selfSay('Sorry, you can \'t do this saga.')
    end	
	doSendDialogNpc(cid, getNpcId(), message, "Exit")
  elseif msgcontains(msg:lower(), "exit") then
	doSendDialogNpcClose(cid)
	npcHandler:unGreet(cid)	
  end

  return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:addModule(FocusModule:new())