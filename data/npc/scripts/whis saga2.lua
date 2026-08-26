


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
   
   if msgcontains(msg, "earth") then
   		player:teleportTo(room)
   end
   
	if msgcontains(msg, "sagas") then
		if getPlayerStorageValue(cid,8000) == 71 then
			selfSay('You must defeat Vegeta', cid)
			player:setStorageValue(8000, 72)
		elseif getPlayerStorageValue(cid,8000) == 73 then
			selfSay('You must talk to Goku to use the shunkaido.', cid)
			player:setStorageValue(8000, 74)
		else	
			selfSay('Sorry You Cant Do this saga.', cid)
		end
    end

    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_GREET, "Hey |PLAYERNAME|. Do you want to return to {earth} or do you want to continue with {sagas}?")
npcHandler:addModule(FocusModule:new())
