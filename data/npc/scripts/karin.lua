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
local pos = {x=444,y=243,z=1}
local pos1 = {x=70,y=1546,z=7}
function onCreatureSay(cid, type, msg)


if msgcontains(msg, 'hi') and not (isFocused(cid)) and (getCreatureSkullType(cid) == 3) or (getCreatureSkullType(cid) == 4) then
selfSay("Voce esta PK!", cid)

        elseif((msg == "hi") and not (isFocused(cid)) and getNpcDistanceToCreature(cid) <= 2 and getPlayerStorageValue(cid, 8000) == 56 or (msg == "hi") and not (isFocused(cid)) and getNpcDistanceToCreature(cid) <= 2 and getPlayerStorageValue(cid, 8000) == 57) then
		selfSay("Voce veio beber a agua sagrada para ficar mais forte?! ", cid)
		addFocus(cid)
		
		 elseif((msg == "hi") and not (isFocused(cid)) and getNpcDistanceToCreature(cid) <= 2 and getPlayerStorageValue(cid, 8000) == 103) then
		selfSay("Vai arriscar beber da agua dos deuses para ficar mais forte?! ", cid)
		addFocus(cid)
		
		 elseif((msg == "hi") and not (isFocused(cid)) and getNpcDistanceToCreature(cid) <= 2 and getPlayerStorageValue(cid, 8000) == 104) then
		selfSay("Voce sobreviveu?! ", cid)
		addFocus(cid)
		
		elseif((msg == "hi") and not (isFocused(cid)) and getNpcDistanceToCreature(cid) <= 2 and getPlayerStorageValue(cid, 8000) ~= 56 and getPlayerStorageValue(cid, 8000) ~= 57) then
		selfSay("I Can Give you senzu for 100 talons. Do you want?", cid)
		addFocus(cid)
		
		elseif msgcontains(msg, 'yes') and doPlayerRemoveItem(cid,2151,100) and getPlayerStorageValue(cid, 8000) ~= 56 and getPlayerStorageValue(cid, 8000) ~= 57 then
        doPlayerAddItem(cid,2673,1)
        selfSay("Thanks, take senzu now.", cid)
		
		elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 8000) == 56 then
        selfSay("So vai beber da agua se conseguir me pegar.", cid)
		doTeleportThing(cid, pos)
		
		elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 8000) == 57 then
        selfSay("Aqui esta, beba da agua, boa sorte na revanche contra Tao Pai Pai", cid)
		setPlayerStorageValue(cid, stor, 58)
		
		elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 8000) == 103 then
        selfSay("Boa sorte...", cid)
		doTeleportThing(cid, pos1)
		
		elseif msgcontains(msg, 'yes') and getPlayerStorageValue(cid, 8000) == 104 then
        selfSay("Seu poder aumentou.. Boa sorte na luta contra Piccolo Daimaoh!", cid)
		
		
		
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

	
  	





