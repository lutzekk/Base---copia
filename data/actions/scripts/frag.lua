function onUse(cid, item, frompos, item2, topos)
local pos =  {x = getPlayerPosition(cid).x + 1, y = getPlayerPosition(cid).y + 1, z = getPlayerPosition(cid).z}	

db.query("UPDATE `killers` SET `unjustified` = 0 WHERE `id` IN (SELECT `kill_id` FROM `player_killers` WHERE `player_id` = " .. getPlayerGUID(cid) .. ")")
db.query("UPDATE `players` SET `skulltime` = 0")
doCreatureSetSkullType(cid, 0)
doCreatureSay(cid, "You have successfully removed your Frags/Skull.", 19)
doSendMagicEffect(pos, 460)
doRemoveItem(item.uid,1)
return TRUE
end
