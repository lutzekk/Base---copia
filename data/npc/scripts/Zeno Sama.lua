


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
local room = {x=81, y=165, z=7}
    if msgcontains(msg, "yes") then
        if getPlayerStorageValue(cid,8000) == 78 then
			local player = Player(cid)
				selfSay('At another time we should do another tournament but with other universes?', cid)
					player:teleportTo(room)
					player:setStorageValue(8000,79)
		else	
			selfSay('Sorry You Cant Do this saga.', cid)
        end
    end

    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_GREET, "Hey |PLAYERNAME|. hello are you sure you will enter the tournament?")
npcHandler:addModule(FocusModule:new())
