local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

local pos = {x=78,y=490,z=8} -------------- Pos para onde o player sera levado


function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

function creatureSayCallback(cid, type, msg)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    if msgcontains(msg, "hi") or msgcontains(msg, "help") then
        selfSay("Agora corra ok? O planeta vai explodir..", cid)
        talkState[cid] = 0
     elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 8000) == 146 then
     doPlayerAddItem(cid,2673,1) 
     selfSay("pegue a senzu!", cid)
     doTeleportThing(cid, pos)
     setPlayerStorageValue(cid, 8000, 147)
     else
     selfSay("?????.", cid)
     end
     
     return TRUE   
     end
     

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
