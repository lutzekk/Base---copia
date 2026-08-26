-- TALK SISTEM ZRING SHOP ( WALOX DEV )
local outfit = {
ITEM = {8380, 15},
storage = 180021
}
function onSay(cid, words, param,channel)
if getPlayerItemCount(cid, outfit.ITEM[1]) < outfit.ITEM[2] then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "[DBKO SHOP]: Sorry you don't have enough Diamonds to buy this OUTFIT")
doSendMagicEffect(getCreaturePosition(cid), 469)
return true
end
if getPlayerStorageValue(cid, outfit.storage) >= 1 then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE,"[DBKO SHOP]: Unable to complete the purchase as you already own this outfit.")
doSendMagicEffect(getCreaturePosition(cid), 2)
return true
end
if getPlayerItemCount(cid, outfit.ITEM[1]) >= outfit.ITEM[2] then
setPlayerStorageValue(cid, outfit.storage, 1)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "[DBKO SHOP]: Congratulations you bought the outfit: Saitama.")
doSendMagicEffect(getCreaturePosition(cid), 470)
doPlayerRemoveItem(cid, outfit.ITEM[1], outfit.ITEM[2])
return TRUE
end
end
-- TALK SISTEM ZRING SHOP ( WALOX DEV )