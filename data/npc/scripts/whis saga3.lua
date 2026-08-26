


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
	local room = {x=451, y=1031, z=7}
    if msgcontains(msg, "yes") then
        if getPlayerStorageValue(cid,8000) == 77 then
			local player = Player(cid)
			selfSay('You must beat those of the universe 6.', cid)
			player:teleportTo(room)
		elseif getPlayerStorageValue(cid,8000) == 85 then
			local player = Player(cid)
			selfSay('The tournament of of the universes will begin!', cid)
			player:setStorageValue(8000, 86)
		else	
			selfSay('Sorry You Cant Do this saga.', cid)
        end
    end

    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_GREET, "Hey |PLAYERNAME|. Are you ready to do mission??")
npcHandler:addModule(FocusModule:new())
