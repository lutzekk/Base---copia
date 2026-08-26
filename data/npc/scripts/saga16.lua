local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onThink()                     npcHandler:onThink()                     end
function onCreatureAppear(cid)         npcHandler:onCreatureAppear(cid)	        end
function onCreatureDisappear(cid)      npcHandler:onCreatureDisappear(cid)	    end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg)	end

function greetCallback(cid)

  doSendDialogNpc(cid, getNpcId(), "Ok, i Can develop your abillities... Do you want this?", "Exit&Yes")
    elfSay("Ok, i Can develop your abillities... Do you want this?, {Yes}" ,cid)

  return true             
end
function creatureSayCallback(cid, type, msg)
  if not npcHandler:isFocused(cid) then
    return false
  end
		local count = 45
  if msgcontains(msg:lower(), "yes") then
    local message = ""
if getPlayerStorageValue(cid,8000) == count-1 then
			setPlayerStorageValue(cid, 8000, count)
			doPlayerAddExp(cid, 10000000)
			message = "Ok"
	else
	  message = "Sorry, you can\'t do this saga."
	  elfSay("Sorry, you can\'t do this saga." ,cid)
	  
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