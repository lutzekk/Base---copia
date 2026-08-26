function onLogin(cid)

local rate = 1.2 -- 20% a mais de exp.
local config = {
welvip = "You have "..((rate - 1)*100).."% exp! Take advantage of the VIP benefits!",
not_vip = "hello player buy vip to have "..((rate - 1)*100).."% more exp!",
}

	if isPremium(cid) then
		doPlayerSetExperienceRate(cid, rate)
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.welvip)
	else

	end
	
	return TRUE
end