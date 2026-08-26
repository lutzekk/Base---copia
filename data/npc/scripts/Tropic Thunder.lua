local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)			npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()					npcHandler:onThink()					end

local function travel(cid, x, y, z)
	destpos = {x = x, y = y, z = z}
	doTeleportThing(cid, destpos)
end
local function pay(cid, cost)
	if doPlayerRemoveMoney(cid, cost) == true then
		return true
	else
		return false
	end
end

function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
	if(isPremium(cid)) then
			if msgcontains(msg, 'atlantida') then
				if pay(cid,300) then
					travel(cid, 123, 833, 7)
					selfSay('Let\'s go!', cid)
					
					
				else
					selfSay('Sorry, you don\'t have enough money.', cid)
				end

			elseif msgcontains(msg, 'tropico') then
				if pay(cid,300) then
					travel(cid, 96, 683, 7)
					selfSay('Let\'s go!', cid)
					
					
				else
					selfSay('Sorry, you don\'t have enough money.', cid)
				end

			elseif msgcontains(msg, 'back') then
				if pay(cid,300) then
					travel(cid, 84, 510, 7)
					selfSay('Let\'s go!', cid)
					
					
				else
					selfSay('Sorry, you don\'t have enough money.', cid)
				end
			end
			else
			selfSay('Sorry, you don\'t have premium account.', cid)
		end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|. You can go to: {tropico, atlantida, back}")