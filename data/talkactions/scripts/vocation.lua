function onSay(cid, words, param, channel)
	local t = string.explode(param, ",")
	if(t[1]) then
		pid = getPlayerByNameWildcard(t[1])
		if(not pid) then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Player " .. t[1] .. " not found.")
			return true
		end
	end
	if(t[2] == 'get') then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Vocation ".. getPlayerVocation(pid))
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Out ".. getCreatureOutfit(pid).lookType)	
	elseif(tonumber(t[2])) then
		doPlayerSetVocation(pid, t[2])
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "New vocation ".. t[1] .." is ".. getPlayerVocationName(pid))
	end
	return true
end