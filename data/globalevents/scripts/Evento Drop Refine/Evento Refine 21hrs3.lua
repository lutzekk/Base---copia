dofile('data/lib/Evento Refine 9hrs.lua')
local configuration = {
    day = "Sunday",

    to_pos = {x=1929, y=455, z=13},
    pos = {x = 1023, y = 1016, z = 7},
	
	to_pos1 = {x = 1929, y = 455, z = 13},
    pos1 = {x = 1023, y = 1016, z = 7},

    teleport_id = 1387,
}
local CTF1 = {
	fromPos = {x=1828, y=364, z=13, stackpos=253},
	toPos = {x= 2024, y=572,z =13, stackpos=253},
	deTile = {x=1023,y=1021,z= 7,stackpos=1}
}
local CTF2 = {
	fromPos = {x=1829, y=365, z=12, stackpos=253},
	toPos = {x=2025, y=573, z=12, stackpos=253},
	deTile = {x=1023,y=1021,z=7,stackpos=1}
}
local CTF3 = {
	fromPos = {x=1715, y=524, z=13, stackpos=253},
	toPos = {x=1819, y=633, z=13, stackpos=253},
	deTile = {x=1023,y=1021,z=7,stackpos=1}
}
local CTF4 = {
	fromPos = {x=1715, y=522, z=12, stackpos=253},
	toPos = {x=1820, y=634, z=12, stackpos=253},
	deTile = {x=1023,y=1021,z=7,stackpos=1}
}
local CTF5 = {
	fromPos = {x=1710, y=524, z=11, stackpos=253},
	toPos = {x=1821, y=625, z=12, stackpos=253},
	deTile = {x=1023,y=1021,z=7,stackpos=1}
}
local CTF6 = {
	fromPos = {x=1713, y=520, z=10, stackpos=253},
	toPos = {x=1821, y=635, z=10, stackpos=253},
	deTile = {x=1023,y=1021,z=7,stackpos=1}
}
function onTime()
    if os.date("%A") == configuration.day then
        local item = getTileItemById(configuration.pos, configuration.teleport_id).uid
		local item1 = getTileItemById(configuration.pos1, configuration.teleport_id).uid
        if item > 0 then
            doRemoveItem(item, 1)
            broadcastMessage("A [Party Zone] foi fechado. Próxima abertura sera as 9h.", MESSAGE_STATUS_WARNING)
			 for _, pid in ipairs(getPlayersOnline()) do
			  if isInArea(getPlayerPosition(pid), CTF1.fromPos, CTF1.toPos) then
			   doTeleportThing(pid, CTF1.deTile, false)
			  end
			  if isInArea(getPlayerPosition(pid), CTF2.fromPos, CTF2.toPos) then
			   doTeleportThing(pid, CTF2.deTile, false)
			  end
			   if isInArea(getPlayerPosition(pid), CTF3.fromPos, CTF3.toPos) then
			   doTeleportThing(pid, CTF3.deTile, false)
			  end
			   if isInArea(getPlayerPosition(pid), CTF4.fromPos, CTF4.toPos) then
			   doTeleportThing(pid, CTF4.deTile, false)
			  end
			   if isInArea(getPlayerPosition(pid), CTF5.fromPos, CTF5.toPos) then
			   doTeleportThing(pid, CTF5.deTile, false)
			  end
			  if isInArea(getPlayerPosition(pid), CTF6.fromPos, CTF6.toPos) then
			   doTeleportThing(pid, CTF6.deTile, false)
			  end
			 end
        else
            doCreateTeleport(configuration.teleport_id, configuration.to_pos, configuration.pos)
            broadcastMessage("A [Party Zone] foi aberto e fechará as 22h", MESSAGE_STATUS_WARNING)
        end
    end
	if os.date("%A") == configuration.day2 then
        local item = getTileItemById(configuration.pos, configuration.teleport_id).uid
		local item1 = getTileItemById(configuration.pos1, configuration.teleport_id).uid
        if item > 0 then
		doRemoveItem(item, 1)
            broadcastMessage("A [Party Zone] foi fechado. Próxima abertura sera as 9h..", MESSAGE_STATUS_WARNING)
			for _, pid in ipairs(getPlayersOnline()) do
			  if isInArea(getPlayerPosition(pid), CTF1.fromPos, CTF1.toPos) then
			   doTeleportThing(pid, CTF1.deTile, false)
			  end
			  if isInArea(getPlayerPosition(pid), CTF2.fromPos, CTF2.toPos) then
			   doTeleportThing(pid, CTF2.deTile, false)
			  end
			   if isInArea(getPlayerPosition(pid), CTF3.fromPos, CTF3.toPos) then
			   doTeleportThing(pid, CTF3.deTile, false)
			  end
			   if isInArea(getPlayerPosition(pid), CTF4.fromPos, CTF4.toPos) then
			   doTeleportThing(pid, CTF4.deTile, false)
			  end
			   if isInArea(getPlayerPosition(pid), CTF5.fromPos, CTF5.toPos) then
			   doTeleportThing(pid, CTF5.deTile, false)
			  end
			  if isInArea(getPlayerPosition(pid), CTF6.fromPos, CTF6.toPos) then
			   doTeleportThing(pid, CTF6.deTile, false)
			  end
			 end
        else
            doCreateTeleport(configuration.teleport_id, configuration.to_pos, configuration.pos)
			broadcastMessage("[Party Zone] Foi Aberta e Fechara as 22hrs", MESSAGE_STATUS_WARNING)
        end
    end
    return true
end