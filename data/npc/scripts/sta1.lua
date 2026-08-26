local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

local pos = {x=478,y=106,z=0} -------------- Pos para onde o player sera levado
local exhaust = 7 * 24 * 60 * 60
local exhaustp = 3 * 24 * 60 * 60

function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

function creatureSayCallback(cid, type, msg)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

     if msgcontains(msg, "hi") or msgcontains(msg, "help") then
        selfSay("Voce quer treinar?? Se chegar ao fim tem premio!! Diga {yes} se quiser.", cid)
        talkState[cid] = 0
     elseif msgcontains(msg, 'yes') and getPlayerInFight(cid) == false and getPlayerStorageValue(cid, 75666) <= os.time() and getPlayerPremiumDays(cid) >= 1 then
     selfSay("Boa Sorte.", cid)
	 setPlayerStorageValue(cid,75666,os.time() + exhaustp)
     doTeleportThing(cid, pos)
	  elseif msgcontains(msg, 'yes') and getPlayerInFight(cid) == false and getPlayerStorageValue(cid, 75666) <= os.time() and getPlayerPremiumDays(cid) <= 0 then
     selfSay("Boa Sorte.", cid)
	 setPlayerStorageValue(cid,75666,os.time() + exhaust)
     doTeleportThing(cid, pos)
	 elseif msgcontains(msg, 'yes') and getPlayerInFight(cid) == true then
	  selfSay("pz locked.", cid)
     else
	 local left = getPlayerStorageValue(cid, 75666) - os.time()
	 left = {day = math.floor(left/86400), hour = math.floor((left % 86400)/60/60), minutes = math.ceil((left % 3600)/60)}
	 selfSay("Voce tem que esperar ".. left.day .."dias,  "..left.hour.."horas e"..left.minutes.."minutos para treinar novamente", cid)
     end
	 return TRUE   
     end
     

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

