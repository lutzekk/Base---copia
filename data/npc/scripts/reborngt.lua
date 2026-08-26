


local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                          npcHandler:onThink()                        end

function creatureSayCallback(cid, type, msg)
    if not npcHandler:isFocused(cid) then
        return false
    end
--doReborn(cid, level, looktype, voc)
    local player = Player(cid)
    if msgcontains(msg, "yes") then
		if player:getVocation():getId() == 6 and player:getLevel() <= 1000 then
			doReborn(cid,1,774,7)
		elseif player:getVocation():getId() == 25 and player:getLevel() <= 1000 then
				doReborn(cid,1,790,27)
		elseif player:getVocation():getId() == 45 and player:getLevel() <= 1000 then
				doReborn(cid,1,804,47)
		elseif player:getVocation():getId() == 65 and player:getLevel() <= 1000 then
				doReborn(cid,1,818,67)
		elseif player:getVocation():getId() == 85 and player:getLevel() <= 1000 then
				doReborn(cid,1,335,87)
		elseif player:getVocation():getId() == 105 and player:getLevel() <= 1000 then
				doReborn(cid,1,329,107)
		elseif player:getVocation():getId() == 125 and player:getLevel() <= 1000 then
				doReborn(cid,1,828,127) --Trunks Por Ahora No
		elseif player:getVocation():getId() == 145 and player:getLevel() <= 1000 then
				doReborn(cid,1,831,154)
		elseif player:getVocation():getId() == 165 and player:getLevel() <= 1000 then
				doReborn(cid,1,838,174)
		elseif player:getVocation():getId() == 185 and player:getLevel() <= 1000 then
				doReborn(cid,1,843,187) ------ PICOLO------
		elseif player:getVocation():getId() == 205 and player:getLevel() <= 1000 then
				doReborn(cid,1,223,214) --Krilin--
		elseif player:getVocation():getId() == 225 and player:getLevel() <= 1000 then
				doReborn(cid,1,847,227) --Dende--
		elseif player:getVocation():getId() == 245 and player:getLevel() <= 1000 then
				doReborn(cid,1,861,254) -----SHIN-----
		elseif player:getVocation():getId() == 265 and player:getLevel() <= 1000 then
				doReborn(cid,1,876,274) ---Frezer--
		elseif player:getVocation():getId() == 285 and player:getLevel() <= 1000 then
				doReborn(cid,1,884,294) -----COOLER----
		elseif player:getVocation():getId() == 305 and player:getLevel() <= 1000 then
				doReborn(cid,1,895,314) ----------C17--------
		elseif player:getVocation():getId() == 0 and player:getLevel() <= 1000 then
				doReborn(cid,1,906,334) --C18--
		elseif player:getVocation():getId() == 345 and player:getLevel() <= 1000 then
				doReborn(cid,1,902,354) --Cell--
		elseif player:getVocation():getId() == 365 and player:getLevel() <= 1000 then
				doReborn(cid,1,921,374)  ---Ten Shin Han GT---
         elseif player:getVocation():getId() == 385 and player:getLevel() <= 1000 then
				doReborn(cid,1,921,387) ---Majin Buu------
		elseif player:getVocation():getId() == 405 and player:getLevel() <= 1000 then
			doReborn(cid,1,956,407) ---Bebi--
		elseif player:getVocation():getId() == 425 and player:getLevel() <= 1000 then
			doReborn(cid,1,945,434) ---Uub-----
		elseif player:getVocation():getId() == 445 and player:getLevel() <= 1000 then
			doReborn(cid,1,963,454)
		elseif player:getVocation():getId() == 465 and player:getLevel() <= 1000 then
			doReborn(cid,1,933,474) -----BRolly-------
		elseif player:getVocation():getId() == 485 and player:getLevel() <= 1000 then
			doReborn(cid,1,972,494) -------- Janemba--------
		elseif player:getVocation():getId() == 685 and player:getLevel() <= 1000 then
			doReborn(cid,1,1044,694) -------Kame-------
		elseif player:getVocation():getId() == 785 and player:getLevel() <= 1000 then
			doReborn(cid,1,658,787)
		elseif player:getVocation():getId() == 705 and player:getLevel() <= 1000 then
			doReborn(cid,1,1036,714) --------TApion------
		elseif player:getVocation():getId() == 785 and player:getLevel() <= 1000 then
			doReborn(cid,1,658,787)
	else				
			selfSay('sorry you must be in your last transform to make reborn.', cid)
        end
    end

    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_GREET, "Hey |PLAYERNAME|. Do you want to make Reborn?")
npcHandler:addModule(FocusModule:new())
