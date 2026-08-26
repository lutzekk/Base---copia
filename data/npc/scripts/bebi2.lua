local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

local pos = {x=770,y=952,z=7} -------------- Pos para onde o player sera levado


function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

function creatureSayCallback(cid, type, msg)

    if(not npcHandler:isFocused(cid)) then
        return false
    end


if msgcontains(msg, "hi") or msgcontains(msg, "help") then
        selfSay("Thank You. Now do you want leave this place?", cid)
        talkState[cid] = 0
     elseif getPlayerStorageValue(cid, 8000) == 44 and msgcontains(msg, 'yes') then
     selfSay("Thank You again!", cid)
     doPlayerAddItem(cid,2673,3)
     doTeleportThing(cid, pos)
     setPlayerStorageValue(cid, 8000, 45)
     else
     selfSay("?????.", cid)
     end
     return TRUE   
     end


     

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
