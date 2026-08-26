
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
		item = 2353,
		iCount = 1
	}

	if(msgcontains(msg, 'yes')) then
		if getPlayerStorageValue(cid, 8000) >= 49 then
			if(doPlayerRemoveItem(cid, t.item, t.iCount)) then
				if(getPlayerVocation(cid) == 7 or getPlayerVocation(cid) == 19) then
					doPlayerSetVocation(cid, 225)
					doCreatureChangeOutfit(cid, {lookType=422})
					selfSay('Congratulation! Now you are the Vegetto!', cid)	
				else
					selfSay('Sorry your vocation can\'t do this quest.', cid)	
				end
			else
				selfSay('Sorry, you don\'t have potara.', cid)	
			end
		else
			selfSay('Sorry, you can\'t do this quest now.', cid)	
		end
	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
npcHandler:setMessage(MESSAGE_GREET, "Hey, |PLAYERNAME|. I need potara, do you have it?")
 

