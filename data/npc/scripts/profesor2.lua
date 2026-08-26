
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

	local t = 
	{
		item = 7372,
		iCount = 100,
		reward = 5948,
		rCount = 1,
		storage = 6007,
		sid = 1
	}
	if(msgcontains(msg, 'quest')) then
		selfSay('Do you have a '.. t.iCount .. ' '.. getItemNameById(t.item) ..'?', cid)
		talkState[talkUser] = 1
	elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 1) then
		if getPlayerStorageValue(cid, t.storage) ~= t.sid then
			if(doPlayerRemoveItem(cid, t.item, t.iCount)) then
				doPlayerAddItem(cid,t.reward, t.rCount)
				setPlayerStorageValue(cid, t.storage, t.sid)
				selfSay('Ok, thanks it\'s small gift for you.', cid)	
			else
				selfSay('Sorry, you don\'t have that items.', cid)	
			end
		else
			selfSay('Sorry, you can\'t do this quest.', cid)	
		end
		talkState[talkUser] = 0
	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|. Do you want to do {quest}?")
 

