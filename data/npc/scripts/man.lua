local focuses = {}
local function isFocused(cid)
	for i, v in pairs(focuses) do
		if(v == cid) then
			return true
		end
	end
	return false
end

local function travel(cid, x, y, z)
	destpos = {x = x, y = y, z = z}
	doTeleportThing(cid, destpos)
	doSendMagicEffect(destpos, 2)
end

local function addFocus(cid)
	if(not isFocused(cid)) then
		table.insert(focuses, cid)
	end
end
local function removeFocus(cid)
	for i, v in pairs(focuses) do
		if(v == cid) then
			table.remove(focuses, i)
			break
		end
	end
end
local function lookAtFocus()
	for i, v in pairs(focuses) do
		if(isPlayer(v) == TRUE) then
			doNpcSetCreatureFocus(v)
			return
		end
	end
	doNpcSetCreatureFocus(0)
end



local pos1 = {x=93,y=1525,z=7}
local pos2 = {x=149,y=1519,z=7}
local pos3 = {x=210,y=1521,z=7}
local pos4 = {x=269,y=1523,z=7}
local pos5 = {x=339,y=1533,z=7}
local pos6 = {x=119,y=491,z=7}
local stor = 8000 -- storage

function onCreatureSay(cid, type, msg)


if msgcontains(msg, 'hi') and not (isFocused(cid)) and (getCreatureSkullType(cid) == 3) or (getCreatureSkullType(cid) == 4) then
selfSay("Voce esta PK!", cid)

		
		elseif((msg == "hi") and not (isFocused(cid)) and getNpcDistanceToCreature(cid) <= 2 and (getPlayerStorageValue(cid, stor) ~= 153) and (getPlayerStorageValue(cid, stor) ~= 154)) then
		selfSay("Voce nao esta nessa saga!", cid)
		addFocus(cid)
		
		elseif((msg == "hi") and not (isFocused(cid)) and getNpcDistanceToCreature(cid) <= 2 and (getPlayerStorageValue(cid, stor) == 153)) then
		selfSay("Por favor me ajude, eu te pago!", cid)
		addFocus(cid)
		
		
		elseif((msg == "hi") and not (isFocused(cid)) and getNpcDistanceToCreature(cid) <= 2 and (getPlayerStorageValue(cid, stor) == 154)) then
		selfSay("Voce venceu ele?", cid)
		addFocus(cid)
		
		
	
		elseif (isFocused(cid) and msg == "yes" and getPlayerStorageValue(cid, 8000) == 153) then
		selfSay("Cuidado certo?", cid)
		
		elseif (isFocused(cid) and msg == "yes" and getPlayerStorageValue(cid, 8000) == 154) then
		selfSay("Vou pagalo, muito obrigado", cid)
		doPlayerAddItem(cid,2160,300)
		setPlayerStorageValue(cid, 8000, 155)
		
      	elseif((isFocused(cid)) and (msg == "bye" or msg == "goodbye" or msg == "cya")) then
		selfSay("Ok ate mais!", cid, TRUE)
		removeFocus(cid)
		
		
		
		
	
end

end




function onThink()
	for i, focus in pairs(focuses) do
		if(isCreature(focus) == FALSE) then
			removeFocus(focus)
		else
			local distance = getDistanceTo(focus) or -1
			if((distance > 4) or (distance == -1)) then
				selfSay("Hmph!")				
				removeFocus(focus)
			end
		end
	end
	lookAtFocus()
end

	
  	





