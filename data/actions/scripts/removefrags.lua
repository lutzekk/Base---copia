function onUse(cid, item) 
    
    if not getTileInfo(getThingPos(cid)).protection then
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,"You can't remove your skull in this area.")
    	return true
   	end

            if getCreatureSkullType(cid) == SKULL_White or getCreatureSkullType(cid) == SKULL_black then
                db.executeQuery("UPDATE `killers` SET `unjustified` = 0 WHERE `id` IN (SELECT `kill_id` FROM `player_killers` WHERE `player_id` = " .. getPlayerGUID(cid) .. ")")
				db.executeQuery("UPDATE `players` SET `skulltime` = 0")
				doCreatureSetSkullType(cid, 0)
				doPlayerSendTextMessage(cid, 19, "Você removeu seus Frags/Skull com sucesso.")
				doSendMagicEffect(getThingPos(cid), 26)
				doRemoveItem(item.uid,1)
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Your skull has been removed!")
            else
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You do not have red/black skull!")
            end
    return true
end