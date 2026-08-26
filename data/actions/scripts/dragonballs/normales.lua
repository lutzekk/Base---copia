function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getItemCount(2626) == 0 or player:getItemCount(2627) == 0 or player:getItemCount(2628) == 0 or player:getItemCount(2629) == 0 or player:getItemCount(2630) == 0 or player:getItemCount(2631) == 0 or player:getItemCount(2632) == 0 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You need 7 dragon balls in bag to summon shennron.")
		
	elseif player:getItemCount(2626) >= 1 and player:getItemCount(2627) >= 1 and player:getItemCount(2628) >= 1 and player:getItemCount(2629) >= 1 and player:getItemCount(2630) >= 1 and player:getItemCount(2631) >= 1 and player:getItemCount(2632) >= 1 then
	player:removeItem(2627,1) 
	player:removeItem(2628,1) 
	player:removeItem(2629,1)
	player:removeItem(2630,1) 
	player:removeItem(2631,1) 
	player:removeItem(2632,1) 
	player:removeItem(2626,1) 
	Game.broadcastMessage("Shenron has been summoned.", MESSAGE_STATUS_WARNING)
	Game.createNpc("Shenron", player:getPosition())

	end
	return true
end