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



local pos1 = {x=409,y=1172,z=12}
local pos2 = {x=477,y=1172,z=12}
local pos3 = {x=564,y=1169,z=12}
local pos4 = {x=633,y=1187,z=12}
local pos5 = {x=413,y=1223,z=12}
local pos6 = {x=95,y=577,z=12}
local stor = 8000 -- storage

function onCreatureSay(cid, type, msg)


if msgcontains(msg, 'hi') and not (isFocused(cid)) and (getCreatureSkullType(cid) == 3) or (getCreatureSkullType(cid) == 4) then
selfSay("Voce esta PK!", cid)

        elseif((msg == "hi") and not (isFocused(cid)) and (getPlayerStorageValue(cid, stor) ~= 156) and (getPlayerStorageValue(cid, stor) ~= 157) and (getPlayerStorageValue(cid, stor) ~= 158) and getNpcDistanceToCreature(cid) <= 2) then
		selfSay("Voce nao esta nessa saga", cid)
		addFocus(cid)
		
		elseif((msg == "hi") and not (isFocused(cid)) and (getPlayerStorageValue(cid, stor) == 156) and getNpcDistanceToCreature(cid) <= 2) then
		selfSay("Ajude Vegeta ok?", cid)
		addFocus(cid)
		
		elseif((msg == "hi") and not (isFocused(cid)) and (getPlayerStorageValue(cid, stor) == 157) and getNpcDistanceToCreature(cid) <= 2) then
		selfSay("O que espera?", cid)
		addFocus(cid)
		
		elseif((msg == "hi") and not (isFocused(cid)) and (getPlayerStorageValue(cid, stor) == 158) and getNpcDistanceToCreature(cid) <= 2) then
		selfSay("Voce venceu?!", cid)
		addFocus(cid)
		
		elseif (isFocused(cid) and msg == "yes" and (getPlayerStorageValue(cid, stor) == 156)) then
		selfSay("Cuidado com Cell!", cid)
		setPlayerStorageValue(cid, stor, 157)
		
		elseif (isFocused(cid) and msg == "yes" and (getPlayerStorageValue(cid, stor) == 158)) then
		selfSay("Obrigado", cid)
		doPlayerAddItem(cid,2466,1)
		setPlayerStorageValue(cid, stor, 159)
		
		
			
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

	
  	





