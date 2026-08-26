local quest = {
	[7200] = {teleport = {x = 174,y = 193,z = 7},
		reward = {{2673,100},{2673,100},{5678,25},{2160,100}}, area = nil, storage = 7200},
	[7201] = {reward = nil, teleport = {x = 186,y = 190,z = 8}, leftPos = {x = 188, y = 189}, rightPos = {x = 191, y = 201}, area = true, storage = nil},
	[7202] = {reward = nil, teleport = {x = 179,y = 190,z = 8}, leftPos = {x = 181, y = 189}, rightPos = {x = 186, y = 191}, area = true, storage = nil},
	[7203] = {reward = nil, teleport = {x = 174,y = 193,z = 8}, leftPos = {x = 174, y = 189}, rightPos = {x = 179, y = 191}, area = true, storage = nil}
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

function onUse(cid, item, fromPosition, itemEx, toPosition)
local gate = quest[item.uid]
	if(gate) then
		if(gate.reward ~= nil and gate.storage ~= nil) then
			if(getPlayerStorageValue(cid, gate.storage) ~= 1) then
				for _,add in pairs(gate.reward) do
					doPlayerAddItem(cid, add[1], add[2], true)
				end
				doPlayerSetStorageValue(cid, gate.storage, 1)
			else
				doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sorry, you have got your reward.")
			end
		end
		if(gate.teleport ~= nil) then
			if(gate.area ~= nil) then
				if(#getMonsters(gate.leftPos, gate.rightPos, 8) == 0) then
					doTeleportThing(cid, gate.teleport)
				else
					doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Nice try, but you have to kill all monsters in area.")
				end
			elseif(gate.area == nil and gate.teleport ~= nil) then
				doTeleportThing(cid, gate.teleport)
				doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have been teleported.")
			end
		end
		
	end
	return true
end