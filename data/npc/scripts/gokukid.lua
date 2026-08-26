local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

local pos = {x=99,y=189,z=7} -------------- Pos para onde o player sera levado


function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

function creatureSayCallback(cid, type, msg)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    if msgcontains(msg, "hi") or msgcontains(msg, "help") then
        selfSay("Do you want finish Buu Saga??", cid)
        talkState[cid] = 0
     elseif getPlayerStorageValue(cid, 8000) == 28 and msgcontains(msg, 'yes') then
     doPlayerAddItem(cid,2504,1)
     selfSay("Congratulations!", cid)
     doTeleportThing(cid, pos)
     setPlayerStorageValue(cid, 8000, 29)
     else
     selfSay("Sorry You Cant Do this saga.", cid)
     end
     
     return TRUE   
     end
     

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
