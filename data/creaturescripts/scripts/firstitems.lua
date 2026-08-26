local firstItems = {2376, 2166, 3982, 2520}

function onLogin(player)
	if player:getLastLoginSaved() == 0 then
		for i = 1, #firstItems do
			player:addItem(firstItems[i], 1)
		end
		player:addItem(player:getSex() == 0 and 2535 or 2536, 1)
		player:addItem(ITEM_BAG, 1):addItem(2674, 1)
	end
	return true
end
