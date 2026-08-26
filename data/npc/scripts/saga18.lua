local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onThink()                     npcHandler:onThink()                     end
function onCreatureAppear(cid)         npcHandler:onCreatureAppear(cid)	        end
function onCreatureDisappear(cid)      npcHandler:onCreatureDisappear(cid)	    end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg)	end

function greetCallback(cid)
  doSendDialogNpc(cid, getNpcId(), "Now this is the last fight with buu, we must defeath him, are you with me?", "Exit&Yes")
  elfSay("Now this is the last fight with buu, we must defeath him, are you with me??, {Yes}" ,cid)
  return true             
end

local function travel(cid, x, y, z)
	destpos = {x = x, y = y, z = z}
	doTeleportThing(cid, destpos)
end
function creatureSayCallback(cid, type, msg)
  if not npcHandler:isFocused(cid) then
    return false
  end
		local count = 48
  if msgcontains(msg:lower(), "yes") then
    local message = ""
		if getPlayerStorageValue(cid,8000) == count-1 then
			setPlayerStorageValue(cid, 8000, count)
  message = "Ok."
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