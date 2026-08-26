local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

local pos = {x=89,y=227,z=7} -------------- Pos para onde o player sera levado


function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

function creatureSayCallback(cid, type, msg)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    if msgcontains(msg, "hi") or msgcontains(msg, "help") then
        selfSay("Voce quer a dragon ball?", cid)
        talkState[cid] = 0
     elseif getPlayerStorageValue(cid, 8000) == 183 and msgcontains(msg, 'yes') then
     doPlayerAddItem(cid,5898,1)
     selfSay("Vejo que seu motivo e nobre, pegue!", cid)
     setPlayerStorageValue(cid, 8000, 184)
     else
     selfSay("Sorry You Cant Do this saga.", cid)
     end
     
     return TRUE   
     end
     

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())