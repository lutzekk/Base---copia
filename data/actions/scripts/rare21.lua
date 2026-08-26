
function onUse(cid, item, fromPosition, itemEx, toPosition)


lol = getPlayerPosition(cid)

local random = math.random(1,10) 


if random == 1 then
doPlayerAddItem(cid,7387,1)
           doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"Shin Boots.")


elseif random == 2 then
doPlayerAddItem(cid,7383,1)
           doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"Goku SSJ5 Boots.")


elseif random == 3 then
doPlayerAddItem(cid,2640,1)
           doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"Fusion Boots.")


elseif random == 4 then
doPlayerAddItem(cid,2655,1)
           doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"Super C17 Armor.")


elseif random == 5 then
doPlayerAddItem(cid,2652,1)
           doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"Elite Shin Armor.")


elseif random == 6 then
doPlayerAddItem(cid,2510,1)
           doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"Fusion Armor.")


elseif random == 7 then
doPlayerAddItem(cid,2521,1)
           doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"Lost Saiyan Legs.")


elseif random == 8 then
doPlayerAddItem(cid,7382,1)
           doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"Fusion Legs.")


elseif random == 9 then
doPlayerAddItem(cid,2445,1)
           doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"Janemba Frozen Sword.")


elseif random == 10 then
doPlayerAddItem(cid,2450,1)
           doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR,"Aura Sword.")

end

return
end


