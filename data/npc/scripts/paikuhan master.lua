local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

local config = {
        
        
        outfit_paikuhan = {lookType = 985, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
		outfit_paikuhanrb = {lookType = 989, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0},
        


}

local points = 40
local dias = 15


function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

function creatureSayCallback(cid, type, msg)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    if msgcontains(msg, "hi") then
        selfSay("Você quer ser como eu? Se sim, diga {paikuhan}.", cid)


        

      elseif msgcontains(msg, "paikuhan") then
        selfSay("Serão removidos 40 pontos seus, adquiridos no site, você tem certeza?.", cid)
        talkState[cid] = 1


elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) <= 0 and getPlayerStorageValue(cid, 60754) <= 0 and (getAccountPoints(cid)) >= points and talkState[cid] == 1 then
     doAccountRemovePoints(cid,points)
     selfSay("Ok!.", cid)
	 doCreatureChangeOutfit(cid, config.outfit_paikuhan)
     doPlayerSetVocation(cid,504)
	 
	 
	 setPlayerStorageValue(cid,60754,4)
     doRemoveCreature(cid,true)


elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 30023) == 4 and getPlayerStorageValue(cid, 60754) <= 0 and (getAccountPoints(cid)) >= points and talkState[cid] == 1 then
     doAccountRemovePoints(cid,points)
     selfSay("Ok!.", cid)
	 doCreatureChangeOutfit(cid, config.outfit_paikuhanrb)
     doPlayerSetVocation(cid,509)
	 
	 
	 setPlayerStorageValue(cid,60754,4)
     doRemoveCreature(cid,true)




     
elseif getPlayerStorageValue(cid, 60754) == 4 then
     selfSay("Você já é paikuhan!", cid)
     talkState[cid] = 0
     
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

