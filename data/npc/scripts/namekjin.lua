local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

local pos = {x=499,y=60,z=7} -------------- Pos para onde o player sera levado


function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

function creatureSayCallback(cid, type, msg)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    if msgcontains(msg, "hi") or msgcontains(msg, "help") then
        selfSay("Hey! Voce e muito forte ! Quer finalizar a saga de Freeza??", cid)
        talkState[cid] = 0
     elseif getPlayerStorageValue(cid, 8000) == 147 and msgcontains(msg, 'yes') then
     doPlayerAddItem(cid,2195,1)
	 doPlayerAddItem(cid,2673,1000)
     selfSay("Parabens!! Voce finalizou a saga Freeza!", cid)
     setPlayerStorageValue(cid, 8000, 148)
     else
     selfSay("?????.", cid)
     end
     
     return TRUE   
     end
     

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
