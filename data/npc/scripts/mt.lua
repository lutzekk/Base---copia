local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

local pos = {x=42,y=215,z=7} -------------- Pos para onde o player sera levado


function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

function creatureSayCallback(cid, type, msg)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    if msgcontains(msg, "hi") or msgcontains(msg, "help") then
        selfSay("Ok Now I Tell You all. The Two Androids Wanna attack the small city you must go there ok?", cid)
        talkState[cid] = 0
     elseif msgcontains(msg, 'yes') then
     doPlayerAddItem(cid,2641,1)
     selfSay("take this", cid)
     doTeleportThing(cid, pos)
     setPlayerStorageValue(cid, 8000, 16)
     else
     selfSay("?????.", cid)
     end
     
     return TRUE   
     end
     

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
