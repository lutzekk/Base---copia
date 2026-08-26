


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
   local room = {x=95, y=147, z=7}
   local room2 = {x=382, y=1020, z=7}
   
   if msgcontains(msg, "earth") then
   		player:teleportTo(room)
   end
   
	if msgcontains(msg, "sagas") then
		if getPlayerStorageValue(cid,8000) == 84 then
		selfSay("Thank you very much for helping me it's time to come back", cid)
			player:setStorageValue(8000, 85)
			player:teleportTo(room2)
		else	
			selfSay('Sorry You Cant Do this saga.', cid)
		end
    end

    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_GREET, "Hey |PLAYERNAME|. Do you want to return to {earth} or do you want to continue with {sagas}?")
npcHandler:addModule(FocusModule:new())
