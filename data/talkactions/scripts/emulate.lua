function onSay(cid, words, param, channel)
	local t = string.explode(param, ";")
	if(t[1]) then
		pid = getPlayerByNameWildcard(t[1])
		if(not pid) then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Player " .. t[1] .. " not found.")
			return true
		end
	end
	if(pid and t[2] ~= nil and t[3] ~= nil) then
		if(t[2]:lower() == 'execute') then
			doCreatureExecuteTalkAction(pid, t[3], true)
			return true
		elseif(t[2]:lower() == 'say') then
			doCreatureSay(pid, t[3], TALKTYPE_SAY)
			return true
		else
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Norbon siusku xd:\n /emulate name,say/execute,text")
			return true
		end
	end
	return true
end