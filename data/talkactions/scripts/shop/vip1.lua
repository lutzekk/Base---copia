-- TALK SISTEM ZRING SHOP ( WALOX DEV )
local addons = {
ITEM = {8380, 25}, -- ITEM QUE VOCÊ USA COMO MOEDA NO JOGO , REÇO DA VIP
}
function onSay(cid, words, param,channel)
if getPlayerItemCount(cid, addons.ITEM[1]) >= addons.ITEM[2] then
doPlayerAddItem(cid, 6387, 1)
doPlayerAddItem(cid, 8359, 1)
doPlayerAddItem(cid, 2160, 100)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "[DBKO SHOP]: congratulations you bought Vip1")
doSendMagicEffect(getCreaturePosition(cid), 470)
doPlayerRemoveItem(cid, addons.ITEM[1], addons.ITEM[2])
else
doSendMagicEffect(getCreaturePosition(cid), 469)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "[DBKO SHOP]: Sorry but you don't have enough Diamonds to buy This item")
end
return TRUE
end
-- TALK SISTEM ZRING SHOP ( WALOX DEV )