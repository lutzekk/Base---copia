function onSay(cid, words, param, channel)
	local t = string.explode(param, ",")
	if(t[1]) then
		pid = getPlayerByNameWildcard(t[1])
		if(not pid) then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Player " .. t[1] .. " not found.")
			return true
		end
	end
	if(tonumber(t[2]) and tonumber(t[3])) then

		doCreatureSetSkullType(pid, t[2])
		doPlayerSetSkullEnd(pid, os.time() + t[3], t[2])
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You succesful change skull ".. t[1])
		return true
	end
	return true
end