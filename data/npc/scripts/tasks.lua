-- Sistema de Task feito por Leoric (Omega no XTibia) --
local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)            npcHandler:onCreatureDisappear(cid)            end
function onCreatureSay(cid, type, msg)            npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                    npcHandler:onThink()                    end


function creatureSayCallback(cid, type, msg)
    if(not npcHandler:isFocused(cid)) then
        return false
    end
    
    local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
    
    local monster, permission = getPlayerStorageValue(cid,taskstg.monster), getPlayerStorageValue(cid,taskstg.permission)
    local kills, killstotal = getPlayerStorageValue(cid,taskstg.kills), getPlayerStorageValue(cid,taskstg.killstotal)
    
    if msgcontains(msg,'nova task') then
        if monster ~= -1 then
            selfSay('Voce ja tem uma task em andamento. Termine-a antes de começar outra.',cid)
        elseif getPlayerStorageValue(cid, taskstg.stage) + 1 > #taskmonsters then
            selfSay('Eu não tenho mais tasks para você.',cid)
        elseif not canDoTask(cid) then
            selfSay('Você deve esperar '..math.ceil((permission - os.time(t))/60)..' minutos ate poder comecar outra task.',cid)
        else
            doStartTask(cid)
            selfSay('Muito bem, utilize {!countkills} para acompanhar o andamento de sua task.',cid)
        end
        talkState[talkUser] = 0
    elseif msgcontains(msg,'completar') then
        if canDoTask(cid) then
            selfSay('Voce nao tem uma task iniciada ainda... diga {nova task} para comecar uma.',cid)
        elseif permission > 1 then
            selfSay('Voce nao tem uma task ativa... e so podera começar outra mais tarde.',cid)
        elseif killstotal > 1 and kills >= killstotal then
            selfSay('Parabens por completar sua task!',cid)
            doCompleteTask(cid)
        else
            selfSay('Voce ainda não completou sua task.',cid)
        end
        talkState[talkUser] = 0
    elseif msgcontains(msg,'info') then
        if canDoTask(cid) and (monster == 0 or monster == -1) then
            selfSay('Voce pode começar uma task dizendo {nova task}. Assim que disser, uma nova task sera atribuida a você dependendo do seu level e você poderá acompanhar seu andamento dizendo {!countkills}.',cid)
        else
            selfSay('Voce pode acompanhar sua task pelo comando {!countkills}. Assim que terminar, me avise e você receberá seu premio em dinheiro e experiencia.',cid)
        end
        talkState[talkUser] = 0
    elseif msgcontains(msg, 'pontos') then
        local pontos = getPlayerStorageValue(cid, taskstg.points) > 0 and getPlayerStorageValue(cid, taskstg.points) or 0
        selfSay('Voce tem '.. pontos ..' pontos de task.',cid)
    elseif msgcontains(msg,'cancelar') then
        if monster == 0  or monster == -1 then
            selfSay('Voce nao tem uma task ativa para cancelar.',cid)
            talkState[talkUser] = 0
        else
            selfSay('Voce tem certeza que quer cancelar sua task?',cid)
            talkState[talkUser] = 1
        end
    elseif (msgcontains(msg,'yes') or msgcontains(msg,'sim')) and talkState[talkUser] == 1 then
        selfSay('Muito bem, sua task foi cancelada.',cid)
        doResetTask(cid)
        setPlayerStorageValue(cid,taskstg.permission,-1)
        setPlayerStorageValue(cid, taskstg.stage, getPlayerStorageValue(cid, taskstg.stage)-1)
        talkState[talkUser] = 0
    elseif (msgcontains(msg,'no') or msgcontains(msg,'nao')) and talkState[talkUser] == 1 then
        selfSay('Você que sabe, ne...',cid)
    end
end
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())