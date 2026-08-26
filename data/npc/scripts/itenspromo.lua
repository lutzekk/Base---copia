local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

local config = {
        
        
        outfit_c8 = {lookType = 738, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_c82 = {lookType = 743, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
        


}

local points = 20



function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

function creatureSayCallback(cid, type, msg)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    if msgcontains(msg, "hi") then
        selfSay("Você quer set premium? Se sim, diga {premium}.", cid)


        

      elseif msgcontains(msg, "premium") then
        selfSay("Serão removidos 20 pontos seus, adquiridos no site, você tem certeza?(necessario uma bag ou capsule vazia).", cid)
        talkState[cid] = 1


elseif msgcontains(msg, 'yes') and (getAccountPoints(cid)) >= points and talkState[cid] == 1 then
     doAccountRemovePoints(cid,points)
     selfSay("Ok!.", cid)
     doPlayerAddItem(cid,1998,1)
	 doPlayerAddItem(cid,7478,500)
	 doPlayerAddItem(cid,2160,500)
	 doPlayerAddItem(cid,7667,1)
	 doPlayerAddItem(cid,7655,1)
	 doPlayerAddItem(cid,7656,1)
	 doPlayerAddItem(cid,7657,1)
	 doPlayerAddItem(cid,7649,1)
     



     
elseif (getAccountPoints(cid)) < points then
    selfSay("Você não tem points suficientes!", cid)
    talkState[cid] = 0











     else
     selfSay("! Fale comigo pela aba NPC.", cid)
     talkState[cid] = 0
     end
     return TRUE
     end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

