local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

local pos = {x=528,y=238,z=7} -------------- Pos para onde o player sera levado


function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

function creatureSayCallback(cid, type, msg)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    if msgcontains(msg, "hi") or msgcontains(msg, "help") then
        selfSay("Do you want to leave this area?", cid)
        talkState[cid] = 0
     elseif getPlayerStorageValue(cid, 8000) == 29 and msgcontains(msg, 'yes') then
     doPlayerAddItem(cid,6093,1)
     selfSay("Take This!", cid)
     doTeleportThing(cid, pos)
     setPlayerStorageValue(cid, 8000, 30)
     else
     selfSay("Sorry You Cant Do this saga.", cid)
     end
     
     return TRUE   
     end
     

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())