local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

local pos = {x=155,y=355,z=7} -------------- Pos para onde o player sera levado


function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

function creatureSayCallback(cid, type, msg)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    if msgcontains(msg, "hi") or msgcontains(msg, "help") then
        selfSay("Ok. Do you want Finish Cell Saga??", cid)
        talkState[cid] = 0
     elseif getPlayerStorageValue(cid, 8000) == 21 and msgcontains(msg, 'yes') then
     doPlayerAddItem(cid,2475,1)
     selfSay("Congratulations!", cid)
     doTeleportThing(cid, pos)
     setPlayerStorageValue(cid, 8000, 22)
     else
     selfSay("Sorry You Cant Do this saga.", cid)
     end
     
     return TRUE   
     end
     

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
