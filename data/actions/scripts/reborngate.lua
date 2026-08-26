local quest = {
	[7204] = {teleport = {x = 177,y = 193,z = 7}, leftPos = {x = 172, y = 188}, rightPos = {x = 175, y = 195}, area = true},
}

local function getMonsters(leftPos, rightPos, floor)
local monsters = {}
    for x = leftPos.x, rightPos.x do 
        for y = leftPos.y, rightPos.y do 
            local m = getThingFromPos({x=x, y=y, z=floor, stackpos = STACKPOS_TOP_CREATURE}).uid
            if isMonster(m) then
                table.insert(monsters, m)
            end
        end
    end
    return monsters
end  

local function isReborned(cid)
	return getPlayerStorageValue(cid,30023) == 4 and true or false
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
local gate = quest[item.uid]
	if(gate) then
		if(gate.teleport ~= nil and isReborned(cid)) then
			if(#getMonsters(gate.leftPos, gate.rightPos, 7) == 0) then
				doTeleportThing(cid, gate.teleport)
				doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have been teleported.")
			else
				doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Nice try, but you have to kill all monsters in area.")
			end
		else
			doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You must be reborn.")
		end
	end
	return true
end