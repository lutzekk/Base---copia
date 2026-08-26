local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

local pos = {x=399,y=78,z=7} -------------- Pos para onde o player sera levado


function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

function creatureSayCallback(cid, type, msg)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    if msgcontains(msg, "hi") or msgcontains(msg, "help") then
        selfSay("Do you want One star Dragon Ball?", cid)
        talkState[cid] = 0
     elseif getPlayerStorageValue(cid, 8000) == 179 and msgcontains(msg, 'yes') then
     selfSay("pegue!", cid)
     setPlayerStorageValue(cid, 8000, 180)
     doPlayerAddItem(cid,2638,1)
     else
     selfSay("?????.", cid)
     end
     return TRUE   
     end
     

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
