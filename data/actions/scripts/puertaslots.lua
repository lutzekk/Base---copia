function onUse(cid, item, fromPosition, itemEx, toPosition)
if getPlayerSlotItem(cid, 1).itemid == 0 and getPlayerSlotItem(cid, 2).itemid == 0 and getPlayerSlotItem(cid, 3).itemid == 0 and getPlayerSlotItem(cid, 4).itemid == 0 and getPlayerSlotItem(cid, 5).itemid == 0 and getPlayerSlotItem(cid, 6).itemid == 0 and getPlayerSlotItem(cid, 7).itemid == 0 and getPlayerSlotItem(cid, 8).itemid == 0 and getPlayerSlotItem(cid, 9).itemid == 0 and getPlayerSlotItem(cid, 10).itemid == 0 then
if item.itemid == 7833 then

else
doTransformItem(item.uid, item.itemid - 1)
end
local pos = {x = 114, y = 915, z = 7}

doTeleportThing(cid, pos)
else
doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You cannot have anything equipped to pass into this area.")
end
return true
end
