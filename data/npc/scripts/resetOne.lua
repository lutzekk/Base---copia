dofile('data/npc/lib/npc_resets.lua')
local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                          npcHandler:onThink()                        end

function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end

    local player = Player(cid)

    if msgcontains(msg, "yes") then
	if player:getLevel() > 600  then return npcHandler:say('The maximum level to reset is 350', cid) end
        		if player:getItemCount(config.resetOne) > 0 then
				player:removeItem(config.resetOne,1)
				player:setStorageValue(9000,1)
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
			npcHandler:say('You need the reset access to make your first reset.', cid)
			npcHandler.topic[cid] = 0
		end
    end

    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_GREET, "Hey |PLAYERNAME|. Do you want to do your first reset?")
npcHandler:addModule(FocusModule:new())
