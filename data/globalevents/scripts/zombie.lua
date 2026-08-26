local defRoom = {
	[1] = {fromPos = {x = 823, y = 71, z = 7}, toPos = {x = 895, y = 139, z = 7}},

}

function onThink(interval, lastExecution, thinkInterval)
	for _,cid in ipairs(getPlayersOnline()) do
		for i = 1, #defRoom do
			if(isInRange(getPlayerPosition(cid), defRoom[i].fromPos , defRoom[i].toPos)) then
				  doPlayerSetExtraAttackSpeed(cid, -50)
			end
		end
	end
	return true
end

