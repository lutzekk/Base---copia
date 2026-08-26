local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onThink()                     npcHandler:onThink()                     end
function onCreatureAppear(cid)         npcHandler:onCreatureAppear(cid)	        end
function onCreatureDisappear(cid)      npcHandler:onCreatureDisappear(cid)	    end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg)	end

function greetCallback(cid)
  doSendDialogNpc(cid, getNpcId(), "Well, well, well..  do you want to start your reborn quest?", "Exit&Yes")

  selfSay ("Well, well, well..  do you want to start your quest?, {Yes}", cid)
  return true             
end

function creatureSayCallback(cid, type, msg)
  if not npcHandler:isFocused(cid) then
    return false
  end
if msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 5 then
doReborn(cid,1,730,7)
	doSendDialogNpcClose(cid)
    local message = ""


--_vegeta_--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 19 then
doReborn(cid,1,731,20)
	doSendDialogNpcClose(cid)
--_gohan_--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 30 then
doReborn(cid,1,148,31)
	doSendDialogNpcClose(cid)
--_trunks_--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 41 then
doReborn(cid,1,150,42)
	doSendDialogNpcClose(cid)
--_goten_--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 52 then
doReborn(cid,1,144,53)
	doSendDialogNpcClose(cid)
--_chibi trunks_--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 64 then
doReborn(cid,1,162,65)
	doSendDialogNpcClose(cid)
--_piccolo_--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 75 then
doReborn(cid,1,173,76)
	doSendDialogNpcClose(cid)
--_dende_--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 86 then
doReborn(cid,1,273,87)
	doSendDialogNpcClose(cid)
--_Shin_--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 97 then
doReborn(cid,1,241,98)
	doSendDialogNpcClose(cid)
--_tenshinhan_--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 108 then
doReborn(cid,1,525,109)
	doSendDialogNpcClose(cid)
--_uub_--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 119 then
doReborn(cid,1,281,120)
	doSendDialogNpcClose(cid)
--_freeza_--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 130 then
doReborn(cid,1,532,131)
	doSendDialogNpcClose(cid)
--_brolly_--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 141 then
doReborn(cid,1,533,142)
	doSendDialogNpcClose(cid)
--c17--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 152 then
doReborn(cid,1,15,153)
	doSendDialogNpcClose(cid)
--C18--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 163 then
doReborn(cid,1,15,164)
	doSendDialogNpcClose(cid)
--cell--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 174 then
doReborn(cid,1,118,175)
	doSendDialogNpcClose(cid)
--buu--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 185 then
doReborn(cid,1,34,186)
	doSendDialogNpcClose(cid)
--bebi--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 196 then
doReborn(cid,1,178,197)
	doSendDialogNpcClose(cid)
--cooler--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 207 then
doReborn(cid,1,190,208)
	doSendDialogNpcClose(cid)
--bardock--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 218 then
doReborn(cid,1,60,219)
	doSendDialogNpcClose(cid)
--vegetto--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 227 then
doReborn(cid,1,422,228)
	doSendDialogNpcClose(cid)
--janemba--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 237 then
doReborn(cid,1,326,238)
	doSendDialogNpcClose(cid)
--Black Goku--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 270 then
doReborn(cid,1,640,271)
	doSendDialogNpcClose(cid)
--jiren--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 282 then
doReborn(cid,1,688,283)
	doSendDialogNpcClose(cid)
	--c13--
elseif msgcontains(msg:lower(), "yes") and getPlayerLevel(cid) >= 250 and getPlayerLevel(cid) <= 600 and getPlayerVocation(cid) == 294 then
doReborn(cid,1,657,295)
	doSendDialogNpcClose(cid)

	  message = ""
	else
	  message = "You are not at the necessary level, you are not in your last transform or you are already reborn!"
	  selfSay ('You are not at the necessary level, you are not in your last transform or you are already reborn!')
  	end
	doSendDialogNpc(cid, getNpcId(), message, "Exit")
  if msgcontains(msg:lower(), "exit") then
	doSendDialogNpcClose(cid)
	npcHandler:unGreet(cid)	
end

  return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setCallback(CALLBACK_GREET, greetCallback)
npcHandler:addModule(FocusModule:new())