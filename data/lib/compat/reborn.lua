function doReborn(cid, level, looktype, vocation)
	player = PlayerID(cid)
	playerid = player:getGuid()
	player:remove()
	db.query("UPDATE `players` SET `level` = " .. level .. " WHERE `id` = " .. playerID .. ";")
	db.query("UPDATE `players` SET `looktype` = " .. looktype .. " WHERE `id` = " .. playerID .. ";")
	db.query("UPDATE `players` SET `vocation` = " .. vocation .. " WHERE `id` = " .. playerID .. ";")
	return true
end