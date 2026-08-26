
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

	if(msgcontains(msg, 'enter')) then
		selfSay('Do you want visit my castle?', cid)
		talkState[talkUser] = 1
	elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 1) then
		if getPlayerStorageValue(cid,1020) == 1 then
			doTeleportThing(cid, {x=119, y=291, z=4})
		else
			selfSay('First do mission, hicks!', cid)
		end
		talkState[talkUser] = 0
	elseif(msgcontains(msg, 'mission')) then
		if getPlayerStorageValue(cid,1020) ~= 1 then
			if doPlayerRemoveItem(cid, 2015, 1) then
				selfSay('Woah! Hicks... you got it?! Please give it to me!', cid)
				setPlayerStorageValue(cid, 1020, 1)
			else
				selfSay('Give me WINE!', cid)
			end
		end
		talkState[talkUser] = 0
	end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|. What do you want from me hicks {enter} to my castle or do {mission}?")
 

