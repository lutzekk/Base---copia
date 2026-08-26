local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

local pos = {x=467,y=397,z=7} -------------- Pos para onde o player sera levado


function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

function creatureSayCallback(cid, type, msg)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    if msgcontains(msg, "hi") or msgcontains(msg, "help") then
        selfSay("Pegue a dragon ball e saia daqui ok?", cid)
        talkState[cid] = 0
     elseif getPlayerStorageValue(cid, 8000) == 180 and msgcontains(msg, 'yes') then
     doPlayerAddItem(cid,2639,1)
     selfSay("Ok!", cid)
	 doTeleportThing(cid, pos)
     setPlayerStorageValue(cid, 8000, 181)
     else
     selfSay("Sorry You Cant Do this saga.", cid)
     end
     
     return TRUE   
     end
     

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
