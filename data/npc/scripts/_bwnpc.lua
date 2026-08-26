local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)			npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()					npcHandler:onThink()					end

function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

	if(msgcontains(msg, 'torneio') or msgcontains(msg, 'event')) then
	 
		selfSay('Do you want participate in torneio '..bwh.price..' gold coins, {yes} or {no}?', cid)
		talkState[talkUser] = 1
	elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 1) then  
	
	 if (os.date("%X") < bwh.i) or (tonumber(os.date("%M")) > tonumber(string.sub(bwh.i, 4, 5) + 1)) then
   selfSay("Sorry, you arrived late or early, today's event will start / started ["..bwh.i.."] hours, you can not enter now..", cid)
   talkState[talkUser] = 0
   return true
  end
	 
  if getPlayerMoney(cid) < bwh.price then
   selfSay('Sorry, you can not. For this you need to have '..bwh.price..' gold coins.', cid)
	  talkState[talkUser] = 0
   return true
  end
  
	 doTeleportThing(cid, _bw.wait_pos)
		doPlayerRemoveMoney(cid, bwh.price)
		doSendMagicEffect(getThingPos(cid), 14)
		selfSay('Bye man, good luck in Torneio event!', cid)
		talkState[talkUser] = 0
		
	elseif(msgcontains(msg, 'no') and isInArray({1}, talkState[talkUser])) then
		talkState[talkUser] = 0
		selfSay('Ok then.', cid)
	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())