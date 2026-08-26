dofile('data/npc/lib/npc_resets.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
 
function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink()                  npcHandler:onThink()                  end
 
function creatureSayCallback(cid, type, msg)

	if not npcHandler:isFocused(cid) then
		return false
	end

	local player = Player(cid)

	local newPrice = config.price + (getResets(cid) * config.priceByReset)
	local newminlevel = config.minlevel + (getResets(cid) * config.levelbyreset)

	if msgcontains(msg, 'reset') then
		if getResets(cid) < config.maxresets then
			npcHandler:say('You want to reset your character? It will cost '..newPrice..' gp\'s!', cid)
			npcHandler.topic[cid] = 1
		else
			npcHandler:say('You already reached the maximum reset level!', cid)
		end
	elseif msgcontains(msg, 'yes') and npcHandler.topic[cid] == 1 then
		if player:getLevel() > newminlevel then
			if player:removeMoney(newPrice) then
				addEvent(function()
					if isPlayer(cid) then
						addReset(cid)
					end
				end, 3000)
				local number = getResets(cid)+1
				local msg ="---[Reset: "..number.."]-- You have reseted!  You'll be disconnected in 3 seconds."
				player:popupFYI(msg) 
				npcHandler.topic[cid] = 0
				npcHandler:releaseFocus(cid)
			else
				npcHandler:say('Its necessary to have at least '..newPrice..' gp\'s for reseting!', cid)
				npcHandler.topic[cid] = 0
			end
		else
			npcHandler:say('The minimum level for reseting is '..newminlevel..'!', cid)
			npcHandler.topic[cid] = 0
		end
	elseif(msgcontains(msg, 'no')) and isInArray({1}, talkState[talkUser]) == TRUE then
		npcHandler.topic[cid] = 0
		npcHandler:releaseFocus(cid)
		npcHandler:say('Ok.', cid)
	elseif msgcontains(msg, 'quantity') then
		npcHandler:say('You have a total of '..getResets(cid)..' reset(s).', cid)
		npcHandler.topic[cid] = 0
	end
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())