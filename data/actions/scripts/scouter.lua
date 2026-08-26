function onUse(cid, item, frompos, item2, topos)
	if isPlayer(item2.uid) then
		doPlayerSendTextMessage(cid,22, 'Nick: '..getPlayerName(item2.uid)..'')
		doPlayerSendTextMessage(cid,22, 'Level: '..getPlayerLevel(item2.uid)..'')
		doPlayerSendTextMessage(cid,22, 'Ki Level: '..getPlayerMagLevel(item2.uid)..'')
		doPlayerSendTextMessage(cid,22, 'Hp Points: '..getCreatureHealth(item2.uid)..'/'..getCreatureMaxHealth(item2.uid)..'')
		doPlayerSendTextMessage(cid,22, 'Ki Points: '..getCreatureMana(item2.uid)..'/'..getCreatureMaxMana(item2.uid)..'')
	else
		doPlayerSendCancel(cid,"You can scout only players.") 
	end
	return true
end
