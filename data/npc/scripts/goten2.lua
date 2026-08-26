local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}




function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

function creatureSayCallback(cid, type, msg)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    if msgcontains(msg, "hi") or msgcontains(msg, "help") then
        selfSay("Hey Do you have 100 tails?", cid)
        talkState[cid] = 0
     elseif msgcontains(msg, 'yes') and doPlayerRemoveItem(cid,5800,100) and getPlayerStorageValue(cid,6703)  <= 0 then
     doPlayerAddItem(cid,7433,1)
     selfSay("Thanks take this!", cid) 
	 setPlayerStorageValue(cid,6703,1)                                                
    
     elseif getPlayerStorageValue(cid,6703) == 1 then
     selfSay("Sorry You Cant Do this quest.", cid)
     else 
     selfSay("Sorry Dont have that items.", cid)
     end
     
     return TRUE   
     end
     

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
