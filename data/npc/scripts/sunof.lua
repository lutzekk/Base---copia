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




local stor = 8000 -- storage
function onCreatureSay(cid, type, msg)


if msgcontains(msg, 'hi') and not (isFocused(cid)) and (getCreatureSkullType(cid) == 3) or (getCreatureSkullType(cid) == 4) then
selfSay("Voce nao pode fazer a saga, esta PK!!", cid)

elseif((msg == "hi") and not (isFocused(cid)) and getNpcDistanceToCreature(cid) <= 2 and (getPlayerStorageValue(cid, stor) <= 53)) then
		selfSay("O chefe da aldeia foi capturado e nao podemos fazer nada contra a temida forca Red Ribbon..", cid)
		addFocus(cid)
	
	elseif((msg == "hi") and not (isFocused(cid)) and getNpcDistanceToCreature(cid) <= 2 and (getPlayerStorageValue(cid, stor) >= 54)) then
		selfSay("Voce salvou o chefe da aldeia?!", cid)
		addFocus(cid)
		
		elseif (isFocused(cid) and msg == "yes" and (getPlayerStorageValue(cid, stor) <= 53)) then
		selfSay("Q que esta dizendo? que pode lutar?.", cid)
		
		
		elseif (isFocused(cid) and msg == "yes" and getPlayerStorageValue(cid, 8000) == 54) then
		selfSay("Voce nos salvou guerreiro misterioso!", cid)
		
		
		elseif (isFocused(cid) and msg == "yes" and getPlayerStorageValue(cid, 8000) > 54) then
		selfSay("Essa aldeia lhe deve gratidao.", cid)
		
	
		
		

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

	
  	





