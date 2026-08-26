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

    if msgcontains(msg, "hi") or msgcontains(msg, "help") then
        selfSay("Voce esta com as dragon balls?", cid)
        talkState[cid] = 0
     elseif getPlayerStorageValue(cid, 8000) == 186 and doPlayerRemoveItem(cid,2638,1) and msgcontains(msg, 'yes') then
     selfSay("obrigado", cid)
     setPlayerStorageValue(cid, 8000, 187)
	
	elseif getPlayerStorageValue(cid, 8000) == 187 and doPlayerRemoveItem(cid,2639,1) and msgcontains(msg, 'yes') then
     selfSay("obrigado", cid)
     setPlayerStorageValue(cid, 8000, 188)
	 
	 elseif getPlayerStorageValue(cid, 8000) == 188 and doPlayerRemoveItem(cid,5896,1) and msgcontains(msg, 'yes') then
     selfSay("obrigado", cid)
     setPlayerStorageValue(cid, 8000, 189)
	 
	 elseif getPlayerStorageValue(cid, 8000) == 189 and doPlayerRemoveItem(cid,5900,1) and msgcontains(msg, 'yes') then
     selfSay("obrigado", cid)
     setPlayerStorageValue(cid, 8000, 190)
	 
	 elseif getPlayerStorageValue(cid, 8000) == 190 and doPlayerRemoveItem(cid,5898,1) and msgcontains(msg, 'yes') then
     selfSay("obrigado", cid)
     setPlayerStorageValue(cid, 8000, 191)
	 
	 elseif getPlayerStorageValue(cid, 8000) == 191 and doPlayerRemoveItem(cid,5876,1) and msgcontains(msg, 'yes') then
     selfSay("obrigado", cid)
     setPlayerStorageValue(cid, 8000, 192)
	 
	 elseif getPlayerStorageValue(cid, 8000) == 192 and doPlayerRemoveItem(cid,5877,1) and msgcontains(msg, 'yes') then
     selfSay("obrigado", cid)
     setPlayerStorageValue(cid, 8000, 193)
	 
	 elseif getPlayerStorageValue(cid, 8000) == 193 and msgcontains(msg, 'yes') then
     selfSay("Va para a proxima saga", cid)
	 
	 elseif getPlayerStorageValue(cid, 8000) <= 36 and msgcontains(msg, 'yes') then
     selfSay("Voce nao esta nessa saga.", cid)
	 
	 elseif getPlayerStorageValue(cid, 8000) >= 194 and msgcontains(msg, 'yes') then
     selfSay("Voce nao esta nessa saga", cid)
     
	 
     else
     selfSay("Sorry, first give me dragon ball...", cid)
     end
     
     return TRUE   
     end
     

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
