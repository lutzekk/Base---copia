function onCastSpell(cid, var)
	local playerMana = getPlayerMana(cid)

	local player = Player(cid)
	if playerMana > 0 then
		player:addManaSpent(playerMana)
		doPlayerAddMana(cid, -playerMana)
		doSendMagicEffect(getPlayerPosition(cid),191)


		
	end
end