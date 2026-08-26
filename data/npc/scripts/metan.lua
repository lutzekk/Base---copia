
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
		item = 2465,
		iCount = 1,
		reward = 2673,
		rCount = 1
	}
	if(msgcontains(msg, 'quest')) then
		selfSay('Do you have a '.. t.iCount .. ' '.. getItemNameById(t.item) ..'?', cid)
		talkState[talkUser] = 1
	elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 1) then
			if(doPlayerRemoveItem(cid, t.item, t.iCount)) then
				--item = doPlayerAddItem(cid, 2091, 1)
				--doSetItemAttribute(item, "aid", 2091)
				local key = doCreateItemEx(2092, 1)
				doItemSetAttribute(key, "aid", 2092)
				doPlayerAddItemEx(cid, key, true)
				selfSay('Ok, thanks it\'s small gift for you.', cid)	
			else
				selfSay('Sorry, you don\'t have that items.', cid)	
			end
		talkState[talkUser] = 0
	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|. Do you want to do {quest}?")
 

