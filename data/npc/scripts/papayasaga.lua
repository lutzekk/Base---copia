local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

local pos = {x=129,y=580,z=12} -------------- Pos para onde o player sera levado


function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

function creatureSayCallback(cid, type, msg)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    if msgcontains(msg, "hi") or msgcontains(msg, "help") then
        selfSay("Quer ir para Papaya para fazer a saga?", cid)
        talkState[cid] = 0
     elseif getPlayerLevel(cid) >= 50 and msgcontains(msg, 'yes') then
     selfSay("Boa Sorte!", cid)
     doTeleportThing(cid, pos)
     else
     selfSay("Voce precisa estar no level 50 ou mais!", cid)
     end
     return TRUE   
     end
     

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())