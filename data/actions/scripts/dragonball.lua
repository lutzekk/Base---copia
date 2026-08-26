function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getItemCount(2624) == 0 or player:getItemCount(2625) == 0 or player:getItemCount(2633) == 0 or player:getItemCount(2634) == 0 or player:getItemCount(2635) == 0 or player:getItemCount(2636) == 0 or player:getItemCount(2637) == 0 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "You need 7 dragon balls in bag to summon shennron.")
		
	elseif player:getItemCount(2624) >= 1 and player:getItemCount(2625) >= 1 and player:getItemCount(2633) >= 1 and player:getItemCount(2634) >= 1 and player:getItemCount(2635) >= 1 and player:getItemCount(2636) >= 1 and player:getItemCount(2637) >= 1 then
	player:removeItem(2624,1) 
	player:removeItem(2625,1) 
	player:removeItem(2633,1)
	player:removeItem(2634,1) 
	player:removeItem(2635,1) 
	player:removeItem(2636,1) 
	player:removeItem(2637,1) 
	Game.broadcastMessage("Shenron has been summoned.", MESSAGE_STATUS_WARNING)
	Game.createNpc("Shenron", player:getPosition())

	end
	return true
end