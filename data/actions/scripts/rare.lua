
function onUse(cid, item, fromPosition, itemEx, toPosition)



lol = getPlayerPosition(cid)

local random = math.random(1,10) 


if random == 1 then
doPlayerAddItem(cid,2493,1)
           doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have got a Great Saiyaman Helmet.")
doRemoveItem(item.uid, 1)

elseif random == 2 then
doPlayerAddItem(cid,2655,1)
           doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have got a Super C17 Armor.")
doRemoveItem(item.uid, 1)

elseif random == 3 then
doPlayerAddItem(cid,2469,1)
           doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have got a Goku SSJ5 Legs.")
doRemoveItem(item.uid, 1)

elseif random == 4 then
doPlayerAddItem(cid,2537,1)
           doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have got a GT Legs.")
doRemoveItem(item.uid, 1)

elseif random == 5 then
doPlayerAddItem(cid,2469,1)
           doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have got a Goku SSJ5 Legs.")
doRemoveItem(item.uid, 1)

elseif random == 6 then
doPlayerAddItem(cid,2521,1)
           doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have got a Lost Saiyan Legs.")
doRemoveItem(item.uid, 1)

elseif random == 7 then
doPlayerAddItem(cid,2525,1)
           doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have got a Elite Saiyan Boots.")
doRemoveItem(item.uid, 1)

elseif random == 8 then
doPlayerAddItem(cid,7457,1)
           doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have got a Goku Boots.")
doRemoveItem(item.uid, 1)

elseif random == 9 then
doPlayerAddItem(cid,2440,1)
           doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have got a Golden Gloves.")
doRemoveItem(item.uid, 1)

elseif random == 10 then
doPlayerAddItem(cid,7457,1)
           doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"You have got a Goku Boots.")
doRemoveItem(item.uid, 1)
end

return TRUE
end


