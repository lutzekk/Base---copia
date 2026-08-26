local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

local pos = {x=499,y=60,z=7} -------------- Pos para onde o player sera levado


function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

function creatureSayCallback(cid, type, msg)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    if msgcontains(msg, "hi") or msgcontains(msg, "help") and getPlayerStorageValue(cid, 24333) <= 8 then
        selfSay("Voce estava me procurando amiguinho?", cid)
        talkState[cid] = 0
     
	 
	 
	 elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 24334) <= 0 then
     selfSay("Ah sim, o papai Noel me espera =)", cid)
	 setPlayerStorageValue(cid, 24333, getPlayerStorageValue(cid, 24333)+1)
	 setPlayerStorageValue(cid, 24334, 1)
     
	 
	 elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 24334) >= 1 then
     selfSay("Sim, sim, voce ja havia me encontrado ^^", cid)
	 
	 elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 24333) >= 9 then
     selfSay("Feliz Natal Amiguinho =)", cid)
	 
	 
	
	
	 
     else
     selfSay("Ho ho ho! Feliz Natal Turminha do Wodbo UD GT!", cid)
     end
     
     return TRUE   
     end
     

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
