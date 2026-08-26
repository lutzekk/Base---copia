function onLogout(player)
	
	
		local storedSpeed = player:getStorageValue(12345)
		if storedSpeed > 0 then
			player:changeSpeed(storedSpeed)
		end

	
	
	local playerId = player:getId()
	if nextUseStaminaTime[playerId] then
		nextUseStaminaTime[playerId] = nil
	end
	return true
end
