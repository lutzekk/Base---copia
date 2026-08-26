local config = {

money = 60000000, -- Dinheiro que vai custar

item = 14683, -- ID do item que vai vender

count = 1, -- Quantidade

}


function onUse(cid, item, fromPosition, itemEx, toPosition)

pos = getCreaturePosition(cid)


if item.itemid == 1945 then

 if doPlayerRemoveMoney(cid, config.money) == TRUE then

doPlayerAddItem(cid, config.item, config.count)

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Voce acaba de comprar "..config.count.." "..getItemNameById(config.item)..".")

doSendMagicEffect(pos, CONST_ME_MAGIC_BLUE)

 else

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Desculpe, mais voce nao tem dinheiro suficiente (80 Bronze Bars).")

doSendMagicEffect(pos, CONST_ME_POFF)

end

end


end