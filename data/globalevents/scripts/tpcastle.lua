local configuration = {
    day = "Saturday",
	day2 = "Wednesday",
    to_pos = {x = 1246, y = 652, z = 12},
    pos = {x = 1023, y = 1023, z = 7},
	
	to_pos1 = {x = 1246, y = 652, z = 12},
    pos1 = {x = 1023, y = 1023, z = 7},

    teleport_id = 1387,
}
local CTF1 = {
	fromPos = {x=1102, y=628, z=10, stackpos=253},
	toPos = {x=1310, y=733, z=10, stackpos=253},
	deTile = {x=1023,y=1021,z=7,stackpos=1}
}
local CTF2 = {
	fromPos = {x=1102, y=628, z=11, stackpos=253},
	toPos = {x=1310, y=733, z=11, stackpos=253},
	deTile = {x=1023,y=1021,z=7,stackpos=1}
}
local CTF3 = {
	fromPos = {x=1102, y=628, z=12, stackpos=253},
	toPos = {x=1310, y=733, z=12, stackpos=253},
	deTile = {x=1023,y=1021,z=7,stackpos=1}
}
local CTF4 = {
	fromPos = {x=1102, y=628, z=13, stackpos=253},
	toPos = {x=1310, y=733, z=13, stackpos=253},
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
            doRemoveItem(item1, 1)
            broadcastMessage("O Castle War foi fechado. Próxima abertura será no próximo sábado às 19:30hrs.", MESSAGE_STATUS_WARNING)
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
            broadcastMessage("O Castle War foi aberto e fechará as 20:30h. Quem passará a ser a nova guild dominante?", MESSAGE_STATUS_WARNING)
        end
    end
	if os.date("%A") == configuration.day2 then
        local item = getTileItemById(configuration.pos, configuration.teleport_id).uid
		local item1 = getTileItemById(configuration.pos1, configuration.teleport_id).uid
        if item > 0 then
		doRemoveItem(item, 1)
		doRemoveItem(item1, 1)
            broadcastMessage("O Castle War foi fechado. Próxima abertura será no próximo sábado às 19:30h.", MESSAGE_STATUS_WARNING)
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
            broadcastMessage("O Castle War foi aberto e fechará as 20:30h. Quem passará a ser a nova guild dominante?", MESSAGE_STATUS_WARNING)
        end
    end
    return true
end