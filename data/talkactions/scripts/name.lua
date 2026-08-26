local function kickP(cid)
		if(isPlayer(cid)) then
			doRemoveCreature(cid)
		end
end
local function name(guid, p)
	db.executeQuery("UPDATE `players` SET `name` = " ..db.escapeString(p) .. " WHERE `id` = " .. guid .. ";")
end

function onSay(cid, words, param, channel)
	local t = string.explode(param, ";")
	if(t[1]) then
		pid = getPlayerByNameWildcard(t[1])
		if(not pid) then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Player " .. t[1] .. " not found.")
			return true
		end
	end
	if(pid and t[2] ~= nil) then
	local guid = getPlayerGUID(pid)
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Name ".. t[1] .. " has been changed.")
			doPlayerSendTextMessage(pid, MESSAGE_STATUS_CONSOLE_BLUE, "You will be kicked in 2 second.")
			addEvent(kickP, 2000, pid)
			addEvent(name, 2020, guid, t[2])
			return true
	end
	return true
end