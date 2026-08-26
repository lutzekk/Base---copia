


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
		if player:getVocation():getId() == 5 and player:getLevel() <= 1000 then
			doReborn(cid,1,794,14)
		elseif player:getVocation():getId() == 25 and player:getLevel() <= 1000 then
			doReborn(cid,1,799,34)
		elseif player:getVocation():getId() == 45 and player:getLevel() <= 1000 then
			doReborn(cid,1,804,54) --Vegetto--
			elseif player:getVocation():getId() == 125 and player:getLevel() <= 1000 then
				doReborn(cid,1,828,134) --Trunks
		elseif player:getVocation():getId() == 145 and player:getLevel() <= 1000 then
			doReborn(cid,1,831,154)	--Goten-- 
		elseif player:getVocation():getId() == 165 and player:getLevel() <= 1000 then
			doReborn(cid,1,838,174) --ChibiTrunks--
		elseif player:getVocation():getId() == 205 and player:getLevel() <= 1000 then
			doReborn(cid,1,852,214) --Krillin
		elseif player:getVocation():getId() == 245 and player:getLevel() <= 1000 then
			doReborn(cid,1,861,254)
		elseif player:getVocation():getId() == 265 and player:getLevel() <= 1000 then
			doReborn(cid,1,876,274) ---Freeza--
		elseif player:getVocation():getId() == 285 and player:getLevel() <= 1000 then
			doReborn(cid,1,884,294) --Cooler--
		elseif player:getVocation():getId() == 305 and player:getLevel() <= 1000 then
			doReborn(cid,1,895,314) --C17--
		elseif player:getVocation():getId() == 325 and player:getLevel() <= 1000 then
			doReborn(cid,1,906,334) --C18--
		elseif player:getVocation():getId() == 345 and player:getLevel() <= 1000 then
			doReborn(cid,1,902,354) --Cell--
		elseif player:getVocation():getId() == 365 and player:getLevel() <= 1000 then
			doReborn(cid,1,921,374) --TenShin--
		elseif player:getVocation():getId() == 445 and player:getLevel() <= 1000 then
			doReborn(cid,1,963,454) --Bardock--
		elseif player:getVocation():getId() == 465 and player:getLevel() <= 1000 then
			doReborn(cid,1,933,474) --Brolly--
		elseif player:getVocation():getId() == 485 and player:getLevel() <= 1000 then
			doReborn(cid,1,972,494) --Janemba--
		elseif player:getVocation():getId() == 505 and player:getLevel() <= 1000 then
			doReborn(cid,1,996,514)
		elseif player:getVocation():getId() == 525 and player:getLevel() <= 1000 then
			doReborn(cid,1,980,534)
		elseif player:getVocation():getId() == 545 and player:getLevel() <= 1000 then
			doReborn(cid,1,984,554)
		elseif player:getVocation():getId() == 565 and player:getLevel() <= 1000 then
			doReborn(cid,1,1023,574)
		elseif player:getVocation():getId() == 585 and player:getLevel() <= 1000 then
			doReborn(cid,1,1007,594)
		elseif player:getVocation():getId() == 605 and player:getLevel() <= 1000 then
			doReborn(cid,1,1029,614)
		elseif player:getVocation():getId() == 625 and player:getLevel() <= 1000 then
			doReborn(cid,1,1012,634)
		elseif player:getVocation():getId() == 645 and player:getLevel() <= 1000 then
			doReborn(cid,1,1000,654)
		elseif player:getVocation():getId() == 665 and player:getLevel() <= 1000 then
			doReborn(cid,1,1051,674)
		elseif player:getVocation():getId() == 685 and player:getLevel() <= 1000 then
			doReborn(cid,1,1044,694) --Kame--
		elseif player:getVocation():getId() == 705 and player:getLevel() <= 1000 then
			doReborn(cid,1,1036,714) --Tapion--
		elseif player:getVocation():getId() == 725 and player:getLevel() <= 1000 then
			doReborn(cid,1,1064,734)
		elseif player:getVocation():getId() == 745 and player:getLevel() <= 1000 then
			doReborn(cid,1,1071,754)
		elseif player:getVocation():getId() == 765 and player:getLevel() <= 1000 then
			doReborn(cid,1,1080,774)
		elseif player:getVocation():getId() == 805 and player:getLevel() <= 1000 then
			doReborn(cid,1,1414,814)
		elseif player:getVocation():getId() == 825 and player:getLevel() <= 1000 then
			doReborn(cid,1,533,834)
		elseif player:getVocation():getId() == 845 and player:getLevel() <= 1000 then
			doReborn(cid,1,755,854)
		else		
			selfSay('sorry you must be in your last transform to make reborn.', cid)
        end
    end

    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_GREET, "Hey |PLAYERNAME|. Do you want to make Reborn?")
npcHandler:addModule(FocusModule:new())
