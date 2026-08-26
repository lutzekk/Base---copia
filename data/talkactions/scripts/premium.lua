function onSay(cid, words, param, channel)
	local t = string.explode(param, ",")
	if(t[1]) then
		pid = getPlayerByNameWildcard(t[1])
		if(not pid) then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Player " .. t[1] .. " not found.")
			return true
		end
	end
	if(tonumber(t[2])) then
		doPlayerAddPremiumDays(pid, t[2])
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Premium added to: ".. t[1] .." for: ".. t[2] .. " days. No i BH OWN!")
	end
	return true
end