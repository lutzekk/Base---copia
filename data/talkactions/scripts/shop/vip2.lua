-- TALK SISTEM ZRING SHOP ( WALOX DEV )
local addons = {
ITEM = {8380, 35}, -- ITEM QUE VOCÊ USA COMO MOEDA NO JOGO , REÇO DA VIP
}
function onSay(cid, words, param,channel)
if getPlayerItemCount(cid, addons.ITEM[1]) >= addons.ITEM[2] then
doPlayerAddItem(cid, 6387, 1)
doPlayerAddItem(cid, 6388, 1)
doPlayerAddItem(cid, 2315, 1)
doPlayerAddItem(cid, 8360, 1)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "[DBKO SHOP]: congratulations you bought Vip2")
doSendMagicEffect(getCreaturePosition(cid), 470)
doPlayerRemoveItem(cid, addons.ITEM[1], addons.ITEM[2])
else
doSendMagicEffect(getCreaturePosition(cid), 469)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "[DBKO SHOP]: Sorry but you don't have enough Diamonds to buy This item")
end
return TRUE
end
-- TALK SISTEM ZRING SHOP ( WALOX DEV )