local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

function creatureSayCallback(cid, type, msg)
if(not npcHandler:isFocused(cid)) then
return false 
end 

local talkUser = NPCHANDLER_CONVbehavior == CONVERSATION_DEFAULT and 0 or cid 
local dias = 30 --- dias que sera vendido
local diass = 60
local diasss = 90
local points = 10  --- preco que sera cobrado 
local pointss = 19
local pointsss = 27
if(msgcontains(msg, 'hi')) then
selfSay('Ola. Eu vendo 30 dias de premium por 10 points adquiridos no site. Se quiser comprar fale {30 dias}/10 points , {60 dias}/19 points, {90 dias}/27 points.', cid)
elseif(msgcontains(msg, '30 dias')) then
selfSay('Voc\ê quer comprar 30 dias de premium por 10 points?', cid)
talkState[talkUser] = 2
elseif(msgcontains(msg, '60 dias')) then
selfSay('Voc\ê quer comprar 60 dias de premium por 19 points?', cid)
talkState[talkUser] = 3
elseif(msgcontains(msg, '90 dias')) then
selfSay('Voc\ê quer comprar 90 dias de premium por 27 points?', cid)
talkState[talkUser] = 4

elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 2) and (getAccountPoints(cid)) >= points then
doAccountRemovePoints(cid,points)
doPlayerAddPremiumDays(cid, dias)
selfSay('Ativado!', cid)
talkState[talkUser] = 0
elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 3) and (getAccountPoints(cid)) >= pointss then
doAccountRemovePoints(cid,pointss)
doPlayerAddPremiumDays(cid, diass)
selfSay('Ativado!', cid)
talkState[talkUser] = 0
elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 4) and (getAccountPoints(cid)) >= pointsss then
doAccountRemovePoints(cid,pointsss)
doPlayerAddPremiumDays(cid, diasss)
selfSay('Ativado!', cid)
talkState[talkUser] = 0


else 
selfSay('Voce nao tem points suficientes.', cid)
talkState[talkUser] = 0 
end
end



npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())