
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
	local player = Player(cid)
	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
	if(msgcontains(msg, 'wish')) then
		selfSay('What do you need {1000 premium points}, {10k health} , {10k mana} , {premium box}, {30 days premium card} ?', cid)

	elseif(msgcontains(msg, '1000 premium points')) then
		player:setPremiumPoints(1000)
		selfSay('Thanks for you wish.',cid)
		doRemoveCreature(getNpcCid())  
		
	elseif(msgcontains(msg, 'premium box')) then
		player:addItem(8608, 1)
		doRemoveCreature(getNpcCid())  
		
	elseif(msgcontains(msg, '10k mana')) then
		player:setMaxMana(player:getBaseMaxMana() + 10000)
		selfSay('Thanks for you wish.',cid)
		doRemoveCreature(getNpcCid())  
		
	elseif(msgcontains(msg, '10k health')) then
		player:setMaxHealth(player:getBaseMaxHealth() + 10000)
		selfSay('Thanks for you wish.',cid)
		doRemoveCreature(getNpcCid())  
		
	elseif(msgcontains(msg, '30 days premium card')) then
		player:addItem(6387, 1)
		selfSay('Thanks for you wish.',cid)
		doRemoveCreature(getNpcCid())  
	
	else
		selfSay('Sorry you can\'t do wish.',cid)
	end
	return true
end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
npcHandler:setMessage(MESSAGE_GREET, "Hi |PLAYERNAME|. Tell me your {wish}")
 

