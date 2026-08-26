


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
	local room = {x=538, y=1021, z=7}
    if msgcontains(msg, "yes") then
        if getPlayerStorageValue(cid,8000) == 81 or getPlayerStorageValue(cid,8000) == 82 or getPlayerStorageValue(cid,8000) == 83   then
			local player = Player(cid)
			player:setStorageValue(8000,82)
				player:teleportTo(room)
				selfSay('Go!', cid)
		else	
			selfSay('Sorry You Cant Do this saga.', cid)
        end
    end

    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_GREET, "Hey |PLAYERNAME|. Let's travel to my timeline to kill Black Goku")
npcHandler:addModule(FocusModule:new())
