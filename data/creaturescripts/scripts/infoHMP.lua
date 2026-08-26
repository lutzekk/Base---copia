local config = {
life = MESSAGE_STATUS_CONSOLE_RED,
mana = MESSAGE_STATUS_CONSOLE_RED,
vipstatus = MESSAGE_STATUS_CONSOLE_RED
};

function onLogin(cid)

doPlayerSendTextMessage(cid, (config.life), "Life : " .. getCreatureHealth(cid) .. "/".. getCreatureMaxHealth(cid) ..".")
doPlayerSendTextMessage(cid, (config.mana), "Chakra : " .. getCreatureMaxMana(cid) .. "/" .. getCreatureMaxMana(cid) ..".")
if getPlayerPremiumDays(cid) > 0 then
doPlayerSendTextMessage(cid, (config.vipstatus), "Voce e Premium Account , voce tem: " .. getPlayerPremiumDays(cid) .. " Dias Restantes.")
else
doPlayerSendTextMessage(cid, (config.vipstatus), "Voce nao e Premium Account.")
end

return true
end