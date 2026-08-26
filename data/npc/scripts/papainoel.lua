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

    if msgcontains(msg, "hi") or msgcontains(msg, "help") and getPlayerStorageValue(cid, 24333) == 0 then
        selfSay("Ola amiguinho! Por favor, me ajude a encontrar minhas 7 renas, para que eu possa entregar os presentes nesse Natal.. Voce me ajuda?", cid)
        talkState[cid] = 0
     
	 elseif msgcontains(msg, "hi") or msgcontains(msg, "help") and getPlayerStorageValue(cid, 24333) == 9 then
     selfSay("Ho ho ho! Feliz Natal Turminha do Wodbo UD GT!", cid)
	 
	 elseif getPlayerStorageValue(cid, 24333) <= 3 and msgcontains(msg, 'yes') then
     selfSay("Sao 7 Renas...Preciso de sua ajuda...", cid)
     
	 
	 
	 elseif getPlayerStorageValue(cid, 24333) == 4 and msgcontains(msg, 'yes') then
	 selfSay("Faltam 2 ainda!", cid)
	 
	 
	 elseif getPlayerStorageValue(cid, 24333) == 5 and msgcontains(msg, 'yes') then
     selfSay("Falta apenas uma Rena..", cid)
	 
	 
	 elseif getPlayerStorageValue(cid, 24333) == 6 and msgcontains(msg, 'yes') then
     selfSay("Ho ho ho! Estou muito feliz, pegue seu presentinho amiguinho =)", cid)
	 doPlayerAddItem(cid,7492,1)
	 setPlayerStorageValue(cid, 24333, 9)
	 
	 
	 
	
	 
	 elseif getPlayerStorageValue(cid, 24333) == 9 and msgcontains(msg, 'yes') then
     selfSay("Ho ho ho! Feliz Natal Turminha do Wodbo UD GT!", cid)
	 
	
	
	 
     else
     selfSay("Ho ho ho! Feliz Natal Turminha do Wodbo UD GT!", cid)
     end
     
     return TRUE   
     end
     

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
