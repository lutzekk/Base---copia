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
        selfSay("Voce ja terminou? Diga {yes} se terminou.", cid)
        talkState[cid] = 0
     elseif msgcontains(msg, 'yes') and getPlayerInFight(cid) == false then
     selfSay("Parabens, aqui esta seu premio!", cid) 
     doTeleportThing(cid, pos)
	 doPlayerAddItem(cid,7670,1)
	
     else
	 selfSay("Pz Locked.", cid)
     end
     return TRUE   
     end
     

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())