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
        selfSay("I Can Give you Scouter for 10 ki potions. Do you want?.", cid)
        talkState[cid] = 0
     elseif msgcontains(msg, 'yes') and doPlayerRemoveItem(cid,2689,10) and getPlayerStorageValue(cid,13726)  <= 0 then
     doPlayerAddItem(cid,7243,1)
     selfSay("Thanks, take scouter now.", cid) 
	 setPlayerStorageValue(cid,13726,1)                                                
    
     elseif getPlayerStorageValue(cid,13726) == 1 then
     selfSay("Sorry You Cant Do this quest.", cid)
     else 
     selfSay("Sorry Dont have that items.", cid)
     end
     
     return TRUE   
     end
     

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
